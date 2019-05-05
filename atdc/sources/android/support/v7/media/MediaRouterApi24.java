package android.support.v7.media;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;

@TargetApi(24)
@RequiresApi(24)
final class MediaRouterApi24 {

    public static final class RouteInfo {
        public static int getDeviceType(Object obj) {
            return ((android.media.MediaRouter.RouteInfo) obj).getDeviceType();
        }
    }

    MediaRouterApi24() {
    }
}
