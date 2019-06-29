package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.measurement.AppMeasurement.zzb;

final class zzcih implements Runnable {
    private /* synthetic */ zzcid zzbua;
    private /* synthetic */ zzb zzbuc;

    zzcih(zzcid zzcid, zzb zzb) {
        this.zzbua = zzcid;
        this.zzbuc = zzb;
    }

    public final void run() {
        zzcfd zzd = this.zzbua.zzbtU;
        if (zzd == null) {
            this.zzbua.zzwF().zzyx().log("Failed to send current screen to service");
            return;
        }
        try {
            long j;
            String str;
            String str2;
            String packageName;
            if (this.zzbuc == null) {
                j = 0;
                str = null;
                str2 = null;
                packageName = this.zzbua.getContext().getPackageName();
            } else {
                j = this.zzbuc.zzbol;
                str = this.zzbuc.zzboj;
                str2 = this.zzbuc.zzbok;
                packageName = this.zzbua.getContext().getPackageName();
            }
            zzd.zza(j, str, str2, packageName);
            this.zzbua.zzkP();
        } catch (RemoteException e) {
            this.zzbua.zzwF().zzyx().zzj("Failed to send current screen to the service", e);
        }
    }
}
