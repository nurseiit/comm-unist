package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.js.zzl;
import com.google.android.gms.ads.internal.js.zzy;

final class zzabn implements Runnable {
    final /* synthetic */ zzabu zzUA;
    private /* synthetic */ zzmz zzUB;
    final /* synthetic */ String zzUC;
    private /* synthetic */ zzl zztA;
    final /* synthetic */ zznb zztd;

    zzabn(zzl zzl, zzabu zzabu, zznb zznb, zzmz zzmz, String str) {
        this.zztA = zzl;
        this.zzUA = zzabu;
        this.zztd = zznb;
        this.zzUB = zzmz;
        this.zzUC = str;
    }

    public final void run() {
        zzy zzb = this.zztA.zzb(null);
        this.zzUA.zzUN = zzb;
        this.zztd.zza(this.zzUB, "rwc");
        zzb.zza(new zzabo(this, this.zztd.zzdS()), new zzabp(this));
    }
}
