package com.google.android.gms.cast;

import android.support.v7.media.MediaRouter;
import android.support.v7.media.MediaRouter.Callback;
import android.support.v7.media.MediaRouter.RouteInfo;

final class zzp extends Callback {
    private /* synthetic */ CastRemoteDisplayLocalService zzapJ;

    zzp(CastRemoteDisplayLocalService castRemoteDisplayLocalService) {
        this.zzapJ = castRemoteDisplayLocalService;
    }

    public final void onRouteUnselected(MediaRouter mediaRouter, RouteInfo routeInfo) {
        CastRemoteDisplayLocalService castRemoteDisplayLocalService;
        String str;
        this.zzapJ.zzbp("onRouteUnselected");
        if (this.zzapJ.zzapB == null) {
            castRemoteDisplayLocalService = this.zzapJ;
            str = "onRouteUnselected, no device was selected";
        } else if (CastDevice.getFromBundle(routeInfo.getExtras()).getDeviceId().equals(this.zzapJ.zzapB.getDeviceId())) {
            CastRemoteDisplayLocalService.stopService();
            return;
        } else {
            castRemoteDisplayLocalService = this.zzapJ;
            str = "onRouteUnselected, device does not match";
        }
        castRemoteDisplayLocalService.zzbp(str);
    }
}
