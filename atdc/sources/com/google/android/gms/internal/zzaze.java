package com.google.android.gms.internal;

import android.view.Display;
import com.google.android.gms.cast.CastRemoteDisplay.CastRemoteDisplaySessionResult;
import com.google.android.gms.common.api.Status;

final class zzaze implements CastRemoteDisplaySessionResult {
    private final Status mStatus;
    private final Display zzPO;

    public zzaze(Display display) {
        this.mStatus = Status.zzaBm;
        this.zzPO = display;
    }

    public zzaze(Status status) {
        this.mStatus = status;
        this.zzPO = null;
    }

    public final Display getPresentationDisplay() {
        return this.zzPO;
    }

    public final Status getStatus() {
        return this.mStatus;
    }
}
