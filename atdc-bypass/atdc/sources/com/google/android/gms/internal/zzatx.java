package com.google.android.gms.internal;

import com.google.android.gms.awareness.snapshot.BeaconStateResult;
import com.google.android.gms.awareness.state.BeaconState;
import com.google.android.gms.common.api.Status;

final class zzatx implements BeaconStateResult {
    private /* synthetic */ zzaud zzaok;

    zzatx(zzatw zzatw, zzaud zzaud) {
        this.zzaok = zzaud;
    }

    public final BeaconState getBeaconState() {
        return this.zzaok.zznb() == null ? null : this.zzaok.zznb().zzmW();
    }

    public final Status getStatus() {
        return this.zzaok.getStatus();
    }
}
