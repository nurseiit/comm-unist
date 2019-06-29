package com.google.android.gms.internal;

import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.zzk;

final class zzcde extends zzk {
    private final zzbdw<LocationCallback> zzaEU;

    zzcde(zzbdw<LocationCallback> zzbdw) {
        this.zzaEU = zzbdw;
    }

    public final void onLocationAvailability(LocationAvailability locationAvailability) {
        this.zzaEU.zza(new zzcdg(this, locationAvailability));
    }

    public final void onLocationResult(LocationResult locationResult) {
        this.zzaEU.zza(new zzcdf(this, locationResult));
    }

    public final synchronized void release() {
        this.zzaEU.clear();
    }
}
