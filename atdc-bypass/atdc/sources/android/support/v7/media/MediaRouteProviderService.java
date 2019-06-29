package android.support.v7.media;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IBinder.DeathRecipient;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.v7.media.MediaRouteProvider.Callback;
import android.support.v7.media.MediaRouteProvider.RouteController;
import android.support.v7.media.MediaRouteProviderDescriptor.Builder;
import android.support.v7.media.MediaRouter.ControlRequestCallback;
import android.util.Log;
import android.util.SparseArray;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public abstract class MediaRouteProviderService extends Service {
    static final boolean DEBUG = Log.isLoggable(TAG, 3);
    static final int PRIVATE_MSG_CLIENT_DIED = 1;
    public static final String SERVICE_INTERFACE = "android.media.MediaRouteProviderService";
    static final String TAG = "MediaRouteProviderSrv";
    private final ArrayList<ClientRecord> mClients = new ArrayList();
    private MediaRouteDiscoveryRequest mCompositeDiscoveryRequest;
    final PrivateHandler mPrivateHandler = new PrivateHandler();
    MediaRouteProvider mProvider;
    private final ProviderCallback mProviderCallback = new ProviderCallback();
    private final ReceiveHandler mReceiveHandler = new ReceiveHandler(this);
    private final Messenger mReceiveMessenger = new Messenger(this.mReceiveHandler);

    private final class ClientRecord implements DeathRecipient {
        private final SparseArray<RouteController> mControllers = new SparseArray();
        public MediaRouteDiscoveryRequest mDiscoveryRequest;
        public final Messenger mMessenger;
        public final int mVersion;

        public ClientRecord(Messenger messenger, int i) {
            this.mMessenger = messenger;
            this.mVersion = i;
        }

        public boolean register() {
            try {
                this.mMessenger.getBinder().linkToDeath(this, 0);
                return true;
            } catch (RemoteException unused) {
                binderDied();
                return false;
            }
        }

        public void dispose() {
            int size = this.mControllers.size();
            for (int i = 0; i < size; i++) {
                ((RouteController) this.mControllers.valueAt(i)).onRelease();
            }
            this.mControllers.clear();
            this.mMessenger.getBinder().unlinkToDeath(this, 0);
            setDiscoveryRequest(null);
        }

        public boolean hasMessenger(Messenger messenger) {
            return this.mMessenger.getBinder() == messenger.getBinder();
        }

        public boolean createRouteController(String str, String str2, int i) {
            if (this.mControllers.indexOfKey(i) < 0) {
                Object onCreateRouteController;
                if (str2 == null) {
                    onCreateRouteController = MediaRouteProviderService.this.mProvider.onCreateRouteController(str);
                } else {
                    onCreateRouteController = MediaRouteProviderService.this.mProvider.onCreateRouteController(str, str2);
                }
                if (onCreateRouteController != null) {
                    this.mControllers.put(i, onCreateRouteController);
                    return true;
                }
            }
            return false;
        }

        public boolean releaseRouteController(int i) {
            RouteController routeController = (RouteController) this.mControllers.get(i);
            if (routeController == null) {
                return false;
            }
            this.mControllers.remove(i);
            routeController.onRelease();
            return true;
        }

        public RouteController getRouteController(int i) {
            return (RouteController) this.mControllers.get(i);
        }

        public boolean setDiscoveryRequest(MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
            if (this.mDiscoveryRequest == mediaRouteDiscoveryRequest || (this.mDiscoveryRequest != null && this.mDiscoveryRequest.equals(mediaRouteDiscoveryRequest))) {
                return false;
            }
            this.mDiscoveryRequest = mediaRouteDiscoveryRequest;
            return MediaRouteProviderService.this.updateCompositeDiscoveryRequest();
        }

        public void binderDied() {
            MediaRouteProviderService.this.mPrivateHandler.obtainMessage(1, this.mMessenger).sendToTarget();
        }

        public String toString() {
            return MediaRouteProviderService.getClientId(this.mMessenger);
        }
    }

    private final class PrivateHandler extends Handler {
        PrivateHandler() {
        }

        public void handleMessage(Message message) {
            if (message.what == 1) {
                MediaRouteProviderService.this.onBinderDied((Messenger) message.obj);
            }
        }
    }

    private static final class ReceiveHandler extends Handler {
        private final WeakReference<MediaRouteProviderService> mServiceRef;

        public ReceiveHandler(MediaRouteProviderService mediaRouteProviderService) {
            this.mServiceRef = new WeakReference(mediaRouteProviderService);
        }

        public void handleMessage(Message message) {
            Messenger messenger = message.replyTo;
            if (MediaRouteProviderProtocol.isValidRemoteMessenger(messenger)) {
                int i = message.what;
                int i2 = message.arg1;
                int i3 = message.arg2;
                Object obj = message.obj;
                Bundle peekData = message.peekData();
                if (!processMessage(i, messenger, i2, i3, obj, peekData)) {
                    if (MediaRouteProviderService.DEBUG) {
                        String str = MediaRouteProviderService.TAG;
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append(MediaRouteProviderService.getClientId(messenger));
                        stringBuilder.append(": Message failed, what=");
                        stringBuilder.append(i);
                        stringBuilder.append(", requestId=");
                        stringBuilder.append(i2);
                        stringBuilder.append(", arg=");
                        stringBuilder.append(i3);
                        stringBuilder.append(", obj=");
                        stringBuilder.append(obj);
                        stringBuilder.append(", data=");
                        stringBuilder.append(peekData);
                        Log.d(str, stringBuilder.toString());
                    }
                    MediaRouteProviderService.sendGenericFailure(messenger, i2);
                }
            } else if (MediaRouteProviderService.DEBUG) {
                Log.d(MediaRouteProviderService.TAG, "Ignoring message without valid reply messenger.");
            }
        }

        private boolean processMessage(int i, Messenger messenger, int i2, int i3, Object obj, Bundle bundle) {
            MediaRouteProviderService mediaRouteProviderService = (MediaRouteProviderService) this.mServiceRef.get();
            int i4 = 0;
            if (mediaRouteProviderService != null) {
                switch (i) {
                    case 1:
                        return mediaRouteProviderService.onRegisterClient(messenger, i2, i3);
                    case 2:
                        return mediaRouteProviderService.onUnregisterClient(messenger, i2);
                    case 3:
                        String string = bundle.getString(MediaRouteProviderProtocol.CLIENT_DATA_ROUTE_ID);
                        String string2 = bundle.getString(MediaRouteProviderProtocol.CLIENT_DATA_ROUTE_LIBRARY_GROUP);
                        if (string != null) {
                            return mediaRouteProviderService.onCreateRouteController(messenger, i2, i3, string, string2);
                        }
                        break;
                    case 4:
                        return mediaRouteProviderService.onReleaseRouteController(messenger, i2, i3);
                    case 5:
                        return mediaRouteProviderService.onSelectRoute(messenger, i2, i3);
                    case 6:
                        if (bundle != null) {
                            i4 = bundle.getInt(MediaRouteProviderProtocol.CLIENT_DATA_UNSELECT_REASON, 0);
                        }
                        return mediaRouteProviderService.onUnselectRoute(messenger, i2, i3, i4);
                    case 7:
                        i = bundle.getInt(MediaRouteProviderProtocol.CLIENT_DATA_VOLUME, -1);
                        if (i >= 0) {
                            return mediaRouteProviderService.onSetRouteVolume(messenger, i2, i3, i);
                        }
                        break;
                    case 8:
                        i = bundle.getInt(MediaRouteProviderProtocol.CLIENT_DATA_VOLUME, 0);
                        if (i != 0) {
                            return mediaRouteProviderService.onUpdateRouteVolume(messenger, i2, i3, i);
                        }
                        break;
                    case 9:
                        if (obj instanceof Intent) {
                            return mediaRouteProviderService.onRouteControlRequest(messenger, i2, i3, (Intent) obj);
                        }
                        break;
                    case 10:
                        if (obj == null || (obj instanceof Bundle)) {
                            MediaRouteDiscoveryRequest fromBundle = MediaRouteDiscoveryRequest.fromBundle((Bundle) obj);
                            if (fromBundle == null || !fromBundle.isValid()) {
                                fromBundle = null;
                            }
                            return mediaRouteProviderService.onSetDiscoveryRequest(messenger, i2, fromBundle);
                        }
                }
            }
            return false;
        }
    }

    private final class ProviderCallback extends Callback {
        ProviderCallback() {
        }

        public void onDescriptorChanged(MediaRouteProvider mediaRouteProvider, MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
            MediaRouteProviderService.this.sendDescriptorChanged(mediaRouteProviderDescriptor);
        }
    }

    public abstract MediaRouteProvider onCreateMediaRouteProvider();

    public MediaRouteProvider getMediaRouteProvider() {
        return this.mProvider;
    }

    public IBinder onBind(Intent intent) {
        if (intent.getAction().equals("android.media.MediaRouteProviderService")) {
            if (this.mProvider == null) {
                MediaRouteProvider onCreateMediaRouteProvider = onCreateMediaRouteProvider();
                if (onCreateMediaRouteProvider != null) {
                    String packageName = onCreateMediaRouteProvider.getMetadata().getPackageName();
                    if (packageName.equals(getPackageName())) {
                        this.mProvider = onCreateMediaRouteProvider;
                        this.mProvider.setCallback(this.mProviderCallback);
                    } else {
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append("onCreateMediaRouteProvider() returned a provider whose package name does not match the package name of the service.  A media route provider service can only export its own media route providers.  Provider package name: ");
                        stringBuilder.append(packageName);
                        stringBuilder.append(".  Service package name: ");
                        stringBuilder.append(getPackageName());
                        stringBuilder.append(".");
                        throw new IllegalStateException(stringBuilder.toString());
                    }
                }
            }
            if (this.mProvider != null) {
                return this.mReceiveMessenger.getBinder();
            }
        }
        return null;
    }

    public boolean onUnbind(Intent intent) {
        if (this.mProvider != null) {
            this.mProvider.setCallback(null);
        }
        return super.onUnbind(intent);
    }

    /* Access modifiers changed, original: 0000 */
    public boolean onRegisterClient(Messenger messenger, int i, int i2) {
        if (i2 >= 1 && findClient(messenger) < 0) {
            ClientRecord clientRecord = new ClientRecord(messenger, i2);
            if (clientRecord.register()) {
                this.mClients.add(clientRecord);
                if (DEBUG) {
                    String str = TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(clientRecord);
                    stringBuilder.append(": Registered, version=");
                    stringBuilder.append(i2);
                    Log.d(str, stringBuilder.toString());
                }
                if (i != 0) {
                    sendReply(messenger, 2, i, 1, createDescriptorBundleForClient(this.mProvider.getDescriptor(), clientRecord), null);
                }
                return true;
            }
        }
        return false;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean onUnregisterClient(Messenger messenger, int i) {
        int findClient = findClient(messenger);
        if (findClient < 0) {
            return false;
        }
        ClientRecord clientRecord = (ClientRecord) this.mClients.remove(findClient);
        if (DEBUG) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(clientRecord);
            stringBuilder.append(": Unregistered");
            Log.d(str, stringBuilder.toString());
        }
        clientRecord.dispose();
        sendGenericSuccess(messenger, i);
        return true;
    }

    /* Access modifiers changed, original: 0000 */
    public void onBinderDied(Messenger messenger) {
        int findClient = findClient(messenger);
        if (findClient >= 0) {
            ClientRecord clientRecord = (ClientRecord) this.mClients.remove(findClient);
            if (DEBUG) {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(clientRecord);
                stringBuilder.append(": Binder died");
                Log.d(str, stringBuilder.toString());
            }
            clientRecord.dispose();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public boolean onCreateRouteController(Messenger messenger, int i, int i2, String str, String str2) {
        ClientRecord client = getClient(messenger);
        if (client == null || !client.createRouteController(str, str2, i2)) {
            return false;
        }
        if (DEBUG) {
            String str3 = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(client);
            stringBuilder.append(": Route controller created, controllerId=");
            stringBuilder.append(i2);
            stringBuilder.append(", routeId=");
            stringBuilder.append(str);
            stringBuilder.append(", routeGroupId=");
            stringBuilder.append(str2);
            Log.d(str3, stringBuilder.toString());
        }
        sendGenericSuccess(messenger, i);
        return true;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean onReleaseRouteController(Messenger messenger, int i, int i2) {
        ClientRecord client = getClient(messenger);
        if (client == null || !client.releaseRouteController(i2)) {
            return false;
        }
        if (DEBUG) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(client);
            stringBuilder.append(": Route controller released");
            stringBuilder.append(", controllerId=");
            stringBuilder.append(i2);
            Log.d(str, stringBuilder.toString());
        }
        sendGenericSuccess(messenger, i);
        return true;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean onSelectRoute(Messenger messenger, int i, int i2) {
        ClientRecord client = getClient(messenger);
        if (client != null) {
            RouteController routeController = client.getRouteController(i2);
            if (routeController != null) {
                routeController.onSelect();
                if (DEBUG) {
                    String str = TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(client);
                    stringBuilder.append(": Route selected");
                    stringBuilder.append(", controllerId=");
                    stringBuilder.append(i2);
                    Log.d(str, stringBuilder.toString());
                }
                sendGenericSuccess(messenger, i);
                return true;
            }
        }
        return false;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean onUnselectRoute(Messenger messenger, int i, int i2, int i3) {
        ClientRecord client = getClient(messenger);
        if (client != null) {
            RouteController routeController = client.getRouteController(i2);
            if (routeController != null) {
                routeController.onUnselect(i3);
                if (DEBUG) {
                    String str = TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(client);
                    stringBuilder.append(": Route unselected");
                    stringBuilder.append(", controllerId=");
                    stringBuilder.append(i2);
                    Log.d(str, stringBuilder.toString());
                }
                sendGenericSuccess(messenger, i);
                return true;
            }
        }
        return false;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean onSetRouteVolume(Messenger messenger, int i, int i2, int i3) {
        ClientRecord client = getClient(messenger);
        if (client != null) {
            RouteController routeController = client.getRouteController(i2);
            if (routeController != null) {
                routeController.onSetVolume(i3);
                if (DEBUG) {
                    String str = TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(client);
                    stringBuilder.append(": Route volume changed");
                    stringBuilder.append(", controllerId=");
                    stringBuilder.append(i2);
                    stringBuilder.append(", volume=");
                    stringBuilder.append(i3);
                    Log.d(str, stringBuilder.toString());
                }
                sendGenericSuccess(messenger, i);
                return true;
            }
        }
        return false;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean onUpdateRouteVolume(Messenger messenger, int i, int i2, int i3) {
        ClientRecord client = getClient(messenger);
        if (client != null) {
            RouteController routeController = client.getRouteController(i2);
            if (routeController != null) {
                routeController.onUpdateVolume(i3);
                if (DEBUG) {
                    String str = TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(client);
                    stringBuilder.append(": Route volume updated");
                    stringBuilder.append(", controllerId=");
                    stringBuilder.append(i2);
                    stringBuilder.append(", delta=");
                    stringBuilder.append(i3);
                    Log.d(str, stringBuilder.toString());
                }
                sendGenericSuccess(messenger, i);
                return true;
            }
        }
        return false;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean onRouteControlRequest(Messenger messenger, int i, int i2, Intent intent) {
        ClientRecord client = getClient(messenger);
        if (client != null) {
            RouteController routeController = client.getRouteController(i2);
            if (routeController != null) {
                ControlRequestCallback controlRequestCallback;
                if (i != 0) {
                    final ClientRecord clientRecord = client;
                    final int i3 = i2;
                    final Intent intent2 = intent;
                    final Messenger messenger2 = messenger;
                    final int i4 = i;
                    ControlRequestCallback anonymousClass1 = new ControlRequestCallback() {
                        public void onResult(Bundle bundle) {
                            if (MediaRouteProviderService.DEBUG) {
                                String str = MediaRouteProviderService.TAG;
                                StringBuilder stringBuilder = new StringBuilder();
                                stringBuilder.append(clientRecord);
                                stringBuilder.append(": Route control request succeeded");
                                stringBuilder.append(", controllerId=");
                                stringBuilder.append(i3);
                                stringBuilder.append(", intent=");
                                stringBuilder.append(intent2);
                                stringBuilder.append(", data=");
                                stringBuilder.append(bundle);
                                Log.d(str, stringBuilder.toString());
                            }
                            if (MediaRouteProviderService.this.findClient(messenger2) >= 0) {
                                MediaRouteProviderService.sendReply(messenger2, 3, i4, 0, bundle, null);
                            }
                        }

                        public void onError(String str, Bundle bundle) {
                            if (MediaRouteProviderService.DEBUG) {
                                String str2 = MediaRouteProviderService.TAG;
                                StringBuilder stringBuilder = new StringBuilder();
                                stringBuilder.append(clientRecord);
                                stringBuilder.append(": Route control request failed");
                                stringBuilder.append(", controllerId=");
                                stringBuilder.append(i3);
                                stringBuilder.append(", intent=");
                                stringBuilder.append(intent2);
                                stringBuilder.append(", error=");
                                stringBuilder.append(str);
                                stringBuilder.append(", data=");
                                stringBuilder.append(bundle);
                                Log.d(str2, stringBuilder.toString());
                            }
                            if (MediaRouteProviderService.this.findClient(messenger2) < 0) {
                                return;
                            }
                            if (str != null) {
                                Bundle bundle2 = new Bundle();
                                bundle2.putString(MediaRouteProviderProtocol.SERVICE_DATA_ERROR, str);
                                MediaRouteProviderService.sendReply(messenger2, 4, i4, 0, bundle, bundle2);
                                return;
                            }
                            MediaRouteProviderService.sendReply(messenger2, 4, i4, 0, bundle, null);
                        }
                    };
                } else {
                    controlRequestCallback = null;
                }
                if (routeController.onControlRequest(intent, controlRequestCallback)) {
                    if (DEBUG) {
                        String str = TAG;
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append(client);
                        stringBuilder.append(": Route control request delivered");
                        stringBuilder.append(", controllerId=");
                        stringBuilder.append(i2);
                        stringBuilder.append(", intent=");
                        stringBuilder.append(intent);
                        Log.d(str, stringBuilder.toString());
                    }
                    return true;
                }
            }
        }
        return false;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean onSetDiscoveryRequest(Messenger messenger, int i, MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
        ClientRecord client = getClient(messenger);
        if (client == null) {
            return false;
        }
        boolean discoveryRequest = client.setDiscoveryRequest(mediaRouteDiscoveryRequest);
        if (DEBUG) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(client);
            stringBuilder.append(": Set discovery request, request=");
            stringBuilder.append(mediaRouteDiscoveryRequest);
            stringBuilder.append(", actuallyChanged=");
            stringBuilder.append(discoveryRequest);
            stringBuilder.append(", compositeDiscoveryRequest=");
            stringBuilder.append(this.mCompositeDiscoveryRequest);
            Log.d(str, stringBuilder.toString());
        }
        sendGenericSuccess(messenger, i);
        return true;
    }

    /* Access modifiers changed, original: 0000 */
    public void sendDescriptorChanged(MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
        int size = this.mClients.size();
        for (int i = 0; i < size; i++) {
            ClientRecord clientRecord = (ClientRecord) this.mClients.get(i);
            sendReply(clientRecord.mMessenger, 5, 0, 0, createDescriptorBundleForClient(mediaRouteProviderDescriptor, clientRecord), null);
            if (DEBUG) {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(clientRecord);
                stringBuilder.append(": Sent descriptor change event, descriptor=");
                stringBuilder.append(mediaRouteProviderDescriptor);
                Log.d(str, stringBuilder.toString());
            }
        }
    }

    private Bundle createDescriptorBundleForClient(MediaRouteProviderDescriptor mediaRouteProviderDescriptor, ClientRecord clientRecord) {
        if (mediaRouteProviderDescriptor == null) {
            return null;
        }
        List routes = mediaRouteProviderDescriptor.getRoutes();
        int size = routes.size() - 1;
        while (size >= 0) {
            if (clientRecord.mVersion < ((MediaRouteDescriptor) routes.get(size)).getMinClientVersion() || clientRecord.mVersion > ((MediaRouteDescriptor) routes.get(size)).getMaxClientVersion()) {
                routes.remove(size);
            }
            size--;
        }
        Bundle asBundle = mediaRouteProviderDescriptor.asBundle();
        asBundle.remove("routes");
        return new Builder(MediaRouteProviderDescriptor.fromBundle(asBundle)).addRoutes(routes).build().asBundle();
    }

    /* Access modifiers changed, original: 0000 */
    public boolean updateCompositeDiscoveryRequest() {
        int size = this.mClients.size();
        MediaRouteSelector.Builder builder = null;
        MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest = builder;
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest2 = ((ClientRecord) this.mClients.get(i2)).mDiscoveryRequest;
            if (mediaRouteDiscoveryRequest2 != null && (!mediaRouteDiscoveryRequest2.getSelector().isEmpty() || mediaRouteDiscoveryRequest2.isActiveScan())) {
                i |= mediaRouteDiscoveryRequest2.isActiveScan();
                if (mediaRouteDiscoveryRequest == null) {
                    mediaRouteDiscoveryRequest = mediaRouteDiscoveryRequest2;
                } else {
                    if (builder == null) {
                        builder = new MediaRouteSelector.Builder(mediaRouteDiscoveryRequest.getSelector());
                    }
                    builder.addSelector(mediaRouteDiscoveryRequest2.getSelector());
                }
            }
        }
        if (builder != null) {
            mediaRouteDiscoveryRequest = new MediaRouteDiscoveryRequest(builder.build(), i);
        }
        if (this.mCompositeDiscoveryRequest == mediaRouteDiscoveryRequest || (this.mCompositeDiscoveryRequest != null && this.mCompositeDiscoveryRequest.equals(mediaRouteDiscoveryRequest))) {
            return false;
        }
        this.mCompositeDiscoveryRequest = mediaRouteDiscoveryRequest;
        this.mProvider.setDiscoveryRequest(mediaRouteDiscoveryRequest);
        return true;
    }

    private ClientRecord getClient(Messenger messenger) {
        int findClient = findClient(messenger);
        return findClient >= 0 ? (ClientRecord) this.mClients.get(findClient) : null;
    }

    /* Access modifiers changed, original: 0000 */
    public int findClient(Messenger messenger) {
        int size = this.mClients.size();
        for (int i = 0; i < size; i++) {
            if (((ClientRecord) this.mClients.get(i)).hasMessenger(messenger)) {
                return i;
            }
        }
        return -1;
    }

    static void sendGenericFailure(Messenger messenger, int i) {
        if (i != 0) {
            sendReply(messenger, 0, i, 0, null, null);
        }
    }

    private static void sendGenericSuccess(Messenger messenger, int i) {
        if (i != 0) {
            sendReply(messenger, 1, i, 0, null, null);
        }
    }

    static void sendReply(Messenger messenger, int i, int i2, int i3, Object obj, Bundle bundle) {
        Message obtain = Message.obtain();
        obtain.what = i;
        obtain.arg1 = i2;
        obtain.arg2 = i3;
        obtain.obj = obj;
        obtain.setData(bundle);
        try {
            messenger.send(obtain);
        } catch (DeadObjectException unused) {
        } catch (RemoteException e) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Could not send message to ");
            stringBuilder.append(getClientId(messenger));
            Log.e(str, stringBuilder.toString(), e);
        }
    }

    static String getClientId(Messenger messenger) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Client connection ");
        stringBuilder.append(messenger.getBinder().toString());
        return stringBuilder.toString();
    }
}
