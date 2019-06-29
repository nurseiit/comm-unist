package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.fitness.result.DataReadResult;

final class zzbyj extends zzbvw {
    private final zzbaz<DataReadResult> zzaIz;
    private int zzaVQ;
    private DataReadResult zzaVR;

    private zzbyj(zzbaz<DataReadResult> zzbaz) {
        this.zzaVQ = 0;
        this.zzaVR = null;
        this.zzaIz = zzbaz;
    }

    /* synthetic */ zzbyj(zzbaz zzbaz, zzbyb zzbyb) {
        this(zzbaz);
    }

    public final void zza(DataReadResult dataReadResult) {
        synchronized (this) {
            if (Log.isLoggable("Fitness", 2)) {
                int i = this.zzaVQ;
                StringBuilder stringBuilder = new StringBuilder(33);
                stringBuilder.append("Received batch result ");
                stringBuilder.append(i);
                Log.v("Fitness", stringBuilder.toString());
            }
            if (this.zzaVR == null) {
                this.zzaVR = dataReadResult;
            } else {
                this.zzaVR.zzb(dataReadResult);
            }
            this.zzaVQ++;
            if (this.zzaVQ == this.zzaVR.zztX()) {
                this.zzaIz.setResult(this.zzaVR);
            }
        }
    }
}
