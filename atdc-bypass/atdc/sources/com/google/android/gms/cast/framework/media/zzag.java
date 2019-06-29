package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzayt;
import org.json.JSONObject;

final class zzag implements zzayt {
    private /* synthetic */ zzb zzauA;

    zzag(zzb zzb) {
        this.zzauA = zzb;
    }

    public final void zza(long j, int i, Object obj) {
        this.zzauA.setResult(new zzc(new Status(i), obj instanceof JSONObject ? (JSONObject) obj : null));
    }

    public final void zzx(long j) {
        this.zzauA.setResult((MediaChannelResult) this.zzauA.zzb(new Status(2103)));
    }
}
