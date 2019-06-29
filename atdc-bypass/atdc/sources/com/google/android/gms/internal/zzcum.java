package com.google.android.gms.internal;

import android.support.annotation.WorkerThread;

final class zzcum implements Runnable {
    private /* synthetic */ zzcuf zzbHS;
    private final cm zzbHU;

    zzcum(zzcuf zzcuf, cm cmVar) {
        this.zzbHS = zzcuf;
        this.zzbHU = cmVar;
    }

    @WorkerThread
    public final void run() {
        zzcuf zzcuf;
        long max;
        db zzCV = this.zzbHU.zzCQ().zzCV();
        dj zzCR = this.zzbHU.zzCR();
        Object obj = this.zzbHS.zzbHP == null ? 1 : null;
        this.zzbHS.zzbHP = this.zzbHS.zzbHJ.zza(zzCV, zzCR);
        this.zzbHS.mState = 2;
        String zzd = this.zzbHS.zzbDw;
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(zzd).length() + 48);
        stringBuilder.append("Container ");
        stringBuilder.append(zzd);
        stringBuilder.append(" loaded during runtime initialization.");
        zzcvk.v(stringBuilder.toString());
        if (this.zzbHS.zzbHQ != null) {
            for (zzcut zzcut : this.zzbHS.zzbHQ) {
                String str = "Evaluating tags for pending event ";
                String valueOf = String.valueOf(zzcut.zzCk());
                zzcvk.v(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                this.zzbHS.zzbHP.zzb(zzcut);
            }
            this.zzbHS.zzbHQ = null;
        }
        this.zzbHS.zzbHP.dispatch();
        zzd = "Runtime initialized successfully for container ";
        String valueOf2 = String.valueOf(this.zzbHS.zzbDw);
        zzcvk.v(valueOf2.length() != 0 ? zzd.concat(valueOf2) : new String(zzd));
        long zzCW = this.zzbHU.zzCQ().zzCW() + this.zzbHS.zzbHO.zzAS();
        if (obj == null || !this.zzbHS.zzbHR || this.zzbHU.getSource() != 1 || zzCW >= this.zzbHS.zzvw.currentTimeMillis()) {
            zzcuf = this.zzbHS;
            max = Math.max(900000, zzCW - this.zzbHS.zzvw.currentTimeMillis());
        } else {
            zzcuf = this.zzbHS;
            max = this.zzbHS.zzbHO.zzCi();
        }
        zzcuf.zzaj(max);
    }
}
