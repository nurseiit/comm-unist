package com.google.android.gms.internal;

import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationResult;

final class zzcdf implements zzbdz<LocationCallback> {
    private /* synthetic */ LocationResult zzbiP;

    zzcdf(zzcde zzcde, LocationResult locationResult) {
        this.zzbiP = locationResult;
    }

    public final void zzpT() {
    }

    public final /* synthetic */ void zzq(Object obj) {
        ((LocationCallback) obj).onLocationResult(this.zzbiP);
    }
}
