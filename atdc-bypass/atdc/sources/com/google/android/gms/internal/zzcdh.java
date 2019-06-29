package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.zzn;

final class zzcdh extends zzn {
    private final zzbdw<LocationListener> zzaEU;

    zzcdh(zzbdw<LocationListener> zzbdw) {
        this.zzaEU = zzbdw;
    }

    public final synchronized void onLocationChanged(Location location) {
        this.zzaEU.zza(new zzcdi(this, location));
    }

    public final synchronized void release() {
        this.zzaEU.clear();
    }
}
