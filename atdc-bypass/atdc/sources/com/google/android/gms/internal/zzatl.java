package com.google.android.gms.internal;

import com.google.android.gms.awareness.snapshot.TimeIntervalsResult;
import com.google.android.gms.awareness.state.TimeIntervals;
import com.google.android.gms.common.api.Status;

final class zzatl implements TimeIntervalsResult {
    private /* synthetic */ zzaud zzaok;

    zzatl(zzatk zzatk, zzaud zzaud) {
        this.zzaok = zzaud;
    }

    public final Status getStatus() {
        return this.zzaok.getStatus();
    }

    public final TimeIntervals getTimeIntervals() {
        return this.zzaok.zznb() == null ? null : this.zzaok.zznb().zzna();
    }
}
