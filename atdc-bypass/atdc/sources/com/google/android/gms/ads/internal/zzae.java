package com.google.android.gms.ads.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.js.zzl;
import com.google.android.gms.internal.zzajr;
import com.google.android.gms.internal.zzrd;

final class zzae implements Runnable {
    private /* synthetic */ zzl zztA;
    final /* synthetic */ zzrd zztB;
    final /* synthetic */ String zztC;
    final /* synthetic */ String zztD;
    final /* synthetic */ boolean zztE;
    final /* synthetic */ Context zztF;

    zzae(zzac zzac, zzl zzl, zzrd zzrd, String str, String str2, boolean z, Context context) {
        this.zztA = zzl;
        this.zztB = zzrd;
        this.zztC = str;
        this.zztD = str2;
        this.zztE = z;
        this.zztF = context;
    }

    public final void run() {
        this.zztA.zzb(null).zza(new zzaf(this), new zzajr());
    }
}
