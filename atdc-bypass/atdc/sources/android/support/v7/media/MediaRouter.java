package android.support.v7.media;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.v4.app.ActivityManagerCompat;
import android.support.v4.hardware.display.DisplayManagerCompat;
import android.support.v4.media.VolumeProviderCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.MediaSessionCompat.OnActiveChangeListener;
import android.support.v4.media.session.MediaSessionCompat.Token;
import android.support.v4.util.Pair;
import android.support.v7.media.MediaRouteProvider.ProviderMetadata;
import android.support.v7.media.MediaRouteProvider.RouteController;
import android.support.v7.media.MediaRouteSelector.Builder;
import android.support.v7.media.RemoteControlClientCompat.PlaybackInfo;
import android.support.v7.media.RemoteControlClientCompat.VolumeCallback;
import android.support.v7.media.SystemMediaRouteProvider.SyncCallback;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;

public final class MediaRouter {
    public static final int AVAILABILITY_FLAG_IGNORE_DEFAULT_ROUTE = 1;
    public static final int AVAILABILITY_FLAG_REQUIRE_MATCH = 2;
    public static final int CALLBACK_FLAG_FORCE_DISCOVERY = 8;
    public static final int CALLBACK_FLAG_PERFORM_ACTIVE_SCAN = 1;
    public static final int CALLBACK_FLAG_REQUEST_DISCOVERY = 4;
    public static final int CALLBACK_FLAG_UNFILTERED_EVENTS = 2;
    static final boolean DEBUG = Log.isLoggable(TAG, 3);
    static final String TAG = "MediaRouter";
    public static final int UNSELECT_REASON_DISCONNECTED = 1;
    public static final int UNSELECT_REASON_ROUTE_CHANGED = 3;
    public static final int UNSELECT_REASON_STOPPED = 2;
    public static final int UNSELECT_REASON_UNKNOWN = 0;
    static GlobalMediaRouter sGlobal;
    final ArrayList<CallbackRecord> mCallbackRecords = new ArrayList();
    final Context mContext;

    public static abstract class Callback {
        public void onProviderAdded(MediaRouter mediaRouter, ProviderInfo providerInfo) {
        }

        public void onProviderChanged(MediaRouter mediaRouter, ProviderInfo providerInfo) {
        }

        public void onProviderRemoved(MediaRouter mediaRouter, ProviderInfo providerInfo) {
        }

        public void onRouteAdded(MediaRouter mediaRouter, RouteInfo routeInfo) {
        }

        public void onRouteChanged(MediaRouter mediaRouter, RouteInfo routeInfo) {
        }

        public void onRoutePresentationDisplayChanged(MediaRouter mediaRouter, RouteInfo routeInfo) {
        }

        public void onRouteRemoved(MediaRouter mediaRouter, RouteInfo routeInfo) {
        }

        public void onRouteSelected(MediaRouter mediaRouter, RouteInfo routeInfo) {
        }

        public void onRouteUnselected(MediaRouter mediaRouter, RouteInfo routeInfo) {
        }

        public void onRouteVolumeChanged(MediaRouter mediaRouter, RouteInfo routeInfo) {
        }

        public void onRouteUnselected(MediaRouter mediaRouter, RouteInfo routeInfo, int i) {
            onRouteUnselected(mediaRouter, routeInfo);
        }
    }

    private static final class CallbackRecord {
        public final Callback mCallback;
        public int mFlags;
        public final MediaRouter mRouter;
        public MediaRouteSelector mSelector = MediaRouteSelector.EMPTY;

        public CallbackRecord(MediaRouter mediaRouter, Callback callback) {
            this.mRouter = mediaRouter;
            this.mCallback = callback;
        }

        public boolean filterRouteEvent(RouteInfo routeInfo) {
            return (this.mFlags & 2) != 0 || routeInfo.matchesSelector(this.mSelector);
        }
    }

    public static abstract class ControlRequestCallback {
        public void onError(String str, Bundle bundle) {
        }

        public void onResult(Bundle bundle) {
        }
    }

    public static final class ProviderInfo {
        private MediaRouteProviderDescriptor mDescriptor;
        private final ProviderMetadata mMetadata;
        private final MediaRouteProvider mProviderInstance;
        private Resources mResources;
        private boolean mResourcesNotAvailable;
        private final List<RouteInfo> mRoutes = new ArrayList();

        ProviderInfo(MediaRouteProvider mediaRouteProvider) {
            this.mProviderInstance = mediaRouteProvider;
            this.mMetadata = mediaRouteProvider.getMetadata();
        }

        public MediaRouteProvider getProviderInstance() {
            MediaRouter.checkCallingThread();
            return this.mProviderInstance;
        }

        public String getPackageName() {
            return this.mMetadata.getPackageName();
        }

        public ComponentName getComponentName() {
            return this.mMetadata.getComponentName();
        }

        public List<RouteInfo> getRoutes() {
            MediaRouter.checkCallingThread();
            return this.mRoutes;
        }

        /* Access modifiers changed, original: 0000 */
        public Resources getResources() {
            if (this.mResources == null && !this.mResourcesNotAvailable) {
                String packageName = getPackageName();
                Context providerContext = MediaRouter.sGlobal.getProviderContext(packageName);
                if (providerContext != null) {
                    this.mResources = providerContext.getResources();
                } else {
                    String str = MediaRouter.TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Unable to obtain resources for route provider package: ");
                    stringBuilder.append(packageName);
                    Log.w(str, stringBuilder.toString());
                    this.mResourcesNotAvailable = true;
                }
            }
            return this.mResources;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean updateDescriptor(MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
            if (this.mDescriptor == mediaRouteProviderDescriptor) {
                return false;
            }
            this.mDescriptor = mediaRouteProviderDescriptor;
            return true;
        }

        /* Access modifiers changed, original: 0000 */
        public int findRouteByDescriptorId(String str) {
            int size = this.mRoutes.size();
            for (int i = 0; i < size; i++) {
                if (((RouteInfo) this.mRoutes.get(i)).mDescriptorId.equals(str)) {
                    return i;
                }
            }
            return -1;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("MediaRouter.RouteProviderInfo{ packageName=");
            stringBuilder.append(getPackageName());
            stringBuilder.append(" }");
            return stringBuilder.toString();
        }
    }

    public static class RouteInfo {
        static final int CHANGE_GENERAL = 1;
        static final int CHANGE_PRESENTATION_DISPLAY = 4;
        static final int CHANGE_VOLUME = 2;
        public static final int CONNECTION_STATE_CONNECTED = 2;
        public static final int CONNECTION_STATE_CONNECTING = 1;
        public static final int CONNECTION_STATE_DISCONNECTED = 0;
        @RestrictTo({Scope.LIBRARY_GROUP})
        public static final int DEVICE_TYPE_BLUETOOTH = 3;
        public static final int DEVICE_TYPE_SPEAKER = 2;
        public static final int DEVICE_TYPE_TV = 1;
        @RestrictTo({Scope.LIBRARY_GROUP})
        public static final int DEVICE_TYPE_UNKNOWN = 0;
        public static final int PLAYBACK_TYPE_LOCAL = 0;
        public static final int PLAYBACK_TYPE_REMOTE = 1;
        public static final int PLAYBACK_VOLUME_FIXED = 0;
        public static final int PLAYBACK_VOLUME_VARIABLE = 1;
        @RestrictTo({Scope.LIBRARY_GROUP})
        public static final int PRESENTATION_DISPLAY_ID_NONE = -1;
        static final String SYSTEM_MEDIA_ROUTE_PROVIDER_PACKAGE_NAME = "android";
        private boolean mCanDisconnect;
        private boolean mConnecting;
        private int mConnectionState;
        private final ArrayList<IntentFilter> mControlFilters = new ArrayList();
        private String mDescription;
        MediaRouteDescriptor mDescriptor;
        private final String mDescriptorId;
        private int mDeviceType;
        private boolean mEnabled;
        private Bundle mExtras;
        private Uri mIconUri;
        private String mName;
        private int mPlaybackStream;
        private int mPlaybackType;
        private Display mPresentationDisplay;
        private int mPresentationDisplayId = -1;
        private final ProviderInfo mProvider;
        private IntentSender mSettingsIntent;
        private final String mUniqueId;
        private int mVolume;
        private int mVolumeHandling;
        private int mVolumeMax;

        RouteInfo(ProviderInfo providerInfo, String str, String str2) {
            this.mProvider = providerInfo;
            this.mDescriptorId = str;
            this.mUniqueId = str2;
        }

        public ProviderInfo getProvider() {
            return this.mProvider;
        }

        @NonNull
        public String getId() {
            return this.mUniqueId;
        }

        public String getName() {
            return this.mName;
        }

        @Nullable
        public String getDescription() {
            return this.mDescription;
        }

        public Uri getIconUri() {
            return this.mIconUri;
        }

        public boolean isEnabled() {
            return this.mEnabled;
        }

        public boolean isConnecting() {
            return this.mConnecting;
        }

        public int getConnectionState() {
            return this.mConnectionState;
        }

        public boolean isSelected() {
            MediaRouter.checkCallingThread();
            return MediaRouter.sGlobal.getSelectedRoute() == this;
        }

        public boolean isDefault() {
            MediaRouter.checkCallingThread();
            return MediaRouter.sGlobal.getDefaultRoute() == this;
        }

        public boolean isBluetooth() {
            MediaRouter.checkCallingThread();
            return MediaRouter.sGlobal.getBluetoothRoute() == this;
        }

        public boolean isDeviceSpeaker() {
            return isDefault() && Resources.getSystem().getText(Resources.getSystem().getIdentifier("default_audio_route_name", "string", "android")).equals(this.mName);
        }

        public List<IntentFilter> getControlFilters() {
            return this.mControlFilters;
        }

        public boolean matchesSelector(@NonNull MediaRouteSelector mediaRouteSelector) {
            if (mediaRouteSelector == null) {
                throw new IllegalArgumentException("selector must not be null");
            }
            MediaRouter.checkCallingThread();
            return mediaRouteSelector.matchesControlFilters(this.mControlFilters);
        }

        public boolean supportsControlCategory(@NonNull String str) {
            if (str == null) {
                throw new IllegalArgumentException("category must not be null");
            }
            MediaRouter.checkCallingThread();
            int size = this.mControlFilters.size();
            for (int i = 0; i < size; i++) {
                if (((IntentFilter) this.mControlFilters.get(i)).hasCategory(str)) {
                    return true;
                }
            }
            return false;
        }

        public boolean supportsControlAction(@NonNull String str, @NonNull String str2) {
            if (str == null) {
                throw new IllegalArgumentException("category must not be null");
            } else if (str2 == null) {
                throw new IllegalArgumentException("action must not be null");
            } else {
                MediaRouter.checkCallingThread();
                int size = this.mControlFilters.size();
                for (int i = 0; i < size; i++) {
                    IntentFilter intentFilter = (IntentFilter) this.mControlFilters.get(i);
                    if (intentFilter.hasCategory(str) && intentFilter.hasAction(str2)) {
                        return true;
                    }
                }
                return false;
            }
        }

        public boolean supportsControlRequest(@NonNull Intent intent) {
            if (intent == null) {
                throw new IllegalArgumentException("intent must not be null");
            }
            MediaRouter.checkCallingThread();
            ContentResolver contentResolver = MediaRouter.sGlobal.getContentResolver();
            int size = this.mControlFilters.size();
            for (int i = 0; i < size; i++) {
                if (((IntentFilter) this.mControlFilters.get(i)).match(contentResolver, intent, true, MediaRouter.TAG) >= 0) {
                    return true;
                }
            }
            return false;
        }

        public void sendControlRequest(@NonNull Intent intent, @Nullable ControlRequestCallback controlRequestCallback) {
            if (intent == null) {
                throw new IllegalArgumentException("intent must not be null");
            }
            MediaRouter.checkCallingThread();
            MediaRouter.sGlobal.sendControlRequest(this, intent, controlRequestCallback);
        }

        public int getPlaybackType() {
            return this.mPlaybackType;
        }

        public int getPlaybackStream() {
            return this.mPlaybackStream;
        }

        public int getDeviceType() {
            return this.mDeviceType;
        }

        @RestrictTo({Scope.LIBRARY_GROUP})
        public boolean isDefaultOrBluetooth() {
            boolean z = true;
            if (isDefault() || this.mDeviceType == 3) {
                return true;
            }
            if (!(isSystemMediaRouteProvider(this) && supportsControlCategory(MediaControlIntent.CATEGORY_LIVE_AUDIO) && !supportsControlCategory(MediaControlIntent.CATEGORY_LIVE_VIDEO))) {
                z = false;
            }
            return z;
        }

        private static boolean isSystemMediaRouteProvider(RouteInfo routeInfo) {
            return TextUtils.equals(routeInfo.getProviderInstance().getMetadata().getPackageName(), "android");
        }

        public int getVolumeHandling() {
            return this.mVolumeHandling;
        }

        public int getVolume() {
            return this.mVolume;
        }

        public int getVolumeMax() {
            return this.mVolumeMax;
        }

        public boolean canDisconnect() {
            return this.mCanDisconnect;
        }

        public void requestSetVolume(int i) {
            MediaRouter.checkCallingThread();
            MediaRouter.sGlobal.requestSetVolume(this, Math.min(this.mVolumeMax, Math.max(0, i)));
        }

        public void requestUpdateVolume(int i) {
            MediaRouter.checkCallingThread();
            if (i != 0) {
                MediaRouter.sGlobal.requestUpdateVolume(this, i);
            }
        }

        @Nullable
        public Display getPresentationDisplay() {
            MediaRouter.checkCallingThread();
            if (this.mPresentationDisplayId >= 0 && this.mPresentationDisplay == null) {
                this.mPresentationDisplay = MediaRouter.sGlobal.getDisplay(this.mPresentationDisplayId);
            }
            return this.mPresentationDisplay;
        }

        @RestrictTo({Scope.LIBRARY_GROUP})
        public int getPresentationDisplayId() {
            return this.mPresentationDisplayId;
        }

        @Nullable
        public Bundle getExtras() {
            return this.mExtras;
        }

        @Nullable
        public IntentSender getSettingsIntent() {
            return this.mSettingsIntent;
        }

        public void select() {
            MediaRouter.checkCallingThread();
            MediaRouter.sGlobal.selectRoute(this);
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("MediaRouter.RouteInfo{ uniqueId=");
            stringBuilder.append(this.mUniqueId);
            stringBuilder.append(", name=");
            stringBuilder.append(this.mName);
            stringBuilder.append(", description=");
            stringBuilder.append(this.mDescription);
            stringBuilder.append(", iconUri=");
            stringBuilder.append(this.mIconUri);
            stringBuilder.append(", enabled=");
            stringBuilder.append(this.mEnabled);
            stringBuilder.append(", connecting=");
            stringBuilder.append(this.mConnecting);
            stringBuilder.append(", connectionState=");
            stringBuilder.append(this.mConnectionState);
            stringBuilder.append(", canDisconnect=");
            stringBuilder.append(this.mCanDisconnect);
            stringBuilder.append(", playbackType=");
            stringBuilder.append(this.mPlaybackType);
            stringBuilder.append(", playbackStream=");
            stringBuilder.append(this.mPlaybackStream);
            stringBuilder.append(", deviceType=");
            stringBuilder.append(this.mDeviceType);
            stringBuilder.append(", volumeHandling=");
            stringBuilder.append(this.mVolumeHandling);
            stringBuilder.append(", volume=");
            stringBuilder.append(this.mVolume);
            stringBuilder.append(", volumeMax=");
            stringBuilder.append(this.mVolumeMax);
            stringBuilder.append(", presentationDisplayId=");
            stringBuilder.append(this.mPresentationDisplayId);
            stringBuilder.append(", extras=");
            stringBuilder.append(this.mExtras);
            stringBuilder.append(", settingsIntent=");
            stringBuilder.append(this.mSettingsIntent);
            stringBuilder.append(", providerPackageName=");
            stringBuilder.append(this.mProvider.getPackageName());
            stringBuilder.append(" }");
            return stringBuilder.toString();
        }

        /* Access modifiers changed, original: 0000 */
        public int maybeUpdateDescriptor(MediaRouteDescriptor mediaRouteDescriptor) {
            return this.mDescriptor != mediaRouteDescriptor ? updateDescriptor(mediaRouteDescriptor) : 0;
        }

        /* Access modifiers changed, original: 0000 */
        public int updateDescriptor(MediaRouteDescriptor mediaRouteDescriptor) {
            this.mDescriptor = mediaRouteDescriptor;
            int i = 0;
            if (mediaRouteDescriptor == null) {
                return 0;
            }
            if (!MediaRouter.equal(this.mName, mediaRouteDescriptor.getName())) {
                this.mName = mediaRouteDescriptor.getName();
                i = 1;
            }
            if (!MediaRouter.equal(this.mDescription, mediaRouteDescriptor.getDescription())) {
                this.mDescription = mediaRouteDescriptor.getDescription();
                i |= 1;
            }
            if (!MediaRouter.equal(this.mIconUri, mediaRouteDescriptor.getIconUri())) {
                this.mIconUri = mediaRouteDescriptor.getIconUri();
                i |= 1;
            }
            if (this.mEnabled != mediaRouteDescriptor.isEnabled()) {
                this.mEnabled = mediaRouteDescriptor.isEnabled();
                i |= 1;
            }
            if (this.mConnecting != mediaRouteDescriptor.isConnecting()) {
                this.mConnecting = mediaRouteDescriptor.isConnecting();
                i |= 1;
            }
            if (this.mConnectionState != mediaRouteDescriptor.getConnectionState()) {
                this.mConnectionState = mediaRouteDescriptor.getConnectionState();
                i |= 1;
            }
            if (!this.mControlFilters.equals(mediaRouteDescriptor.getControlFilters())) {
                this.mControlFilters.clear();
                this.mControlFilters.addAll(mediaRouteDescriptor.getControlFilters());
                i |= 1;
            }
            if (this.mPlaybackType != mediaRouteDescriptor.getPlaybackType()) {
                this.mPlaybackType = mediaRouteDescriptor.getPlaybackType();
                i |= 1;
            }
            if (this.mPlaybackStream != mediaRouteDescriptor.getPlaybackStream()) {
                this.mPlaybackStream = mediaRouteDescriptor.getPlaybackStream();
                i |= 1;
            }
            if (this.mDeviceType != mediaRouteDescriptor.getDeviceType()) {
                this.mDeviceType = mediaRouteDescriptor.getDeviceType();
                i |= 1;
            }
            if (this.mVolumeHandling != mediaRouteDescriptor.getVolumeHandling()) {
                this.mVolumeHandling = mediaRouteDescriptor.getVolumeHandling();
                i |= 3;
            }
            if (this.mVolume != mediaRouteDescriptor.getVolume()) {
                this.mVolume = mediaRouteDescriptor.getVolume();
                i |= 3;
            }
            if (this.mVolumeMax != mediaRouteDescriptor.getVolumeMax()) {
                this.mVolumeMax = mediaRouteDescriptor.getVolumeMax();
                i |= 3;
            }
            if (this.mPresentationDisplayId != mediaRouteDescriptor.getPresentationDisplayId()) {
                this.mPresentationDisplayId = mediaRouteDescriptor.getPresentationDisplayId();
                this.mPresentationDisplay = null;
                i |= 5;
            }
            if (!MediaRouter.equal(this.mExtras, mediaRouteDescriptor.getExtras())) {
                this.mExtras = mediaRouteDescriptor.getExtras();
                i |= 1;
            }
            if (!MediaRouter.equal(this.mSettingsIntent, mediaRouteDescriptor.getSettingsActivity())) {
                this.mSettingsIntent = mediaRouteDescriptor.getSettingsActivity();
                i |= 1;
            }
            if (this.mCanDisconnect == mediaRouteDescriptor.canDisconnectAndKeepPlaying()) {
                return i;
            }
            this.mCanDisconnect = mediaRouteDescriptor.canDisconnectAndKeepPlaying();
            return i | 5;
        }

        /* Access modifiers changed, original: 0000 */
        public String getDescriptorId() {
            return this.mDescriptorId;
        }

        @RestrictTo({Scope.LIBRARY_GROUP})
        public MediaRouteProvider getProviderInstance() {
            return this.mProvider.getProviderInstance();
        }
    }

    private static final class GlobalMediaRouter implements SyncCallback, android.support.v7.media.RegisteredMediaRouteProviderWatcher.Callback {
        final Context mApplicationContext;
        private RouteInfo mBluetoothRoute;
        final CallbackHandler mCallbackHandler = new CallbackHandler();
        private MediaSessionCompat mCompatSession;
        private RouteInfo mDefaultRoute;
        private MediaRouteDiscoveryRequest mDiscoveryRequest;
        private final DisplayManagerCompat mDisplayManager;
        private final boolean mLowRam;
        private MediaSessionRecord mMediaSession;
        final PlaybackInfo mPlaybackInfo = new PlaybackInfo();
        private final ProviderCallback mProviderCallback = new ProviderCallback();
        private final ArrayList<ProviderInfo> mProviders = new ArrayList();
        MediaSessionCompat mRccMediaSession;
        private RegisteredMediaRouteProviderWatcher mRegisteredProviderWatcher;
        private final ArrayList<RemoteControlClientRecord> mRemoteControlClients = new ArrayList();
        private final Map<String, RouteController> mRouteControllerMap = new HashMap();
        final ArrayList<WeakReference<MediaRouter>> mRouters = new ArrayList();
        private final ArrayList<RouteInfo> mRoutes = new ArrayList();
        RouteInfo mSelectedRoute;
        private RouteController mSelectedRouteController;
        private OnActiveChangeListener mSessionActiveListener = new OnActiveChangeListener() {
            public void onActiveChanged() {
                if (GlobalMediaRouter.this.mRccMediaSession == null) {
                    return;
                }
                if (GlobalMediaRouter.this.mRccMediaSession.isActive()) {
                    GlobalMediaRouter.this.addRemoteControlClient(GlobalMediaRouter.this.mRccMediaSession.getRemoteControlClient());
                } else {
                    GlobalMediaRouter.this.removeRemoteControlClient(GlobalMediaRouter.this.mRccMediaSession.getRemoteControlClient());
                }
            }
        };
        final SystemMediaRouteProvider mSystemProvider;
        private final Map<Pair<String, String>, String> mUniqueIdMap = new HashMap();

        private final class CallbackHandler extends Handler {
            public static final int MSG_PROVIDER_ADDED = 513;
            public static final int MSG_PROVIDER_CHANGED = 515;
            public static final int MSG_PROVIDER_REMOVED = 514;
            public static final int MSG_ROUTE_ADDED = 257;
            public static final int MSG_ROUTE_CHANGED = 259;
            public static final int MSG_ROUTE_PRESENTATION_DISPLAY_CHANGED = 261;
            public static final int MSG_ROUTE_REMOVED = 258;
            public static final int MSG_ROUTE_SELECTED = 262;
            public static final int MSG_ROUTE_UNSELECTED = 263;
            public static final int MSG_ROUTE_VOLUME_CHANGED = 260;
            private static final int MSG_TYPE_MASK = 65280;
            private static final int MSG_TYPE_PROVIDER = 512;
            private static final int MSG_TYPE_ROUTE = 256;
            private final ArrayList<CallbackRecord> mTempCallbackRecords = new ArrayList();

            CallbackHandler() {
            }

            public void post(int i, Object obj) {
                obtainMessage(i, obj).sendToTarget();
            }

            public void post(int i, Object obj, int i2) {
                Message obtainMessage = obtainMessage(i, obj);
                obtainMessage.arg1 = i2;
                obtainMessage.sendToTarget();
            }

            public void handleMessage(Message message) {
                int i = message.what;
                Object obj = message.obj;
                int i2 = message.arg1;
                if (i == MSG_ROUTE_CHANGED && GlobalMediaRouter.this.getSelectedRoute().getId().equals(((RouteInfo) obj).getId())) {
                    GlobalMediaRouter.this.updateSelectedRouteIfNeeded(true);
                }
                syncWithSystemProvider(i, obj);
                try {
                    int size = GlobalMediaRouter.this.mRouters.size();
                    while (true) {
                        size--;
                        if (size < 0) {
                            break;
                        }
                        MediaRouter mediaRouter = (MediaRouter) ((WeakReference) GlobalMediaRouter.this.mRouters.get(size)).get();
                        if (mediaRouter == null) {
                            GlobalMediaRouter.this.mRouters.remove(size);
                        } else {
                            this.mTempCallbackRecords.addAll(mediaRouter.mCallbackRecords);
                        }
                    }
                    size = this.mTempCallbackRecords.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        invokeCallback((CallbackRecord) this.mTempCallbackRecords.get(i3), i, obj, i2);
                    }
                } finally {
                    this.mTempCallbackRecords.clear();
                }
            }

            private void syncWithSystemProvider(int i, Object obj) {
                if (i != MSG_ROUTE_SELECTED) {
                    switch (i) {
                        case 257:
                            GlobalMediaRouter.this.mSystemProvider.onSyncRouteAdded((RouteInfo) obj);
                            return;
                        case MSG_ROUTE_REMOVED /*258*/:
                            GlobalMediaRouter.this.mSystemProvider.onSyncRouteRemoved((RouteInfo) obj);
                            return;
                        case MSG_ROUTE_CHANGED /*259*/:
                            GlobalMediaRouter.this.mSystemProvider.onSyncRouteChanged((RouteInfo) obj);
                            return;
                        default:
                            return;
                    }
                }
                GlobalMediaRouter.this.mSystemProvider.onSyncRouteSelected((RouteInfo) obj);
            }

            private void invokeCallback(CallbackRecord callbackRecord, int i, Object obj, int i2) {
                MediaRouter mediaRouter = callbackRecord.mRouter;
                Callback callback = callbackRecord.mCallback;
                int i3 = 65280 & i;
                if (i3 == 256) {
                    RouteInfo routeInfo = (RouteInfo) obj;
                    if (callbackRecord.filterRouteEvent(routeInfo)) {
                        switch (i) {
                            case 257:
                                callback.onRouteAdded(mediaRouter, routeInfo);
                                return;
                            case MSG_ROUTE_REMOVED /*258*/:
                                callback.onRouteRemoved(mediaRouter, routeInfo);
                                return;
                            case MSG_ROUTE_CHANGED /*259*/:
                                callback.onRouteChanged(mediaRouter, routeInfo);
                                return;
                            case MSG_ROUTE_VOLUME_CHANGED /*260*/:
                                callback.onRouteVolumeChanged(mediaRouter, routeInfo);
                                return;
                            case MSG_ROUTE_PRESENTATION_DISPLAY_CHANGED /*261*/:
                                callback.onRoutePresentationDisplayChanged(mediaRouter, routeInfo);
                                return;
                            case MSG_ROUTE_SELECTED /*262*/:
                                callback.onRouteSelected(mediaRouter, routeInfo);
                                return;
                            case MSG_ROUTE_UNSELECTED /*263*/:
                                callback.onRouteUnselected(mediaRouter, routeInfo, i2);
                                return;
                            default:
                                return;
                        }
                    }
                } else if (i3 == 512) {
                    ProviderInfo providerInfo = (ProviderInfo) obj;
                    switch (i) {
                        case 513:
                            callback.onProviderAdded(mediaRouter, providerInfo);
                            return;
                        case MSG_PROVIDER_REMOVED /*514*/:
                            callback.onProviderRemoved(mediaRouter, providerInfo);
                            return;
                        case MSG_PROVIDER_CHANGED /*515*/:
                            callback.onProviderChanged(mediaRouter, providerInfo);
                            return;
                        default:
                            return;
                    }
                }
            }
        }

        private final class MediaSessionRecord {
            private int mControlType;
            private int mMaxVolume;
            private final MediaSessionCompat mMsCompat;
            private VolumeProviderCompat mVpCompat;

            public MediaSessionRecord(Object obj) {
                this.mMsCompat = MediaSessionCompat.fromMediaSession(GlobalMediaRouter.this.mApplicationContext, obj);
            }

            public MediaSessionRecord(MediaSessionCompat mediaSessionCompat) {
                this.mMsCompat = mediaSessionCompat;
            }

            public void configureVolume(int i, int i2, int i3) {
                if (this.mVpCompat != null && i == this.mControlType && i2 == this.mMaxVolume) {
                    this.mVpCompat.setCurrentVolume(i3);
                    return;
                }
                this.mVpCompat = new VolumeProviderCompat(i, i2, i3) {
                    public void onSetVolumeTo(final int i) {
                        GlobalMediaRouter.this.mCallbackHandler.post(new Runnable() {
                            public void run() {
                                if (GlobalMediaRouter.this.mSelectedRoute != null) {
                                    GlobalMediaRouter.this.mSelectedRoute.requestSetVolume(i);
                                }
                            }
                        });
                    }

                    public void onAdjustVolume(final int i) {
                        GlobalMediaRouter.this.mCallbackHandler.post(new Runnable() {
                            public void run() {
                                if (GlobalMediaRouter.this.mSelectedRoute != null) {
                                    GlobalMediaRouter.this.mSelectedRoute.requestUpdateVolume(i);
                                }
                            }
                        });
                    }
                };
                this.mMsCompat.setPlaybackToRemote(this.mVpCompat);
            }

            public void clearVolumeHandling() {
                this.mMsCompat.setPlaybackToLocal(GlobalMediaRouter.this.mPlaybackInfo.playbackStream);
                this.mVpCompat = null;
            }

            public Token getToken() {
                return this.mMsCompat.getSessionToken();
            }
        }

        private final class ProviderCallback extends android.support.v7.media.MediaRouteProvider.Callback {
            ProviderCallback() {
            }

            public void onDescriptorChanged(MediaRouteProvider mediaRouteProvider, MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
                GlobalMediaRouter.this.updateProviderDescriptor(mediaRouteProvider, mediaRouteProviderDescriptor);
            }
        }

        private final class RemoteControlClientRecord implements VolumeCallback {
            private boolean mDisconnected;
            private final RemoteControlClientCompat mRccCompat;

            public RemoteControlClientRecord(Object obj) {
                this.mRccCompat = RemoteControlClientCompat.obtain(GlobalMediaRouter.this.mApplicationContext, obj);
                this.mRccCompat.setVolumeCallback(this);
                updatePlaybackInfo();
            }

            public Object getRemoteControlClient() {
                return this.mRccCompat.getRemoteControlClient();
            }

            public void disconnect() {
                this.mDisconnected = true;
                this.mRccCompat.setVolumeCallback(null);
            }

            public void updatePlaybackInfo() {
                this.mRccCompat.setPlaybackInfo(GlobalMediaRouter.this.mPlaybackInfo);
            }

            public void onVolumeSetRequest(int i) {
                if (!this.mDisconnected && GlobalMediaRouter.this.mSelectedRoute != null) {
                    GlobalMediaRouter.this.mSelectedRoute.requestSetVolume(i);
                }
            }

            public void onVolumeUpdateRequest(int i) {
                if (!this.mDisconnected && GlobalMediaRouter.this.mSelectedRoute != null) {
                    GlobalMediaRouter.this.mSelectedRoute.requestUpdateVolume(i);
                }
            }
        }

        GlobalMediaRouter(Context context) {
            this.mApplicationContext = context;
            this.mDisplayManager = DisplayManagerCompat.getInstance(context);
            this.mLowRam = ActivityManagerCompat.isLowRamDevice((ActivityManager) context.getSystemService("activity"));
            this.mSystemProvider = SystemMediaRouteProvider.obtain(context, this);
            addProvider(this.mSystemProvider);
        }

        public void start() {
            this.mRegisteredProviderWatcher = new RegisteredMediaRouteProviderWatcher(this.mApplicationContext, this);
            this.mRegisteredProviderWatcher.start();
        }

        public MediaRouter getRouter(Context context) {
            int size = this.mRouters.size();
            while (true) {
                size--;
                if (size >= 0) {
                    MediaRouter mediaRouter = (MediaRouter) ((WeakReference) this.mRouters.get(size)).get();
                    if (mediaRouter == null) {
                        this.mRouters.remove(size);
                    } else if (mediaRouter.mContext == context) {
                        return mediaRouter;
                    }
                } else {
                    MediaRouter mediaRouter2 = new MediaRouter(context);
                    this.mRouters.add(new WeakReference(mediaRouter2));
                    return mediaRouter2;
                }
            }
        }

        public ContentResolver getContentResolver() {
            return this.mApplicationContext.getContentResolver();
        }

        public Context getProviderContext(String str) {
            if (str.equals(SystemMediaRouteProvider.PACKAGE_NAME)) {
                return this.mApplicationContext;
            }
            try {
                return this.mApplicationContext.createPackageContext(str, 4);
            } catch (NameNotFoundException unused) {
                return null;
            }
        }

        public Display getDisplay(int i) {
            return this.mDisplayManager.getDisplay(i);
        }

        public void sendControlRequest(RouteInfo routeInfo, Intent intent, ControlRequestCallback controlRequestCallback) {
            if (!((routeInfo == this.mSelectedRoute && this.mSelectedRouteController != null && this.mSelectedRouteController.onControlRequest(intent, controlRequestCallback)) || controlRequestCallback == null)) {
                controlRequestCallback.onError(null, null);
            }
        }

        public void requestSetVolume(RouteInfo routeInfo, int i) {
            if (routeInfo == this.mSelectedRoute && this.mSelectedRouteController != null) {
                this.mSelectedRouteController.onSetVolume(i);
            } else if (!this.mRouteControllerMap.isEmpty()) {
                RouteController routeController = (RouteController) this.mRouteControllerMap.get(routeInfo.mDescriptorId);
                if (routeController != null) {
                    routeController.onSetVolume(i);
                }
            }
        }

        public void requestUpdateVolume(RouteInfo routeInfo, int i) {
            if (routeInfo == this.mSelectedRoute && this.mSelectedRouteController != null) {
                this.mSelectedRouteController.onUpdateVolume(i);
            }
        }

        public RouteInfo getRoute(String str) {
            Iterator it = this.mRoutes.iterator();
            while (it.hasNext()) {
                RouteInfo routeInfo = (RouteInfo) it.next();
                if (routeInfo.mUniqueId.equals(str)) {
                    return routeInfo;
                }
            }
            return null;
        }

        public List<RouteInfo> getRoutes() {
            return this.mRoutes;
        }

        public List<ProviderInfo> getProviders() {
            return this.mProviders;
        }

        public RouteInfo getDefaultRoute() {
            if (this.mDefaultRoute != null) {
                return this.mDefaultRoute;
            }
            throw new IllegalStateException("There is no default route.  The media router has not yet been fully initialized.");
        }

        public RouteInfo getBluetoothRoute() {
            return this.mBluetoothRoute;
        }

        public RouteInfo getSelectedRoute() {
            if (this.mSelectedRoute != null) {
                return this.mSelectedRoute;
            }
            throw new IllegalStateException("There is no currently selected route.  The media router has not yet been fully initialized.");
        }

        public void selectRoute(RouteInfo routeInfo) {
            selectRoute(routeInfo, 3);
        }

        public void selectRoute(RouteInfo routeInfo, int i) {
            String str;
            StringBuilder stringBuilder;
            if (!this.mRoutes.contains(routeInfo)) {
                str = MediaRouter.TAG;
                stringBuilder = new StringBuilder();
                stringBuilder.append("Ignoring attempt to select removed route: ");
                stringBuilder.append(routeInfo);
                Log.w(str, stringBuilder.toString());
            } else if (routeInfo.mEnabled) {
                setSelectedRouteInternal(routeInfo, i);
            } else {
                str = MediaRouter.TAG;
                stringBuilder = new StringBuilder();
                stringBuilder.append("Ignoring attempt to select disabled route: ");
                stringBuilder.append(routeInfo);
                Log.w(str, stringBuilder.toString());
            }
        }

        public boolean isRouteAvailable(MediaRouteSelector mediaRouteSelector, int i) {
            if (mediaRouteSelector.isEmpty()) {
                return false;
            }
            if ((i & 2) == 0 && this.mLowRam) {
                return true;
            }
            int size = this.mRoutes.size();
            for (int i2 = 0; i2 < size; i2++) {
                RouteInfo routeInfo = (RouteInfo) this.mRoutes.get(i2);
                if (((i & 1) == 0 || !routeInfo.isDefaultOrBluetooth()) && routeInfo.matchesSelector(mediaRouteSelector)) {
                    return true;
                }
            }
            return false;
        }

        public void updateDiscoveryRequest() {
            Builder builder = new Builder();
            int size = this.mRouters.size();
            Object obj = null;
            boolean z = false;
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                MediaRouter mediaRouter = (MediaRouter) ((WeakReference) this.mRouters.get(size)).get();
                if (mediaRouter == null) {
                    this.mRouters.remove(size);
                } else {
                    int size2 = mediaRouter.mCallbackRecords.size();
                    boolean z2 = z;
                    Object obj2 = obj;
                    for (int i = 0; i < size2; i++) {
                        CallbackRecord callbackRecord = (CallbackRecord) mediaRouter.mCallbackRecords.get(i);
                        builder.addSelector(callbackRecord.mSelector);
                        if ((callbackRecord.mFlags & 1) != 0) {
                            obj2 = 1;
                            z2 = true;
                        }
                        if (!((callbackRecord.mFlags & 4) == 0 || this.mLowRam)) {
                            obj2 = 1;
                        }
                        if ((callbackRecord.mFlags & 8) != 0) {
                            obj2 = 1;
                        }
                    }
                    obj = obj2;
                    z = z2;
                }
            }
            Object build = obj != null ? builder.build() : MediaRouteSelector.EMPTY;
            if (this.mDiscoveryRequest == null || !this.mDiscoveryRequest.getSelector().equals(build) || this.mDiscoveryRequest.isActiveScan() != z) {
                if (!build.isEmpty() || z) {
                    this.mDiscoveryRequest = new MediaRouteDiscoveryRequest(build, z);
                } else if (this.mDiscoveryRequest != null) {
                    this.mDiscoveryRequest = null;
                } else {
                    return;
                }
                if (MediaRouter.DEBUG) {
                    String str = MediaRouter.TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Updated discovery request: ");
                    stringBuilder.append(this.mDiscoveryRequest);
                    Log.d(str, stringBuilder.toString());
                }
                if (!(obj == null || z || !this.mLowRam)) {
                    Log.i(MediaRouter.TAG, "Forcing passive route discovery on a low-RAM device, system performance may be affected.  Please consider using CALLBACK_FLAG_REQUEST_DISCOVERY instead of CALLBACK_FLAG_FORCE_DISCOVERY.");
                }
                int size3 = this.mProviders.size();
                for (int i2 = 0; i2 < size3; i2++) {
                    ((ProviderInfo) this.mProviders.get(i2)).mProviderInstance.setDiscoveryRequest(this.mDiscoveryRequest);
                }
            }
        }

        public void addProvider(MediaRouteProvider mediaRouteProvider) {
            if (findProviderInfo(mediaRouteProvider) < 0) {
                ProviderInfo providerInfo = new ProviderInfo(mediaRouteProvider);
                this.mProviders.add(providerInfo);
                if (MediaRouter.DEBUG) {
                    String str = MediaRouter.TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Provider added: ");
                    stringBuilder.append(providerInfo);
                    Log.d(str, stringBuilder.toString());
                }
                this.mCallbackHandler.post(513, providerInfo);
                updateProviderContents(providerInfo, mediaRouteProvider.getDescriptor());
                mediaRouteProvider.setCallback(this.mProviderCallback);
                mediaRouteProvider.setDiscoveryRequest(this.mDiscoveryRequest);
            }
        }

        public void removeProvider(MediaRouteProvider mediaRouteProvider) {
            int findProviderInfo = findProviderInfo(mediaRouteProvider);
            if (findProviderInfo >= 0) {
                mediaRouteProvider.setCallback(null);
                mediaRouteProvider.setDiscoveryRequest(null);
                ProviderInfo providerInfo = (ProviderInfo) this.mProviders.get(findProviderInfo);
                updateProviderContents(providerInfo, null);
                if (MediaRouter.DEBUG) {
                    String str = MediaRouter.TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Provider removed: ");
                    stringBuilder.append(providerInfo);
                    Log.d(str, stringBuilder.toString());
                }
                this.mCallbackHandler.post(CallbackHandler.MSG_PROVIDER_REMOVED, providerInfo);
                this.mProviders.remove(findProviderInfo);
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void updateProviderDescriptor(MediaRouteProvider mediaRouteProvider, MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
            int findProviderInfo = findProviderInfo(mediaRouteProvider);
            if (findProviderInfo >= 0) {
                updateProviderContents((ProviderInfo) this.mProviders.get(findProviderInfo), mediaRouteProviderDescriptor);
            }
        }

        private int findProviderInfo(MediaRouteProvider mediaRouteProvider) {
            int size = this.mProviders.size();
            for (int i = 0; i < size; i++) {
                if (((ProviderInfo) this.mProviders.get(i)).mProviderInstance == mediaRouteProvider) {
                    return i;
                }
            }
            return -1;
        }

        /* JADX WARNING: Removed duplicated region for block: B:57:0x0163 A:{LOOP_END, LOOP:3: B:56:0x0161->B:57:0x0163} */
        /* JADX WARNING: Removed duplicated region for block: B:60:0x0187  */
        /* JADX WARNING: Removed duplicated region for block: B:66:0x01b9  */
        private void updateProviderContents(android.support.v7.media.MediaRouter.ProviderInfo r18, android.support.v7.media.MediaRouteProviderDescriptor r19) {
            /*
            r17 = this;
            r0 = r17;
            r1 = r18;
            r2 = r19;
            r3 = r18.updateDescriptor(r19);
            if (r3 == 0) goto L_0x01d6;
        L_0x000c:
            r4 = 1;
            if (r2 == 0) goto L_0x0156;
        L_0x000f:
            r5 = r19.isValid();
            if (r5 == 0) goto L_0x0140;
        L_0x0015:
            r2 = r19.getRoutes();
            r5 = r2.size();
            r6 = new java.util.ArrayList;
            r6.<init>();
            r7 = new java.util.ArrayList;
            r7.<init>();
            r8 = 0;
            r9 = 0;
            r10 = 0;
        L_0x002a:
            r11 = 257; // 0x101 float:3.6E-43 double:1.27E-321;
            if (r8 >= r5) goto L_0x00e0;
        L_0x002e:
            r12 = r2.get(r8);
            r12 = (android.support.v7.media.MediaRouteDescriptor) r12;
            r13 = r12.getId();
            r14 = r1.findRouteByDescriptorId(r13);
            if (r14 >= 0) goto L_0x0095;
        L_0x003e:
            r14 = r0.assignRouteUniqueId(r1, r13);
            r15 = r12.getGroupMemberIds();
            if (r15 == 0) goto L_0x004a;
        L_0x0048:
            r15 = 1;
            goto L_0x004b;
        L_0x004a:
            r15 = 0;
        L_0x004b:
            if (r15 == 0) goto L_0x0053;
        L_0x004d:
            r3 = new android.support.v7.media.MediaRouter$RouteGroup;
            r3.<init>(r1, r13, r14);
            goto L_0x0058;
        L_0x0053:
            r3 = new android.support.v7.media.MediaRouter$RouteInfo;
            r3.<init>(r1, r13, r14);
        L_0x0058:
            r13 = r18.mRoutes;
            r14 = r9 + 1;
            r13.add(r9, r3);
            r9 = r0.mRoutes;
            r9.add(r3);
            if (r15 == 0) goto L_0x0071;
        L_0x0068:
            r9 = new android.support.v4.util.Pair;
            r9.<init>(r3, r12);
            r6.add(r9);
            goto L_0x0093;
        L_0x0071:
            r3.maybeUpdateDescriptor(r12);
            r9 = android.support.v7.media.MediaRouter.DEBUG;
            if (r9 == 0) goto L_0x008e;
        L_0x0078:
            r9 = "MediaRouter";
            r12 = new java.lang.StringBuilder;
            r12.<init>();
            r13 = "Route added: ";
            r12.append(r13);
            r12.append(r3);
            r12 = r12.toString();
            android.util.Log.d(r9, r12);
        L_0x008e:
            r9 = r0.mCallbackHandler;
            r9.post(r11, r3);
        L_0x0093:
            r9 = r14;
            goto L_0x00dc;
        L_0x0095:
            if (r14 >= r9) goto L_0x00ae;
        L_0x0097:
            r3 = "MediaRouter";
            r11 = new java.lang.StringBuilder;
            r11.<init>();
            r13 = "Ignoring route descriptor with duplicate id: ";
            r11.append(r13);
            r11.append(r12);
            r11 = r11.toString();
            android.util.Log.w(r3, r11);
            goto L_0x00dc;
        L_0x00ae:
            r3 = r18.mRoutes;
            r3 = r3.get(r14);
            r3 = (android.support.v7.media.MediaRouter.RouteInfo) r3;
            r11 = r18.mRoutes;
            r13 = r9 + 1;
            java.util.Collections.swap(r11, r14, r9);
            r9 = r3 instanceof android.support.v7.media.MediaRouter.RouteGroup;
            if (r9 == 0) goto L_0x00ce;
        L_0x00c5:
            r9 = new android.support.v4.util.Pair;
            r9.<init>(r3, r12);
            r7.add(r9);
            goto L_0x00db;
        L_0x00ce:
            r9 = r0.updateRouteDescriptorAndNotify(r3, r12);
            if (r9 == 0) goto L_0x00db;
        L_0x00d4:
            r9 = r0.mSelectedRoute;
            if (r3 != r9) goto L_0x00db;
        L_0x00d8:
            r9 = r13;
            r10 = 1;
            goto L_0x00dc;
        L_0x00db:
            r9 = r13;
        L_0x00dc:
            r8 = r8 + 1;
            goto L_0x002a;
        L_0x00e0:
            r2 = r6.iterator();
        L_0x00e4:
            r3 = r2.hasNext();
            if (r3 == 0) goto L_0x011b;
        L_0x00ea:
            r3 = r2.next();
            r3 = (android.support.v4.util.Pair) r3;
            r5 = r3.first;
            r5 = (android.support.v7.media.MediaRouter.RouteInfo) r5;
            r3 = r3.second;
            r3 = (android.support.v7.media.MediaRouteDescriptor) r3;
            r5.maybeUpdateDescriptor(r3);
            r3 = android.support.v7.media.MediaRouter.DEBUG;
            if (r3 == 0) goto L_0x0115;
        L_0x00ff:
            r3 = "MediaRouter";
            r6 = new java.lang.StringBuilder;
            r6.<init>();
            r8 = "Route added: ";
            r6.append(r8);
            r6.append(r5);
            r6 = r6.toString();
            android.util.Log.d(r3, r6);
        L_0x0115:
            r3 = r0.mCallbackHandler;
            r3.post(r11, r5);
            goto L_0x00e4;
        L_0x011b:
            r2 = r7.iterator();
            r3 = r10;
        L_0x0120:
            r5 = r2.hasNext();
            if (r5 == 0) goto L_0x0158;
        L_0x0126:
            r5 = r2.next();
            r5 = (android.support.v4.util.Pair) r5;
            r6 = r5.first;
            r6 = (android.support.v7.media.MediaRouter.RouteInfo) r6;
            r5 = r5.second;
            r5 = (android.support.v7.media.MediaRouteDescriptor) r5;
            r5 = r0.updateRouteDescriptorAndNotify(r6, r5);
            if (r5 == 0) goto L_0x0120;
        L_0x013a:
            r5 = r0.mSelectedRoute;
            if (r6 != r5) goto L_0x0120;
        L_0x013e:
            r3 = 1;
            goto L_0x0120;
        L_0x0140:
            r3 = "MediaRouter";
            r5 = new java.lang.StringBuilder;
            r5.<init>();
            r6 = "Ignoring invalid provider descriptor: ";
            r5.append(r6);
            r5.append(r2);
            r2 = r5.toString();
            android.util.Log.w(r3, r2);
        L_0x0156:
            r3 = 0;
            r9 = 0;
        L_0x0158:
            r2 = r18.mRoutes;
            r2 = r2.size();
            r2 = r2 - r4;
        L_0x0161:
            if (r2 < r9) goto L_0x0179;
        L_0x0163:
            r5 = r18.mRoutes;
            r5 = r5.get(r2);
            r5 = (android.support.v7.media.MediaRouter.RouteInfo) r5;
            r6 = 0;
            r5.maybeUpdateDescriptor(r6);
            r6 = r0.mRoutes;
            r6.remove(r5);
            r2 = r2 + -1;
            goto L_0x0161;
        L_0x0179:
            r0.updateSelectedRouteIfNeeded(r3);
            r2 = r18.mRoutes;
            r2 = r2.size();
            r2 = r2 - r4;
        L_0x0185:
            if (r2 < r9) goto L_0x01b5;
        L_0x0187:
            r3 = r18.mRoutes;
            r3 = r3.remove(r2);
            r3 = (android.support.v7.media.MediaRouter.RouteInfo) r3;
            r4 = android.support.v7.media.MediaRouter.DEBUG;
            if (r4 == 0) goto L_0x01ab;
        L_0x0195:
            r4 = "MediaRouter";
            r5 = new java.lang.StringBuilder;
            r5.<init>();
            r6 = "Route removed: ";
            r5.append(r6);
            r5.append(r3);
            r5 = r5.toString();
            android.util.Log.d(r4, r5);
        L_0x01ab:
            r4 = r0.mCallbackHandler;
            r5 = 258; // 0x102 float:3.62E-43 double:1.275E-321;
            r4.post(r5, r3);
            r2 = r2 + -1;
            goto L_0x0185;
        L_0x01b5:
            r2 = android.support.v7.media.MediaRouter.DEBUG;
            if (r2 == 0) goto L_0x01cf;
        L_0x01b9:
            r2 = "MediaRouter";
            r3 = new java.lang.StringBuilder;
            r3.<init>();
            r4 = "Provider changed: ";
            r3.append(r4);
            r3.append(r1);
            r3 = r3.toString();
            android.util.Log.d(r2, r3);
        L_0x01cf:
            r2 = r0.mCallbackHandler;
            r3 = 515; // 0x203 float:7.22E-43 double:2.544E-321;
            r2.post(r3, r1);
        L_0x01d6:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v7.media.MediaRouter$GlobalMediaRouter.updateProviderContents(android.support.v7.media.MediaRouter$ProviderInfo, android.support.v7.media.MediaRouteProviderDescriptor):void");
        }

        private int updateRouteDescriptorAndNotify(RouteInfo routeInfo, MediaRouteDescriptor mediaRouteDescriptor) {
            int maybeUpdateDescriptor = routeInfo.maybeUpdateDescriptor(mediaRouteDescriptor);
            if (maybeUpdateDescriptor != 0) {
                String str;
                StringBuilder stringBuilder;
                if ((maybeUpdateDescriptor & 1) != 0) {
                    if (MediaRouter.DEBUG) {
                        str = MediaRouter.TAG;
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("Route changed: ");
                        stringBuilder.append(routeInfo);
                        Log.d(str, stringBuilder.toString());
                    }
                    this.mCallbackHandler.post(CallbackHandler.MSG_ROUTE_CHANGED, routeInfo);
                }
                if ((maybeUpdateDescriptor & 2) != 0) {
                    if (MediaRouter.DEBUG) {
                        str = MediaRouter.TAG;
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("Route volume changed: ");
                        stringBuilder.append(routeInfo);
                        Log.d(str, stringBuilder.toString());
                    }
                    this.mCallbackHandler.post(CallbackHandler.MSG_ROUTE_VOLUME_CHANGED, routeInfo);
                }
                if ((maybeUpdateDescriptor & 4) != 0) {
                    if (MediaRouter.DEBUG) {
                        str = MediaRouter.TAG;
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("Route presentation display changed: ");
                        stringBuilder.append(routeInfo);
                        Log.d(str, stringBuilder.toString());
                    }
                    this.mCallbackHandler.post(CallbackHandler.MSG_ROUTE_PRESENTATION_DISPLAY_CHANGED, routeInfo);
                }
            }
            return maybeUpdateDescriptor;
        }

        private String assignRouteUniqueId(ProviderInfo providerInfo, String str) {
            String flattenToShortString = providerInfo.getComponentName().flattenToShortString();
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(flattenToShortString);
            stringBuilder.append(":");
            stringBuilder.append(str);
            String stringBuilder2 = stringBuilder.toString();
            if (findRouteByUniqueId(stringBuilder2) < 0) {
                this.mUniqueIdMap.put(new Pair(flattenToShortString, str), stringBuilder2);
                return stringBuilder2;
            }
            String str2 = MediaRouter.TAG;
            StringBuilder stringBuilder3 = new StringBuilder();
            stringBuilder3.append("Either ");
            stringBuilder3.append(str);
            stringBuilder3.append(" isn't unique in ");
            stringBuilder3.append(flattenToShortString);
            stringBuilder3.append(" or we're trying to assign a unique ID for an already added route");
            Log.w(str2, stringBuilder3.toString());
            int i = 2;
            while (true) {
                String format = String.format(Locale.US, "%s_%d", new Object[]{stringBuilder2, Integer.valueOf(i)});
                if (findRouteByUniqueId(format) < 0) {
                    this.mUniqueIdMap.put(new Pair(flattenToShortString, str), format);
                    return format;
                }
                i++;
            }
        }

        private int findRouteByUniqueId(String str) {
            int size = this.mRoutes.size();
            for (int i = 0; i < size; i++) {
                if (((RouteInfo) this.mRoutes.get(i)).mUniqueId.equals(str)) {
                    return i;
                }
            }
            return -1;
        }

        private String getUniqueId(ProviderInfo providerInfo, String str) {
            return (String) this.mUniqueIdMap.get(new Pair(providerInfo.getComponentName().flattenToShortString(), str));
        }

        private void updateSelectedRouteIfNeeded(boolean z) {
            String str;
            StringBuilder stringBuilder;
            Iterator it;
            RouteInfo routeInfo;
            if (!(this.mDefaultRoute == null || isRouteSelectable(this.mDefaultRoute))) {
                str = MediaRouter.TAG;
                stringBuilder = new StringBuilder();
                stringBuilder.append("Clearing the default route because it is no longer selectable: ");
                stringBuilder.append(this.mDefaultRoute);
                Log.i(str, stringBuilder.toString());
                this.mDefaultRoute = null;
            }
            if (this.mDefaultRoute == null && !this.mRoutes.isEmpty()) {
                it = this.mRoutes.iterator();
                while (it.hasNext()) {
                    routeInfo = (RouteInfo) it.next();
                    if (isSystemDefaultRoute(routeInfo) && isRouteSelectable(routeInfo)) {
                        this.mDefaultRoute = routeInfo;
                        str = MediaRouter.TAG;
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("Found default route: ");
                        stringBuilder.append(this.mDefaultRoute);
                        Log.i(str, stringBuilder.toString());
                        break;
                    }
                }
            }
            if (!(this.mBluetoothRoute == null || isRouteSelectable(this.mBluetoothRoute))) {
                str = MediaRouter.TAG;
                stringBuilder = new StringBuilder();
                stringBuilder.append("Clearing the bluetooth route because it is no longer selectable: ");
                stringBuilder.append(this.mBluetoothRoute);
                Log.i(str, stringBuilder.toString());
                this.mBluetoothRoute = null;
            }
            if (this.mBluetoothRoute == null && !this.mRoutes.isEmpty()) {
                it = this.mRoutes.iterator();
                while (it.hasNext()) {
                    routeInfo = (RouteInfo) it.next();
                    if (isSystemLiveAudioOnlyRoute(routeInfo) && isRouteSelectable(routeInfo)) {
                        this.mBluetoothRoute = routeInfo;
                        str = MediaRouter.TAG;
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("Found bluetooth route: ");
                        stringBuilder.append(this.mBluetoothRoute);
                        Log.i(str, stringBuilder.toString());
                        break;
                    }
                }
            }
            if (!(this.mSelectedRoute == null || isRouteSelectable(this.mSelectedRoute))) {
                str = MediaRouter.TAG;
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append("Unselecting the current route because it is no longer selectable: ");
                stringBuilder2.append(this.mSelectedRoute);
                Log.i(str, stringBuilder2.toString());
                setSelectedRouteInternal(null, 0);
            }
            if (this.mSelectedRoute == null) {
                setSelectedRouteInternal(chooseFallbackRoute(), 0);
            } else if (z) {
                if (this.mSelectedRoute instanceof RouteGroup) {
                    List<RouteInfo> routes = ((RouteGroup) this.mSelectedRoute).getRoutes();
                    HashSet hashSet = new HashSet();
                    for (RouteInfo routeInfo2 : routes) {
                        hashSet.add(routeInfo2.mDescriptorId);
                    }
                    Iterator it2 = this.mRouteControllerMap.entrySet().iterator();
                    while (it2.hasNext()) {
                        Entry entry = (Entry) it2.next();
                        if (!hashSet.contains(entry.getKey())) {
                            RouteController routeController = (RouteController) entry.getValue();
                            routeController.onUnselect();
                            routeController.onRelease();
                            it2.remove();
                        }
                    }
                    for (RouteInfo routeInfo3 : routes) {
                        if (!this.mRouteControllerMap.containsKey(routeInfo3.mDescriptorId)) {
                            RouteController onCreateRouteController = routeInfo3.getProviderInstance().onCreateRouteController(routeInfo3.mDescriptorId, this.mSelectedRoute.mDescriptorId);
                            onCreateRouteController.onSelect();
                            this.mRouteControllerMap.put(routeInfo3.mDescriptorId, onCreateRouteController);
                        }
                    }
                }
                updatePlaybackInfoFromSelectedRoute();
            }
        }

        /* Access modifiers changed, original: 0000 */
        public RouteInfo chooseFallbackRoute() {
            Iterator it = this.mRoutes.iterator();
            while (it.hasNext()) {
                RouteInfo routeInfo = (RouteInfo) it.next();
                if (routeInfo != this.mDefaultRoute && isSystemLiveAudioOnlyRoute(routeInfo) && isRouteSelectable(routeInfo)) {
                    return routeInfo;
                }
            }
            return this.mDefaultRoute;
        }

        private boolean isSystemLiveAudioOnlyRoute(RouteInfo routeInfo) {
            return routeInfo.getProviderInstance() == this.mSystemProvider && routeInfo.supportsControlCategory(MediaControlIntent.CATEGORY_LIVE_AUDIO) && !routeInfo.supportsControlCategory(MediaControlIntent.CATEGORY_LIVE_VIDEO);
        }

        private boolean isRouteSelectable(RouteInfo routeInfo) {
            return routeInfo.mDescriptor != null && routeInfo.mEnabled;
        }

        private boolean isSystemDefaultRoute(RouteInfo routeInfo) {
            return routeInfo.getProviderInstance() == this.mSystemProvider && routeInfo.mDescriptorId.equals(SystemMediaRouteProvider.DEFAULT_ROUTE_ID);
        }

        private void setSelectedRouteInternal(RouteInfo routeInfo, int i) {
            if (this.mSelectedRoute != routeInfo) {
                if (this.mSelectedRoute != null) {
                    if (MediaRouter.DEBUG) {
                        String str = MediaRouter.TAG;
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append("Route unselected: ");
                        stringBuilder.append(this.mSelectedRoute);
                        stringBuilder.append(" reason: ");
                        stringBuilder.append(i);
                        Log.d(str, stringBuilder.toString());
                    }
                    this.mCallbackHandler.post(CallbackHandler.MSG_ROUTE_UNSELECTED, this.mSelectedRoute, i);
                    if (this.mSelectedRouteController != null) {
                        this.mSelectedRouteController.onUnselect(i);
                        this.mSelectedRouteController.onRelease();
                        this.mSelectedRouteController = null;
                    }
                    if (!this.mRouteControllerMap.isEmpty()) {
                        for (RouteController routeController : this.mRouteControllerMap.values()) {
                            routeController.onUnselect(i);
                            routeController.onRelease();
                        }
                        this.mRouteControllerMap.clear();
                    }
                }
                this.mSelectedRoute = routeInfo;
                if (this.mSelectedRoute != null) {
                    this.mSelectedRouteController = routeInfo.getProviderInstance().onCreateRouteController(routeInfo.mDescriptorId);
                    if (this.mSelectedRouteController != null) {
                        this.mSelectedRouteController.onSelect();
                    }
                    if (MediaRouter.DEBUG) {
                        String str2 = MediaRouter.TAG;
                        StringBuilder stringBuilder2 = new StringBuilder();
                        stringBuilder2.append("Route selected: ");
                        stringBuilder2.append(this.mSelectedRoute);
                        Log.d(str2, stringBuilder2.toString());
                    }
                    this.mCallbackHandler.post(CallbackHandler.MSG_ROUTE_SELECTED, this.mSelectedRoute);
                    if (this.mSelectedRoute instanceof RouteGroup) {
                        List<RouteInfo> routes = ((RouteGroup) this.mSelectedRoute).getRoutes();
                        this.mRouteControllerMap.clear();
                        for (RouteInfo routeInfo2 : routes) {
                            RouteController onCreateRouteController = routeInfo2.getProviderInstance().onCreateRouteController(routeInfo2.mDescriptorId, this.mSelectedRoute.mDescriptorId);
                            onCreateRouteController.onSelect();
                            this.mRouteControllerMap.put(routeInfo2.mDescriptorId, onCreateRouteController);
                        }
                    }
                }
                updatePlaybackInfoFromSelectedRoute();
            }
        }

        public RouteInfo getSystemRouteByDescriptorId(String str) {
            int findProviderInfo = findProviderInfo(this.mSystemProvider);
            if (findProviderInfo >= 0) {
                ProviderInfo providerInfo = (ProviderInfo) this.mProviders.get(findProviderInfo);
                int findRouteByDescriptorId = providerInfo.findRouteByDescriptorId(str);
                if (findRouteByDescriptorId >= 0) {
                    return (RouteInfo) providerInfo.mRoutes.get(findRouteByDescriptorId);
                }
            }
            return null;
        }

        public void addRemoteControlClient(Object obj) {
            if (findRemoteControlClientRecord(obj) < 0) {
                this.mRemoteControlClients.add(new RemoteControlClientRecord(obj));
            }
        }

        public void removeRemoteControlClient(Object obj) {
            int findRemoteControlClientRecord = findRemoteControlClientRecord(obj);
            if (findRemoteControlClientRecord >= 0) {
                ((RemoteControlClientRecord) this.mRemoteControlClients.remove(findRemoteControlClientRecord)).disconnect();
            }
        }

        public void setMediaSession(Object obj) {
            setMediaSessionRecord(obj != null ? new MediaSessionRecord(obj) : null);
        }

        public void setMediaSessionCompat(MediaSessionCompat mediaSessionCompat) {
            this.mCompatSession = mediaSessionCompat;
            if (VERSION.SDK_INT >= 21) {
                setMediaSessionRecord(mediaSessionCompat != null ? new MediaSessionRecord(mediaSessionCompat) : null);
            } else if (VERSION.SDK_INT >= 14) {
                if (this.mRccMediaSession != null) {
                    removeRemoteControlClient(this.mRccMediaSession.getRemoteControlClient());
                    this.mRccMediaSession.removeOnActiveChangeListener(this.mSessionActiveListener);
                }
                this.mRccMediaSession = mediaSessionCompat;
                if (mediaSessionCompat != null) {
                    mediaSessionCompat.addOnActiveChangeListener(this.mSessionActiveListener);
                    if (mediaSessionCompat.isActive()) {
                        addRemoteControlClient(mediaSessionCompat.getRemoteControlClient());
                    }
                }
            }
        }

        private void setMediaSessionRecord(MediaSessionRecord mediaSessionRecord) {
            if (this.mMediaSession != null) {
                this.mMediaSession.clearVolumeHandling();
            }
            this.mMediaSession = mediaSessionRecord;
            if (mediaSessionRecord != null) {
                updatePlaybackInfoFromSelectedRoute();
            }
        }

        public Token getMediaSessionToken() {
            if (this.mMediaSession != null) {
                return this.mMediaSession.getToken();
            }
            return this.mCompatSession != null ? this.mCompatSession.getSessionToken() : null;
        }

        private int findRemoteControlClientRecord(Object obj) {
            int size = this.mRemoteControlClients.size();
            for (int i = 0; i < size; i++) {
                if (((RemoteControlClientRecord) this.mRemoteControlClients.get(i)).getRemoteControlClient() == obj) {
                    return i;
                }
            }
            return -1;
        }

        private void updatePlaybackInfoFromSelectedRoute() {
            if (this.mSelectedRoute != null) {
                this.mPlaybackInfo.volume = this.mSelectedRoute.getVolume();
                this.mPlaybackInfo.volumeMax = this.mSelectedRoute.getVolumeMax();
                this.mPlaybackInfo.volumeHandling = this.mSelectedRoute.getVolumeHandling();
                this.mPlaybackInfo.playbackStream = this.mSelectedRoute.getPlaybackStream();
                this.mPlaybackInfo.playbackType = this.mSelectedRoute.getPlaybackType();
                int size = this.mRemoteControlClients.size();
                int i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    ((RemoteControlClientRecord) this.mRemoteControlClients.get(i2)).updatePlaybackInfo();
                }
                if (this.mMediaSession == null) {
                    return;
                }
                if (this.mSelectedRoute == getDefaultRoute()) {
                    this.mMediaSession.clearVolumeHandling();
                    return;
                }
                if (this.mPlaybackInfo.volumeHandling == 1) {
                    i = 2;
                }
                this.mMediaSession.configureVolume(i, this.mPlaybackInfo.volumeMax, this.mPlaybackInfo.volume);
            } else if (this.mMediaSession != null) {
                this.mMediaSession.clearVolumeHandling();
            }
        }
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    public static class RouteGroup extends RouteInfo {
        private List<RouteInfo> mRoutes = new ArrayList();

        RouteGroup(ProviderInfo providerInfo, String str, String str2) {
            super(providerInfo, str, str2);
        }

        public int getRouteCount() {
            return this.mRoutes.size();
        }

        public RouteInfo getRouteAt(int i) {
            return (RouteInfo) this.mRoutes.get(i);
        }

        public List<RouteInfo> getRoutes() {
            return this.mRoutes;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder(super.toString());
            stringBuilder.append('[');
            int size = this.mRoutes.size();
            for (int i = 0; i < size; i++) {
                if (i > 0) {
                    stringBuilder.append(", ");
                }
                stringBuilder.append(this.mRoutes.get(i));
            }
            stringBuilder.append(']');
            return stringBuilder.toString();
        }

        /* Access modifiers changed, original: 0000 */
        public int maybeUpdateDescriptor(MediaRouteDescriptor mediaRouteDescriptor) {
            int i = 0;
            if (this.mDescriptor != mediaRouteDescriptor) {
                this.mDescriptor = mediaRouteDescriptor;
                if (mediaRouteDescriptor != null) {
                    List<String> groupMemberIds = mediaRouteDescriptor.getGroupMemberIds();
                    ArrayList arrayList = new ArrayList();
                    if (groupMemberIds.size() != this.mRoutes.size()) {
                        i = 1;
                    }
                    for (String access$000 : groupMemberIds) {
                        RouteInfo route = MediaRouter.sGlobal.getRoute(MediaRouter.sGlobal.getUniqueId(getProvider(), access$000));
                        if (route != null) {
                            arrayList.add(route);
                            if (i == 0 && !this.mRoutes.contains(route)) {
                                i = 1;
                            }
                        }
                    }
                    if (i != 0) {
                        this.mRoutes = arrayList;
                    }
                }
            }
            return super.updateDescriptor(mediaRouteDescriptor) | i;
        }
    }

    MediaRouter(Context context) {
        this.mContext = context;
    }

    public static MediaRouter getInstance(@NonNull Context context) {
        if (context == null) {
            throw new IllegalArgumentException("context must not be null");
        }
        checkCallingThread();
        if (sGlobal == null) {
            sGlobal = new GlobalMediaRouter(context.getApplicationContext());
            sGlobal.start();
        }
        return sGlobal.getRouter(context);
    }

    public List<RouteInfo> getRoutes() {
        checkCallingThread();
        return sGlobal.getRoutes();
    }

    public List<ProviderInfo> getProviders() {
        checkCallingThread();
        return sGlobal.getProviders();
    }

    @NonNull
    public RouteInfo getDefaultRoute() {
        checkCallingThread();
        return sGlobal.getDefaultRoute();
    }

    public RouteInfo getBluetoothRoute() {
        checkCallingThread();
        return sGlobal.getBluetoothRoute();
    }

    @NonNull
    public RouteInfo getSelectedRoute() {
        checkCallingThread();
        return sGlobal.getSelectedRoute();
    }

    @NonNull
    public RouteInfo updateSelectedRoute(@NonNull MediaRouteSelector mediaRouteSelector) {
        if (mediaRouteSelector == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        checkCallingThread();
        if (DEBUG) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("updateSelectedRoute: ");
            stringBuilder.append(mediaRouteSelector);
            Log.d(str, stringBuilder.toString());
        }
        RouteInfo selectedRoute = sGlobal.getSelectedRoute();
        if (selectedRoute.isDefaultOrBluetooth() || selectedRoute.matchesSelector(mediaRouteSelector)) {
            return selectedRoute;
        }
        selectedRoute = sGlobal.chooseFallbackRoute();
        sGlobal.selectRoute(selectedRoute);
        return selectedRoute;
    }

    public void selectRoute(@NonNull RouteInfo routeInfo) {
        if (routeInfo == null) {
            throw new IllegalArgumentException("route must not be null");
        }
        checkCallingThread();
        if (DEBUG) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("selectRoute: ");
            stringBuilder.append(routeInfo);
            Log.d(str, stringBuilder.toString());
        }
        sGlobal.selectRoute(routeInfo);
    }

    public void unselect(int i) {
        if (i < 0 || i > 3) {
            throw new IllegalArgumentException("Unsupported reason to unselect route");
        }
        checkCallingThread();
        RouteInfo chooseFallbackRoute = sGlobal.chooseFallbackRoute();
        if (sGlobal.getSelectedRoute() != chooseFallbackRoute) {
            sGlobal.selectRoute(chooseFallbackRoute, i);
        } else {
            sGlobal.selectRoute(sGlobal.getDefaultRoute(), i);
        }
    }

    public boolean isRouteAvailable(@NonNull MediaRouteSelector mediaRouteSelector, int i) {
        if (mediaRouteSelector == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        checkCallingThread();
        return sGlobal.isRouteAvailable(mediaRouteSelector, i);
    }

    public void addCallback(MediaRouteSelector mediaRouteSelector, Callback callback) {
        addCallback(mediaRouteSelector, callback, 0);
    }

    public void addCallback(@NonNull MediaRouteSelector mediaRouteSelector, @NonNull Callback callback, int i) {
        if (mediaRouteSelector == null) {
            throw new IllegalArgumentException("selector must not be null");
        } else if (callback == null) {
            throw new IllegalArgumentException("callback must not be null");
        } else {
            CallbackRecord callbackRecord;
            checkCallingThread();
            if (DEBUG) {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("addCallback: selector=");
                stringBuilder.append(mediaRouteSelector);
                stringBuilder.append(", callback=");
                stringBuilder.append(callback);
                stringBuilder.append(", flags=");
                stringBuilder.append(Integer.toHexString(i));
                Log.d(str, stringBuilder.toString());
            }
            int findCallbackRecord = findCallbackRecord(callback);
            if (findCallbackRecord < 0) {
                callbackRecord = new CallbackRecord(this, callback);
                this.mCallbackRecords.add(callbackRecord);
            } else {
                callbackRecord = (CallbackRecord) this.mCallbackRecords.get(findCallbackRecord);
            }
            Object obj = null;
            if (((callbackRecord.mFlags ^ -1) & i) != 0) {
                callbackRecord.mFlags |= i;
                obj = 1;
            }
            if (!callbackRecord.mSelector.contains(mediaRouteSelector)) {
                callbackRecord.mSelector = new Builder(callbackRecord.mSelector).addSelector(mediaRouteSelector).build();
                obj = 1;
            }
            if (obj != null) {
                sGlobal.updateDiscoveryRequest();
            }
        }
    }

    public void removeCallback(@NonNull Callback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        checkCallingThread();
        if (DEBUG) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("removeCallback: callback=");
            stringBuilder.append(callback);
            Log.d(str, stringBuilder.toString());
        }
        int findCallbackRecord = findCallbackRecord(callback);
        if (findCallbackRecord >= 0) {
            this.mCallbackRecords.remove(findCallbackRecord);
            sGlobal.updateDiscoveryRequest();
        }
    }

    private int findCallbackRecord(Callback callback) {
        int size = this.mCallbackRecords.size();
        for (int i = 0; i < size; i++) {
            if (((CallbackRecord) this.mCallbackRecords.get(i)).mCallback == callback) {
                return i;
            }
        }
        return -1;
    }

    public void addProvider(@NonNull MediaRouteProvider mediaRouteProvider) {
        if (mediaRouteProvider == null) {
            throw new IllegalArgumentException("providerInstance must not be null");
        }
        checkCallingThread();
        if (DEBUG) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("addProvider: ");
            stringBuilder.append(mediaRouteProvider);
            Log.d(str, stringBuilder.toString());
        }
        sGlobal.addProvider(mediaRouteProvider);
    }

    public void removeProvider(@NonNull MediaRouteProvider mediaRouteProvider) {
        if (mediaRouteProvider == null) {
            throw new IllegalArgumentException("providerInstance must not be null");
        }
        checkCallingThread();
        if (DEBUG) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("removeProvider: ");
            stringBuilder.append(mediaRouteProvider);
            Log.d(str, stringBuilder.toString());
        }
        sGlobal.removeProvider(mediaRouteProvider);
    }

    public void addRemoteControlClient(@NonNull Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("remoteControlClient must not be null");
        }
        checkCallingThread();
        if (DEBUG) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("addRemoteControlClient: ");
            stringBuilder.append(obj);
            Log.d(str, stringBuilder.toString());
        }
        sGlobal.addRemoteControlClient(obj);
    }

    public void removeRemoteControlClient(@NonNull Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("remoteControlClient must not be null");
        }
        if (DEBUG) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("removeRemoteControlClient: ");
            stringBuilder.append(obj);
            Log.d(str, stringBuilder.toString());
        }
        sGlobal.removeRemoteControlClient(obj);
    }

    public void setMediaSession(Object obj) {
        if (DEBUG) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("addMediaSession: ");
            stringBuilder.append(obj);
            Log.d(str, stringBuilder.toString());
        }
        sGlobal.setMediaSession(obj);
    }

    public void setMediaSessionCompat(MediaSessionCompat mediaSessionCompat) {
        if (DEBUG) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("addMediaSessionCompat: ");
            stringBuilder.append(mediaSessionCompat);
            Log.d(str, stringBuilder.toString());
        }
        sGlobal.setMediaSessionCompat(mediaSessionCompat);
    }

    public Token getMediaSessionToken() {
        return sGlobal.getMediaSessionToken();
    }

    static void checkCallingThread() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("The media router service must only be accessed on the application's main thread.");
        }
    }

    static <T> boolean equal(T t, T t2) {
        return t == t2 || !(t == null || t2 == null || !t.equals(t2));
    }
}
