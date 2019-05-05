package com.google.android.gms.internal;

import android.support.annotation.WorkerThread;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import java.util.ArrayList;

final class zzcuj implements ce, Runnable {
    private /* synthetic */ zzcuf zzbHS;

    private zzcuj(zzcuf zzcuf) {
        this.zzbHS = zzcuf;
    }

    /* synthetic */ zzcuj(zzcuf zzcuf, zzcug zzcug) {
        this(zzcuf);
    }

    @WorkerThread
    public final void run() {
        Object valueOf;
        zzbo.zzae(this.zzbHS.mState == 1);
        ArrayList arrayList = new ArrayList();
        this.zzbHS.zzbHR = false;
        if (zzcvs.zzCw().zzfG(this.zzbHS.zzbDw)) {
            valueOf = Integer.valueOf(0);
        } else {
            this.zzbHS.zzbHR = this.zzbHS.zzbHO.zzCj();
            if (this.zzbHS.zzbHR) {
                arrayList.add(Integer.valueOf(1));
                valueOf = Integer.valueOf(0);
            } else {
                arrayList.add(Integer.valueOf(0));
                valueOf = Integer.valueOf(1);
            }
            arrayList.add(valueOf);
            valueOf = Integer.valueOf(2);
        }
        arrayList.add(valueOf);
        this.zzbHS.zzbHK.zza(this.zzbHS.zzbDw, this.zzbHS.zzbHI, this.zzbHS.zzbHH, arrayList, this, this.zzbHS.zzbHO);
    }

    public final void zza(cm cmVar) {
        if (cmVar.getStatus() == Status.zzaBm) {
            this.zzbHS.zzbHL.execute(new zzcum(this.zzbHS, cmVar));
        } else {
            this.zzbHS.zzbHL.execute(new zzcui(this.zzbHS, null));
        }
    }
}
