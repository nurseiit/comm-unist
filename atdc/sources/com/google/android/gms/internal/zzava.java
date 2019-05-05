package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.v7.media.MediaRouter;
import android.support.v7.media.MediaRouter.Callback;
import android.support.v7.media.MediaRouter.RouteInfo;
import com.google.android.gms.common.internal.zzbo;

public final class zzava extends Callback {
    private static final zzayo zzarK = new zzayo("MediaRouterCallback");
    private final zzauq zzasN;

    public zzava(zzauq zzauq) {
        this.zzasN = (zzauq) zzbo.zzu(zzauq);
    }

    public final void onRouteAdded(MediaRouter mediaRouter, RouteInfo routeInfo) {
        try {
            this.zzasN.zzc(routeInfo.getId(), routeInfo.getExtras());
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "onRouteAdded", zzauq.class.getSimpleName());
        }
    }

    public final void onRouteChanged(MediaRouter mediaRouter, RouteInfo routeInfo) {
        try {
            this.zzasN.zzd(routeInfo.getId(), routeInfo.getExtras());
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "onRouteChanged", zzauq.class.getSimpleName());
        }
    }

    public final void onRouteRemoved(MediaRouter mediaRouter, RouteInfo routeInfo) {
        try {
            this.zzasN.zze(routeInfo.getId(), routeInfo.getExtras());
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "onRouteRemoved", zzauq.class.getSimpleName());
        }
    }

    public final void onRouteSelected(MediaRouter mediaRouter, RouteInfo routeInfo) {
        try {
            this.zzasN.zzf(routeInfo.getId(), routeInfo.getExtras());
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "onRouteSelected", zzauq.class.getSimpleName());
        }
    }

    public final void onRouteUnselected(MediaRouter mediaRouter, RouteInfo routeInfo, int i) {
        try {
            this.zzasN.zza(routeInfo.getId(), routeInfo.getExtras(), i);
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "onRouteUnselected", zzauq.class.getSimpleName());
        }
    }
}
