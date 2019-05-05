package com.google.android.gms.internal;

import android.support.annotation.WorkerThread;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import java.util.ArrayList;

final class zzcul implements ce, Runnable {
    private /* synthetic */ zzcuf zzbHS;

    private zzcul(zzcuf zzcuf) {
        this.zzbHS = zzcuf;
    }

    /* synthetic */ zzcul(zzcuf zzcuf, zzcug zzcug) {
        this(zzcuf);
    }

    @WorkerThread
    public final void run() {
        zzbo.zzae(this.zzbHS.mState == 2);
        if (!zzcvs.zzCw().zzfG(this.zzbHS.zzbDw)) {
            String zzd = this.zzbHS.zzbDw;
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(zzd).length() + 24);
            stringBuilder.append("Refreshing container ");
            stringBuilder.append(zzd);
            stringBuilder.append("...");
            zzcvk.v(stringBuilder.toString());
            ArrayList arrayList = new ArrayList();
            arrayList.add(Integer.valueOf(0));
            this.zzbHS.zzbHK.zza(this.zzbHS.zzbDw, this.zzbHS.zzbHI, this.zzbHS.zzbHH, arrayList, this, this.zzbHS.zzbHO);
        }
    }

    public final void zza(cm cmVar) {
        if (cmVar.getStatus() == Status.zzaBm) {
            String zzd = this.zzbHS.zzbDw;
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(zzd).length() + 47);
            stringBuilder.append("Refreshed container ");
            stringBuilder.append(zzd);
            stringBuilder.append(". Reinitializing runtime...");
            zzcvk.v(stringBuilder.toString());
            this.zzbHS.zzbHL.execute(new zzcum(this.zzbHS, cmVar));
            return;
        }
        this.zzbHS.zzaj(this.zzbHS.zzbHO.zzAT());
    }
}
