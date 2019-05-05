package com.google.android.gms.ads.internal.overlay;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.internal.zzagz;
import com.google.android.gms.internal.zzmo;
import com.google.android.gms.internal.zzzn;
import java.util.concurrent.TimeUnit;

@zzzn
@TargetApi(14)
public final class zzak {
    private final long zzPI = TimeUnit.MILLISECONDS.toNanos(((Long) zzbs.zzbL().zzd(zzmo.zzCx)).longValue());
    private long zzPJ;
    private boolean zzPK = true;

    zzak() {
    }

    public final void zza(SurfaceTexture surfaceTexture, zzx zzx) {
        if (zzx != null) {
            long timestamp = surfaceTexture.getTimestamp();
            if (this.zzPK || Math.abs(timestamp - this.zzPJ) >= this.zzPI) {
                this.zzPK = false;
                this.zzPJ = timestamp;
                zzagz.zzZr.post(new zzal(this, zzx));
            }
        }
    }

    public final void zzfU() {
        this.zzPK = true;
    }
}
