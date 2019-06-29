package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult;
import com.google.android.gms.common.api.Status;
import org.json.JSONObject;

final class zzah implements MediaChannelResult {
    private /* synthetic */ Status zzakB;

    zzah(zzb zzb, Status status) {
        this.zzakB = status;
    }

    public final JSONObject getCustomData() {
        return null;
    }

    public final Status getStatus() {
        return this.zzakB;
    }
}
