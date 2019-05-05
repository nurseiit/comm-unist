package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzbs;

final class zzco implements Runnable {
    private /* synthetic */ zzcn zzpO;

    zzco(zzcn zzcn) {
        this.zzpO = zzcn;
    }

    public final void run() {
        if (this.zzpO.zzpM == null) {
            synchronized (zzcn.zzpK) {
                if (this.zzpO.zzpM != null) {
                    return;
                }
                boolean booleanValue = ((Boolean) zzbs.zzbL().zzd(zzmo.zzEM)).booleanValue();
                if (booleanValue) {
                    try {
                        zzcn.zzpL = new zzazn(this.zzpO.zzpJ.zzqD, "ADSHIELD", null);
                    } catch (Throwable unused) {
                        booleanValue = false;
                    }
                }
                this.zzpO.zzpM = Boolean.valueOf(booleanValue);
                zzcn.zzpK.open();
            }
        }
    }
}
