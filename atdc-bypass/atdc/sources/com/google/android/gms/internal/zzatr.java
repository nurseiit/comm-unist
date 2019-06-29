package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.awareness.snapshot.LocationResult;
import com.google.android.gms.common.api.Status;

final class zzatr implements LocationResult {
    private /* synthetic */ zzaud zzaok;

    zzatr(zzatq zzatq, zzaud zzaud) {
        this.zzaok = zzaud;
    }

    public final Location getLocation() {
        return this.zzaok.zznb() == null ? null : this.zzaok.zznb().getLocation();
    }

    public final Status getStatus() {
        return this.zzaok.getStatus();
    }
}
