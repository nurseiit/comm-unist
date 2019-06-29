package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.location.LocationListener;

final class zzcdi implements zzbdz<LocationListener> {
    private /* synthetic */ Location zzbiR;

    zzcdi(zzcdh zzcdh, Location location) {
        this.zzbiR = location;
    }

    public final void zzpT() {
    }

    public final /* synthetic */ void zzq(Object obj) {
        ((LocationListener) obj).onLocationChanged(this.zzbiR);
    }
}
