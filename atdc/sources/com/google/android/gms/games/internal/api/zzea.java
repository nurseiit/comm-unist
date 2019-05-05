package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.video.CaptureState;
import com.google.android.gms.games.video.Videos.CaptureStateResult;

final class zzea implements CaptureStateResult {
    private /* synthetic */ Status zzakB;

    zzea(zzdz zzdz, Status status) {
        this.zzakB = status;
    }

    public final CaptureState getCaptureState() {
        return null;
    }

    public final Status getStatus() {
        return this.zzakB;
    }
}
