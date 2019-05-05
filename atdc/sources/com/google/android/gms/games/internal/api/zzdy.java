package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.video.VideoCapabilities;
import com.google.android.gms.games.video.Videos.CaptureCapabilitiesResult;

final class zzdy implements CaptureCapabilitiesResult {
    private /* synthetic */ Status zzakB;

    zzdy(zzdx zzdx, Status status) {
        this.zzakB = status;
    }

    public final VideoCapabilities getCapabilities() {
        return null;
    }

    public final Status getStatus() {
        return this.zzakB;
    }
}
