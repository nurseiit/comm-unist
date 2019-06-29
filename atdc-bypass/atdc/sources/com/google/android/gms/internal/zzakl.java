package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.zzbl;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.ads.internal.zzv;
import java.util.concurrent.Callable;

final class zzakl implements Callable<zzaka> {
    private /* synthetic */ zziv zzAG;
    private /* synthetic */ zzaje zzKO;
    private /* synthetic */ zzv zzKQ;
    private /* synthetic */ zzcu zzLf;
    private /* synthetic */ boolean zzabL;
    private /* synthetic */ boolean zzabM;
    private /* synthetic */ zznb zzabN;
    private /* synthetic */ zzbl zzabO;
    private /* synthetic */ zzig zzabP;
    private /* synthetic */ Context zztF;

    zzakl(zzakk zzakk, Context context, zziv zziv, boolean z, boolean z2, zzcu zzcu, zzaje zzaje, zznb zznb, zzbl zzbl, zzv zzv, zzig zzig) {
        this.zztF = context;
        this.zzAG = zziv;
        this.zzabL = z;
        this.zzabM = z2;
        this.zzLf = zzcu;
        this.zzKO = zzaje;
        this.zzabN = zznb;
        this.zzabO = zzbl;
        this.zzKQ = zzv;
        this.zzabP = zzig;
    }

    public final /* synthetic */ Object call() throws Exception {
        zzaka zzakn = new zzakn(zzako.zzb(this.zztF, this.zzAG, this.zzabL, this.zzabM, this.zzLf, this.zzKO, this.zzabN, this.zzabO, this.zzKQ, this.zzabP));
        zzakn.setWebViewClient(zzbs.zzbB().zzb(zzakn, this.zzabM));
        zzakn.setWebChromeClient(zzbs.zzbB().zzm(zzakn));
        return zzakn;
    }
}
