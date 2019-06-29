package com.google.android.gms.cast;

import com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult;
import com.google.android.gms.common.api.Status;
import org.json.JSONObject;

final class zzbh implements MediaChannelResult {
    private /* synthetic */ Status zzakB;

    zzbh(zzb zzb, Status status) {
        this.zzakB = status;
    }

    public final JSONObject getCustomData() {
        return null;
    }

    public final Status getStatus() {
        return this.zzakB;
    }
}
