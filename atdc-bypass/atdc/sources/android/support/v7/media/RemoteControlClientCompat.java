package android.support.v7.media;

import android.content.Context;
import android.os.Build.VERSION;
import android.support.v7.media.MediaRouterJellybean.UserRouteInfo;
import java.lang.ref.WeakReference;

abstract class RemoteControlClientCompat {
    protected final Context mContext;
    protected final Object mRcc;
    protected VolumeCallback mVolumeCallback;

    public static final class PlaybackInfo {
        public int playbackStream = 3;
        public int playbackType = 1;
        public int volume;
        public int volumeHandling = 0;
        public int volumeMax;
    }

    public interface VolumeCallback {
        void onVolumeSetRequest(int i);

        void onVolumeUpdateRequest(int i);
    }

    static class JellybeanImpl extends RemoteControlClientCompat {
        private boolean mRegistered;
        private final Object mRouterObj;
        private final Object mUserRouteCategoryObj = MediaRouterJellybean.createRouteCategory(this.mRouterObj, "", false);
        private final Object mUserRouteObj = MediaRouterJellybean.createUserRoute(this.mRouterObj, this.mUserRouteCategoryObj);

        private static final class VolumeCallbackWrapper implements android.support.v7.media.MediaRouterJellybean.VolumeCallback {
            private final WeakReference<JellybeanImpl> mImplWeak;

            public VolumeCallbackWrapper(JellybeanImpl jellybeanImpl) {
                this.mImplWeak = new WeakReference(jellybeanImpl);
            }

            public void onVolumeUpdateRequest(Object obj, int i) {
                JellybeanImpl jellybeanImpl = (JellybeanImpl) this.mImplWeak.get();
                if (jellybeanImpl != null && jellybeanImpl.mVolumeCallback != null) {
                    jellybeanImpl.mVolumeCallback.onVolumeUpdateRequest(i);
                }
            }

            public void onVolumeSetRequest(Object obj, int i) {
                JellybeanImpl jellybeanImpl = (JellybeanImpl) this.mImplWeak.get();
                if (jellybeanImpl != null && jellybeanImpl.mVolumeCallback != null) {
                    jellybeanImpl.mVolumeCallback.onVolumeSetRequest(i);
                }
            }
        }

        public JellybeanImpl(Context context, Object obj) {
            super(context, obj);
            this.mRouterObj = MediaRouterJellybean.getMediaRouter(context);
        }

        public void setPlaybackInfo(PlaybackInfo playbackInfo) {
            UserRouteInfo.setVolume(this.mUserRouteObj, playbackInfo.volume);
            UserRouteInfo.setVolumeMax(this.mUserRouteObj, playbackInfo.volumeMax);
            UserRouteInfo.setVolumeHandling(this.mUserRouteObj, playbackInfo.volumeHandling);
            UserRouteInfo.setPlaybackStream(this.mUserRouteObj, playbackInfo.playbackStream);
            UserRouteInfo.setPlaybackType(this.mUserRouteObj, playbackInfo.playbackType);
            if (!this.mRegistered) {
                this.mRegistered = true;
                UserRouteInfo.setVolumeCallback(this.mUserRouteObj, MediaRouterJellybean.createVolumeCallback(new VolumeCallbackWrapper(this)));
                UserRouteInfo.setRemoteControlClient(this.mUserRouteObj, this.mRcc);
            }
        }
    }

    static class LegacyImpl extends RemoteControlClientCompat {
        public LegacyImpl(Context context, Object obj) {
            super(context, obj);
        }
    }

    public void setPlaybackInfo(PlaybackInfo playbackInfo) {
    }

    protected RemoteControlClientCompat(Context context, Object obj) {
        this.mContext = context;
        this.mRcc = obj;
    }

    public static RemoteControlClientCompat obtain(Context context, Object obj) {
        if (VERSION.SDK_INT >= 16) {
            return new JellybeanImpl(context, obj);
        }
        return new LegacyImpl(context, obj);
    }

    public Object getRemoteControlClient() {
        return this.mRcc;
    }

    public void setVolumeCallback(VolumeCallback volumeCallback) {
        this.mVolumeCallback = volumeCallback;
    }
}
