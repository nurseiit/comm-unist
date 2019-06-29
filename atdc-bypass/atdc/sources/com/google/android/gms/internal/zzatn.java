package com.google.android.gms.internal;

import com.google.android.gms.awareness.snapshot.DetectedActivityResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.ActivityRecognitionResult;

final class zzatn implements DetectedActivityResult {
    private /* synthetic */ zzaud zzaok;

    zzatn(zzatm zzatm, zzaud zzaud) {
        this.zzaok = zzaud;
    }

    public final ActivityRecognitionResult getActivityRecognitionResult() {
        return this.zzaok.zznb() == null ? null : this.zzaok.zznb().getActivityRecognitionResult();
    }

    public final Status getStatus() {
        return this.zzaok.getStatus();
    }
}
