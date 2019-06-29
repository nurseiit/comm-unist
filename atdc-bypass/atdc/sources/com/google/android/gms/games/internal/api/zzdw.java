package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.video.Videos.CaptureAvailableResult;

final class zzdw implements CaptureAvailableResult {
    private /* synthetic */ Status zzakB;

    zzdw(zzdv zzdv, Status status) {
        this.zzakB = status;
    }

    public final Status getStatus() {
        return this.zzakB;
    }

    public final boolean isAvailable() {
        return false;
    }
}
