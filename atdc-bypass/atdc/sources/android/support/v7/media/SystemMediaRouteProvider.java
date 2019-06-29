package android.support.v7.media;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.media.AudioManager;
import android.os.Build.VERSION;
import android.support.v7.media.MediaRouteDescriptor.Builder;
import android.support.v7.media.MediaRouteProvider.ProviderMetadata;
import android.support.v7.media.MediaRouteProvider.RouteController;
import android.support.v7.media.MediaRouter.RouteInfo;
import android.support.v7.media.MediaRouterJellybean.Callback;
import android.support.v7.media.MediaRouterJellybean.GetDefaultRouteWorkaround;
import android.support.v7.media.MediaRouterJellybean.SelectRouteWorkaround;
import android.support.v7.media.MediaRouterJellybean.UserRouteInfo;
import android.support.v7.media.MediaRouterJellybean.VolumeCallback;
import android.support.v7.media.MediaRouterJellybeanMr1.ActiveScanWorkaround;
import android.support.v7.media.MediaRouterJellybeanMr1.IsConnectingWorkaround;
import android.support.v7.mediarouter.R;
import android.view.Display;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

abstract class SystemMediaRouteProvider extends MediaRouteProvider {
    public static final String DEFAULT_ROUTE_ID = "DEFAULT_ROUTE";
    public static final String PACKAGE_NAME = "android";
    private static final String TAG = "SystemMediaRouteProvider";

    public interface SyncCallback {
        RouteInfo getSystemRouteByDescriptorId(String str);
    }

    static class JellybeanImpl extends SystemMediaRouteProvider implements Callback, VolumeCallback {
        private static final ArrayList<IntentFilter> LIVE_AUDIO_CONTROL_FILTERS = new ArrayList();
        private static final ArrayList<IntentFilter> LIVE_VIDEO_CONTROL_FILTERS = new ArrayList();
        protected boolean mActiveScan;
        protected final Object mCallbackObj;
        protected boolean mCallbackRegistered;
        private GetDefaultRouteWorkaround mGetDefaultRouteWorkaround;
        protected int mRouteTypes;
        protected final Object mRouterObj;
        private SelectRouteWorkaround mSelectRouteWorkaround;
        private final SyncCallback mSyncCallback;
        protected final ArrayList<SystemRouteRecord> mSystemRouteRecords = new ArrayList();
        protected final Object mUserRouteCategoryObj;
        protected final ArrayList<UserRouteRecord> mUserRouteRecords = new ArrayList();
        protected final Object mVolumeCallbackObj;

        protected static final class SystemRouteRecord {
            public MediaRouteDescriptor mRouteDescriptor;
            public final String mRouteDescriptorId;
            public final Object mRouteObj;

            public SystemRouteRecord(Object obj, String str) {
                this.mRouteObj = obj;
                this.mRouteDescriptorId = str;
            }
        }

        protected static final class UserRouteRecord {
            public final RouteInfo mRoute;
            public final Object mRouteObj;

            public UserRouteRecord(RouteInfo routeInfo, Object obj) {
                this.mRoute = routeInfo;
                this.mRouteObj = obj;
            }
        }

        protected final class SystemRouteController extends RouteController {
            private final Object mRouteObj;

            public SystemRouteController(Object obj) {
                this.mRouteObj = obj;
            }

            public void onSetVolume(int i) {
                MediaRouterJellybean.RouteInfo.requestSetVolume(this.mRouteObj, i);
            }

            public void onUpdateVolume(int i) {
                MediaRouterJellybean.RouteInfo.requestUpdateVolume(this.mRouteObj, i);
            }
        }

        public void onRouteGrouped(Object obj, Object obj2, int i) {
        }

        public void onRouteUngrouped(Object obj, Object obj2) {
        }

        public void onRouteUnselected(int i, Object obj) {
        }

        static {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addCategory(MediaControlIntent.CATEGORY_LIVE_AUDIO);
            LIVE_AUDIO_CONTROL_FILTERS.add(intentFilter);
            intentFilter = new IntentFilter();
            intentFilter.addCategory(MediaControlIntent.CATEGORY_LIVE_VIDEO);
            LIVE_VIDEO_CONTROL_FILTERS.add(intentFilter);
        }

        public JellybeanImpl(Context context, SyncCallback syncCallback) {
            super(context);
            this.mSyncCallback = syncCallback;
            this.mRouterObj = MediaRouterJellybean.getMediaRouter(context);
            this.mCallbackObj = createCallbackObj();
            this.mVolumeCallbackObj = createVolumeCallbackObj();
            this.mUserRouteCategoryObj = MediaRouterJellybean.createRouteCategory(this.mRouterObj, context.getResources().getString(R.string.mr_user_route_category_name), false);
            updateSystemRoutes();
        }

        public RouteController onCreateRouteController(String str) {
            int findSystemRouteRecordByDescriptorId = findSystemRouteRecordByDescriptorId(str);
            return findSystemRouteRecordByDescriptorId >= 0 ? new SystemRouteController(((SystemRouteRecord) this.mSystemRouteRecords.get(findSystemRouteRecordByDescriptorId)).mRouteObj) : null;
        }

        public void onDiscoveryRequestChanged(MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
            boolean isActiveScan;
            int i = 0;
            if (mediaRouteDiscoveryRequest != null) {
                List controlCategories = mediaRouteDiscoveryRequest.getSelector().getControlCategories();
                int size = controlCategories.size();
                int i2 = 0;
                while (i < size) {
                    String str = (String) controlCategories.get(i);
                    i2 = str.equals(MediaControlIntent.CATEGORY_LIVE_AUDIO) ? i2 | 1 : str.equals(MediaControlIntent.CATEGORY_LIVE_VIDEO) ? i2 | 2 : i2 | 8388608;
                    i++;
                }
                isActiveScan = mediaRouteDiscoveryRequest.isActiveScan();
                i = i2;
            } else {
                isActiveScan = false;
            }
            if (this.mRouteTypes != i || this.mActiveScan != isActiveScan) {
                this.mRouteTypes = i;
                this.mActiveScan = isActiveScan;
                updateSystemRoutes();
            }
        }

        public void onRouteAdded(Object obj) {
            if (addSystemRouteNoPublish(obj)) {
                publishRoutes();
            }
        }

        private void updateSystemRoutes() {
            updateCallback();
            int i = 0;
            for (Object addSystemRouteNoPublish : MediaRouterJellybean.getRoutes(this.mRouterObj)) {
                i |= addSystemRouteNoPublish(addSystemRouteNoPublish);
            }
            if (i != 0) {
                publishRoutes();
            }
        }

        private boolean addSystemRouteNoPublish(Object obj) {
            if (getUserRouteRecord(obj) != null || findSystemRouteRecord(obj) >= 0) {
                return false;
            }
            SystemRouteRecord systemRouteRecord = new SystemRouteRecord(obj, assignRouteId(obj));
            updateSystemRouteDescriptor(systemRouteRecord);
            this.mSystemRouteRecords.add(systemRouteRecord);
            return true;
        }

        private String assignRouteId(Object obj) {
            String str;
            if ((getDefaultRoute() == obj ? 1 : null) != null) {
                str = SystemMediaRouteProvider.DEFAULT_ROUTE_ID;
            } else {
                str = String.format(Locale.US, "ROUTE_%08x", new Object[]{Integer.valueOf(getRouteName(obj).hashCode())});
            }
            if (findSystemRouteRecordByDescriptorId(str) < 0) {
                return str;
            }
            int i = 2;
            while (true) {
                String format = String.format(Locale.US, "%s_%d", new Object[]{str, Integer.valueOf(i)});
                if (findSystemRouteRecordByDescriptorId(format) < 0) {
                    return format;
                }
                i++;
            }
        }

        public void onRouteRemoved(Object obj) {
            if (getUserRouteRecord(obj) == null) {
                int findSystemRouteRecord = findSystemRouteRecord(obj);
                if (findSystemRouteRecord >= 0) {
                    this.mSystemRouteRecords.remove(findSystemRouteRecord);
                    publishRoutes();
                }
            }
        }

        public void onRouteChanged(Object obj) {
            if (getUserRouteRecord(obj) == null) {
                int findSystemRouteRecord = findSystemRouteRecord(obj);
                if (findSystemRouteRecord >= 0) {
                    updateSystemRouteDescriptor((SystemRouteRecord) this.mSystemRouteRecords.get(findSystemRouteRecord));
                    publishRoutes();
                }
            }
        }

        public void onRouteVolumeChanged(Object obj) {
            if (getUserRouteRecord(obj) == null) {
                int findSystemRouteRecord = findSystemRouteRecord(obj);
                if (findSystemRouteRecord >= 0) {
                    SystemRouteRecord systemRouteRecord = (SystemRouteRecord) this.mSystemRouteRecords.get(findSystemRouteRecord);
                    int volume = MediaRouterJellybean.RouteInfo.getVolume(obj);
                    if (volume != systemRouteRecord.mRouteDescriptor.getVolume()) {
                        systemRouteRecord.mRouteDescriptor = new Builder(systemRouteRecord.mRouteDescriptor).setVolume(volume).build();
                        publishRoutes();
                    }
                }
            }
        }

        public void onRouteSelected(int i, Object obj) {
            if (obj == MediaRouterJellybean.getSelectedRoute(this.mRouterObj, 8388611)) {
                UserRouteRecord userRouteRecord = getUserRouteRecord(obj);
                if (userRouteRecord != null) {
                    userRouteRecord.mRoute.select();
                } else {
                    i = findSystemRouteRecord(obj);
                    if (i >= 0) {
                        RouteInfo systemRouteByDescriptorId = this.mSyncCallback.getSystemRouteByDescriptorId(((SystemRouteRecord) this.mSystemRouteRecords.get(i)).mRouteDescriptorId);
                        if (systemRouteByDescriptorId != null) {
                            systemRouteByDescriptorId.select();
                        }
                    }
                }
            }
        }

        public void onVolumeSetRequest(Object obj, int i) {
            UserRouteRecord userRouteRecord = getUserRouteRecord(obj);
            if (userRouteRecord != null) {
                userRouteRecord.mRoute.requestSetVolume(i);
            }
        }

        public void onVolumeUpdateRequest(Object obj, int i) {
            UserRouteRecord userRouteRecord = getUserRouteRecord(obj);
            if (userRouteRecord != null) {
                userRouteRecord.mRoute.requestUpdateVolume(i);
            }
        }

        public void onSyncRouteAdded(RouteInfo routeInfo) {
            if (routeInfo.getProviderInstance() != this) {
                Object createUserRoute = MediaRouterJellybean.createUserRoute(this.mRouterObj, this.mUserRouteCategoryObj);
                UserRouteRecord userRouteRecord = new UserRouteRecord(routeInfo, createUserRoute);
                MediaRouterJellybean.RouteInfo.setTag(createUserRoute, userRouteRecord);
                UserRouteInfo.setVolumeCallback(createUserRoute, this.mVolumeCallbackObj);
                updateUserRouteProperties(userRouteRecord);
                this.mUserRouteRecords.add(userRouteRecord);
                MediaRouterJellybean.addUserRoute(this.mRouterObj, createUserRoute);
                return;
            }
            int findSystemRouteRecord = findSystemRouteRecord(MediaRouterJellybean.getSelectedRoute(this.mRouterObj, 8388611));
            if (findSystemRouteRecord >= 0 && ((SystemRouteRecord) this.mSystemRouteRecords.get(findSystemRouteRecord)).mRouteDescriptorId.equals(routeInfo.getDescriptorId())) {
                routeInfo.select();
            }
        }

        public void onSyncRouteRemoved(RouteInfo routeInfo) {
            if (routeInfo.getProviderInstance() != this) {
                int findUserRouteRecord = findUserRouteRecord(routeInfo);
                if (findUserRouteRecord >= 0) {
                    UserRouteRecord userRouteRecord = (UserRouteRecord) this.mUserRouteRecords.remove(findUserRouteRecord);
                    MediaRouterJellybean.RouteInfo.setTag(userRouteRecord.mRouteObj, null);
                    UserRouteInfo.setVolumeCallback(userRouteRecord.mRouteObj, null);
                    MediaRouterJellybean.removeUserRoute(this.mRouterObj, userRouteRecord.mRouteObj);
                }
            }
        }

        public void onSyncRouteChanged(RouteInfo routeInfo) {
            if (routeInfo.getProviderInstance() != this) {
                int findUserRouteRecord = findUserRouteRecord(routeInfo);
                if (findUserRouteRecord >= 0) {
                    updateUserRouteProperties((UserRouteRecord) this.mUserRouteRecords.get(findUserRouteRecord));
                }
            }
        }

        public void onSyncRouteSelected(RouteInfo routeInfo) {
            if (routeInfo.isSelected()) {
                int findUserRouteRecord;
                if (routeInfo.getProviderInstance() != this) {
                    findUserRouteRecord = findUserRouteRecord(routeInfo);
                    if (findUserRouteRecord >= 0) {
                        selectRoute(((UserRouteRecord) this.mUserRouteRecords.get(findUserRouteRecord)).mRouteObj);
                    }
                } else {
                    findUserRouteRecord = findSystemRouteRecordByDescriptorId(routeInfo.getDescriptorId());
                    if (findUserRouteRecord >= 0) {
                        selectRoute(((SystemRouteRecord) this.mSystemRouteRecords.get(findUserRouteRecord)).mRouteObj);
                    }
                }
            }
        }

        /* Access modifiers changed, original: protected */
        public void publishRoutes() {
            MediaRouteProviderDescriptor.Builder builder = new MediaRouteProviderDescriptor.Builder();
            int size = this.mSystemRouteRecords.size();
            for (int i = 0; i < size; i++) {
                builder.addRoute(((SystemRouteRecord) this.mSystemRouteRecords.get(i)).mRouteDescriptor);
            }
            setDescriptor(builder.build());
        }

        /* Access modifiers changed, original: protected */
        public int findSystemRouteRecord(Object obj) {
            int size = this.mSystemRouteRecords.size();
            for (int i = 0; i < size; i++) {
                if (((SystemRouteRecord) this.mSystemRouteRecords.get(i)).mRouteObj == obj) {
                    return i;
                }
            }
            return -1;
        }

        /* Access modifiers changed, original: protected */
        public int findSystemRouteRecordByDescriptorId(String str) {
            int size = this.mSystemRouteRecords.size();
            for (int i = 0; i < size; i++) {
                if (((SystemRouteRecord) this.mSystemRouteRecords.get(i)).mRouteDescriptorId.equals(str)) {
                    return i;
                }
            }
            return -1;
        }

        /* Access modifiers changed, original: protected */
        public int findUserRouteRecord(RouteInfo routeInfo) {
            int size = this.mUserRouteRecords.size();
            for (int i = 0; i < size; i++) {
                if (((UserRouteRecord) this.mUserRouteRecords.get(i)).mRoute == routeInfo) {
                    return i;
                }
            }
            return -1;
        }

        /* Access modifiers changed, original: protected */
        public UserRouteRecord getUserRouteRecord(Object obj) {
            obj = MediaRouterJellybean.RouteInfo.getTag(obj);
            return obj instanceof UserRouteRecord ? (UserRouteRecord) obj : null;
        }

        /* Access modifiers changed, original: protected */
        public void updateSystemRouteDescriptor(SystemRouteRecord systemRouteRecord) {
            Builder builder = new Builder(systemRouteRecord.mRouteDescriptorId, getRouteName(systemRouteRecord.mRouteObj));
            onBuildSystemRouteDescriptor(systemRouteRecord, builder);
            systemRouteRecord.mRouteDescriptor = builder.build();
        }

        /* Access modifiers changed, original: protected */
        public String getRouteName(Object obj) {
            CharSequence name = MediaRouterJellybean.RouteInfo.getName(obj, getContext());
            return name != null ? name.toString() : "";
        }

        /* Access modifiers changed, original: protected */
        public void onBuildSystemRouteDescriptor(SystemRouteRecord systemRouteRecord, Builder builder) {
            int supportedTypes = MediaRouterJellybean.RouteInfo.getSupportedTypes(systemRouteRecord.mRouteObj);
            if ((supportedTypes & 1) != 0) {
                builder.addControlFilters(LIVE_AUDIO_CONTROL_FILTERS);
            }
            if ((supportedTypes & 2) != 0) {
                builder.addControlFilters(LIVE_VIDEO_CONTROL_FILTERS);
            }
            builder.setPlaybackType(MediaRouterJellybean.RouteInfo.getPlaybackType(systemRouteRecord.mRouteObj));
            builder.setPlaybackStream(MediaRouterJellybean.RouteInfo.getPlaybackStream(systemRouteRecord.mRouteObj));
            builder.setVolume(MediaRouterJellybean.RouteInfo.getVolume(systemRouteRecord.mRouteObj));
            builder.setVolumeMax(MediaRouterJellybean.RouteInfo.getVolumeMax(systemRouteRecord.mRouteObj));
            builder.setVolumeHandling(MediaRouterJellybean.RouteInfo.getVolumeHandling(systemRouteRecord.mRouteObj));
        }

        /* Access modifiers changed, original: protected */
        public void updateUserRouteProperties(UserRouteRecord userRouteRecord) {
            UserRouteInfo.setName(userRouteRecord.mRouteObj, userRouteRecord.mRoute.getName());
            UserRouteInfo.setPlaybackType(userRouteRecord.mRouteObj, userRouteRecord.mRoute.getPlaybackType());
            UserRouteInfo.setPlaybackStream(userRouteRecord.mRouteObj, userRouteRecord.mRoute.getPlaybackStream());
            UserRouteInfo.setVolume(userRouteRecord.mRouteObj, userRouteRecord.mRoute.getVolume());
            UserRouteInfo.setVolumeMax(userRouteRecord.mRouteObj, userRouteRecord.mRoute.getVolumeMax());
            UserRouteInfo.setVolumeHandling(userRouteRecord.mRouteObj, userRouteRecord.mRoute.getVolumeHandling());
        }

        /* Access modifiers changed, original: protected */
        public void updateCallback() {
            if (this.mCallbackRegistered) {
                this.mCallbackRegistered = false;
                MediaRouterJellybean.removeCallback(this.mRouterObj, this.mCallbackObj);
            }
            if (this.mRouteTypes != 0) {
                this.mCallbackRegistered = true;
                MediaRouterJellybean.addCallback(this.mRouterObj, this.mRouteTypes, this.mCallbackObj);
            }
        }

        /* Access modifiers changed, original: protected */
        public Object createCallbackObj() {
            return MediaRouterJellybean.createCallback(this);
        }

        /* Access modifiers changed, original: protected */
        public Object createVolumeCallbackObj() {
            return MediaRouterJellybean.createVolumeCallback(this);
        }

        /* Access modifiers changed, original: protected */
        public void selectRoute(Object obj) {
            if (this.mSelectRouteWorkaround == null) {
                this.mSelectRouteWorkaround = new SelectRouteWorkaround();
            }
            this.mSelectRouteWorkaround.selectRoute(this.mRouterObj, 8388611, obj);
        }

        /* Access modifiers changed, original: protected */
        public Object getDefaultRoute() {
            if (this.mGetDefaultRouteWorkaround == null) {
                this.mGetDefaultRouteWorkaround = new GetDefaultRouteWorkaround();
            }
            return this.mGetDefaultRouteWorkaround.getDefaultRoute(this.mRouterObj);
        }

        /* Access modifiers changed, original: protected */
        public Object getSystemRoute(RouteInfo routeInfo) {
            if (routeInfo == null) {
                return null;
            }
            int findSystemRouteRecordByDescriptorId = findSystemRouteRecordByDescriptorId(routeInfo.getDescriptorId());
            if (findSystemRouteRecordByDescriptorId >= 0) {
                return ((SystemRouteRecord) this.mSystemRouteRecords.get(findSystemRouteRecordByDescriptorId)).mRouteObj;
            }
            return null;
        }
    }

    static class LegacyImpl extends SystemMediaRouteProvider {
        private static final ArrayList<IntentFilter> CONTROL_FILTERS = new ArrayList();
        static final int PLAYBACK_STREAM = 3;
        final AudioManager mAudioManager;
        int mLastReportedVolume = -1;
        private final VolumeChangeReceiver mVolumeChangeReceiver;

        final class VolumeChangeReceiver extends BroadcastReceiver {
            public static final String EXTRA_VOLUME_STREAM_TYPE = "android.media.EXTRA_VOLUME_STREAM_TYPE";
            public static final String EXTRA_VOLUME_STREAM_VALUE = "android.media.EXTRA_VOLUME_STREAM_VALUE";
            public static final String VOLUME_CHANGED_ACTION = "android.media.VOLUME_CHANGED_ACTION";

            VolumeChangeReceiver() {
            }

            public void onReceive(Context context, Intent intent) {
                if (intent.getAction().equals(VOLUME_CHANGED_ACTION) && intent.getIntExtra(EXTRA_VOLUME_STREAM_TYPE, -1) == 3) {
                    int intExtra = intent.getIntExtra(EXTRA_VOLUME_STREAM_VALUE, -1);
                    if (intExtra >= 0 && intExtra != LegacyImpl.this.mLastReportedVolume) {
                        LegacyImpl.this.publishRoutes();
                    }
                }
            }
        }

        final class DefaultRouteController extends RouteController {
            DefaultRouteController() {
            }

            public void onSetVolume(int i) {
                LegacyImpl.this.mAudioManager.setStreamVolume(3, i, 0);
                LegacyImpl.this.publishRoutes();
            }

            public void onUpdateVolume(int i) {
                int streamVolume = LegacyImpl.this.mAudioManager.getStreamVolume(3);
                if (Math.min(LegacyImpl.this.mAudioManager.getStreamMaxVolume(3), Math.max(0, i + streamVolume)) != streamVolume) {
                    LegacyImpl.this.mAudioManager.setStreamVolume(3, streamVolume, 0);
                }
                LegacyImpl.this.publishRoutes();
            }
        }

        static {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addCategory(MediaControlIntent.CATEGORY_LIVE_AUDIO);
            intentFilter.addCategory(MediaControlIntent.CATEGORY_LIVE_VIDEO);
            CONTROL_FILTERS.add(intentFilter);
        }

        public LegacyImpl(Context context) {
            super(context);
            this.mAudioManager = (AudioManager) context.getSystemService("audio");
            this.mVolumeChangeReceiver = new VolumeChangeReceiver();
            context.registerReceiver(this.mVolumeChangeReceiver, new IntentFilter(VolumeChangeReceiver.VOLUME_CHANGED_ACTION));
            publishRoutes();
        }

        /* Access modifiers changed, original: 0000 */
        public void publishRoutes() {
            Resources resources = getContext().getResources();
            int streamMaxVolume = this.mAudioManager.getStreamMaxVolume(3);
            this.mLastReportedVolume = this.mAudioManager.getStreamVolume(3);
            setDescriptor(new MediaRouteProviderDescriptor.Builder().addRoute(new Builder(SystemMediaRouteProvider.DEFAULT_ROUTE_ID, resources.getString(R.string.mr_system_route_name)).addControlFilters(CONTROL_FILTERS).setPlaybackStream(3).setPlaybackType(0).setVolumeHandling(1).setVolumeMax(streamMaxVolume).setVolume(this.mLastReportedVolume).build()).build());
        }

        public RouteController onCreateRouteController(String str) {
            return str.equals(SystemMediaRouteProvider.DEFAULT_ROUTE_ID) ? new DefaultRouteController() : null;
        }
    }

    private static class JellybeanMr1Impl extends JellybeanImpl implements MediaRouterJellybeanMr1.Callback {
        private ActiveScanWorkaround mActiveScanWorkaround;
        private IsConnectingWorkaround mIsConnectingWorkaround;

        public JellybeanMr1Impl(Context context, SyncCallback syncCallback) {
            super(context, syncCallback);
        }

        public void onRoutePresentationDisplayChanged(Object obj) {
            int findSystemRouteRecord = findSystemRouteRecord(obj);
            if (findSystemRouteRecord >= 0) {
                SystemRouteRecord systemRouteRecord = (SystemRouteRecord) this.mSystemRouteRecords.get(findSystemRouteRecord);
                Display presentationDisplay = MediaRouterJellybeanMr1.RouteInfo.getPresentationDisplay(obj);
                int displayId = presentationDisplay != null ? presentationDisplay.getDisplayId() : -1;
                if (displayId != systemRouteRecord.mRouteDescriptor.getPresentationDisplayId()) {
                    systemRouteRecord.mRouteDescriptor = new Builder(systemRouteRecord.mRouteDescriptor).setPresentationDisplayId(displayId).build();
                    publishRoutes();
                }
            }
        }

        /* Access modifiers changed, original: protected */
        public void onBuildSystemRouteDescriptor(SystemRouteRecord systemRouteRecord, Builder builder) {
            super.onBuildSystemRouteDescriptor(systemRouteRecord, builder);
            if (!MediaRouterJellybeanMr1.RouteInfo.isEnabled(systemRouteRecord.mRouteObj)) {
                builder.setEnabled(false);
            }
            if (isConnecting(systemRouteRecord)) {
                builder.setConnecting(true);
            }
            Display presentationDisplay = MediaRouterJellybeanMr1.RouteInfo.getPresentationDisplay(systemRouteRecord.mRouteObj);
            if (presentationDisplay != null) {
                builder.setPresentationDisplayId(presentationDisplay.getDisplayId());
            }
        }

        /* Access modifiers changed, original: protected */
        public void updateCallback() {
            super.updateCallback();
            if (this.mActiveScanWorkaround == null) {
                this.mActiveScanWorkaround = new ActiveScanWorkaround(getContext(), getHandler());
            }
            this.mActiveScanWorkaround.setActiveScanRouteTypes(this.mActiveScan ? this.mRouteTypes : 0);
        }

        /* Access modifiers changed, original: protected */
        public Object createCallbackObj() {
            return MediaRouterJellybeanMr1.createCallback(this);
        }

        /* Access modifiers changed, original: protected */
        public boolean isConnecting(SystemRouteRecord systemRouteRecord) {
            if (this.mIsConnectingWorkaround == null) {
                this.mIsConnectingWorkaround = new IsConnectingWorkaround();
            }
            return this.mIsConnectingWorkaround.isConnecting(systemRouteRecord.mRouteObj);
        }
    }

    private static class JellybeanMr2Impl extends JellybeanMr1Impl {
        public JellybeanMr2Impl(Context context, SyncCallback syncCallback) {
            super(context, syncCallback);
        }

        /* Access modifiers changed, original: protected */
        public void onBuildSystemRouteDescriptor(SystemRouteRecord systemRouteRecord, Builder builder) {
            super.onBuildSystemRouteDescriptor(systemRouteRecord, builder);
            CharSequence description = MediaRouterJellybeanMr2.RouteInfo.getDescription(systemRouteRecord.mRouteObj);
            if (description != null) {
                builder.setDescription(description.toString());
            }
        }

        /* Access modifiers changed, original: protected */
        public void selectRoute(Object obj) {
            MediaRouterJellybean.selectRoute(this.mRouterObj, 8388611, obj);
        }

        /* Access modifiers changed, original: protected */
        public Object getDefaultRoute() {
            return MediaRouterJellybeanMr2.getDefaultRoute(this.mRouterObj);
        }

        /* Access modifiers changed, original: protected */
        public void updateUserRouteProperties(UserRouteRecord userRouteRecord) {
            super.updateUserRouteProperties(userRouteRecord);
            MediaRouterJellybeanMr2.UserRouteInfo.setDescription(userRouteRecord.mRouteObj, userRouteRecord.mRoute.getDescription());
        }

        /* Access modifiers changed, original: protected */
        public void updateCallback() {
            if (this.mCallbackRegistered) {
                MediaRouterJellybean.removeCallback(this.mRouterObj, this.mCallbackObj);
            }
            this.mCallbackRegistered = true;
            MediaRouterJellybeanMr2.addCallback(this.mRouterObj, this.mRouteTypes, this.mCallbackObj, this.mActiveScan | 2);
        }

        /* Access modifiers changed, original: protected */
        public boolean isConnecting(SystemRouteRecord systemRouteRecord) {
            return MediaRouterJellybeanMr2.RouteInfo.isConnecting(systemRouteRecord.mRouteObj);
        }
    }

    private static class Api24Impl extends JellybeanMr2Impl {
        public Api24Impl(Context context, SyncCallback syncCallback) {
            super(context, syncCallback);
        }

        /* Access modifiers changed, original: protected */
        public void onBuildSystemRouteDescriptor(SystemRouteRecord systemRouteRecord, Builder builder) {
            super.onBuildSystemRouteDescriptor(systemRouteRecord, builder);
            builder.setDeviceType(MediaRouterApi24.RouteInfo.getDeviceType(systemRouteRecord.mRouteObj));
        }
    }

    /* Access modifiers changed, original: protected */
    public Object getDefaultRoute() {
        return null;
    }

    /* Access modifiers changed, original: protected */
    public Object getSystemRoute(RouteInfo routeInfo) {
        return null;
    }

    public void onSyncRouteAdded(RouteInfo routeInfo) {
    }

    public void onSyncRouteChanged(RouteInfo routeInfo) {
    }

    public void onSyncRouteRemoved(RouteInfo routeInfo) {
    }

    public void onSyncRouteSelected(RouteInfo routeInfo) {
    }

    protected SystemMediaRouteProvider(Context context) {
        super(context, new ProviderMetadata(new ComponentName(PACKAGE_NAME, SystemMediaRouteProvider.class.getName())));
    }

    public static SystemMediaRouteProvider obtain(Context context, SyncCallback syncCallback) {
        if (VERSION.SDK_INT >= 24) {
            return new Api24Impl(context, syncCallback);
        }
        if (VERSION.SDK_INT >= 18) {
            return new JellybeanMr2Impl(context, syncCallback);
        }
        if (VERSION.SDK_INT >= 17) {
            return new JellybeanMr1Impl(context, syncCallback);
        }
        if (VERSION.SDK_INT >= 16) {
            return new JellybeanImpl(context, syncCallback);
        }
        return new LegacyImpl(context);
    }
}
