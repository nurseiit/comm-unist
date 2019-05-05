package com.google.android.gms.internal;

import com.google.android.gms.awareness.snapshot.HeadphoneStateResult;
import com.google.android.gms.awareness.state.HeadphoneState;
import com.google.android.gms.common.api.Status;

final class zzatp implements HeadphoneStateResult {
    private /* synthetic */ zzaud zzaok;

    zzatp(zzato zzato, zzaud zzaud) {
        this.zzaok = zzaud;
    }

    public final HeadphoneState getHeadphoneState() {
        return this.zzaok.zznb() == null ? null : this.zzaok.zznb().zzmX();
    }

    public final Status getStatus() {
        return this.zzaok.getStatus();
    }
}
