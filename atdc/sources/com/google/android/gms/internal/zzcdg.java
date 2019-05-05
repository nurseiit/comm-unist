package com.google.android.gms.internal;

import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;

final class zzcdg implements zzbdz<LocationCallback> {
    private /* synthetic */ LocationAvailability zzbiQ;

    zzcdg(zzcde zzcde, LocationAvailability locationAvailability) {
        this.zzbiQ = locationAvailability;
    }

    public final void zzpT() {
    }

    public final /* synthetic */ void zzq(Object obj) {
        ((LocationCallback) obj).onLocationAvailability(this.zzbiQ);
    }
}
