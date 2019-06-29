package com.google.android.gms.internal;

import android.os.Handler;
import com.google.android.gms.ads.internal.zzbs;
import java.util.HashMap;

@zzzn
public final class zzig {
    private HashMap<String, Long> zzzA;
    private final zzij zzzB;
    private zzil zzzC;
    private boolean zzzD;
    private final boolean zzzE;
    private final int zzzF;
    private int zzzG;
    private zzih zzzH;

    private zzig() {
        this.zzzD = false;
        this.zzzG = 0;
        this.zzzE = false;
        this.zzzB = new zzik();
        this.zzzC = new zzil();
        this.zzzF = 0;
        zzdi();
    }

    public zzig(zzij zzij, boolean z) {
        this.zzzD = false;
        this.zzzG = 0;
        this.zzzB = zzij;
        this.zzzA = new HashMap();
        this.zzzE = z;
        this.zzzF = ((Integer) zzbs.zzbL().zzd(zzmo.zzGE)).intValue();
        this.zzzC = new zzil();
        zzdi();
        zzbs.zzbP().zzie();
    }

    public static zzig zzde() {
        return new zzig();
    }

    private final synchronized void zzdg() {
    }

    private final synchronized void zzdh() {
        Handler handler = zzbs.zzbP().getHandler();
        zzih zzih = new zzih(this, this.zzzG + 1);
        handler.postDelayed(zzih, (long) this.zzzF);
        this.zzzG++;
        if (this.zzzH != null) {
            handler.removeCallbacks(this.zzzH);
        }
        this.zzzH = zzih;
    }

    private final synchronized void zzdi() {
    }

    public final synchronized void zza(zzii zzii) {
        if (this.zzzE) {
            zzii.zza(this.zzzC);
        }
        if (this.zzzD && this.zzzE) {
            zzdh();
        }
    }

    public final void zzdf() {
        if (this.zzzE) {
            this.zzzD = true;
            zzdh();
        }
    }
}
