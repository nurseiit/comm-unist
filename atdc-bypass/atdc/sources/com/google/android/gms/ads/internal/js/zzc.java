package com.google.android.gms.ads.internal.js;

import android.content.Context;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.zzaje;
import com.google.android.gms.internal.zzakm;
import com.google.android.gms.internal.zzcu;

final class zzc implements Runnable {
    private /* synthetic */ zzaje zzKO;
    private /* synthetic */ zzcu zzKP;
    private /* synthetic */ zzv zzKQ;
    final /* synthetic */ JSEngineSettableFuture zzKR;
    private /* synthetic */ String zzKS;
    private /* synthetic */ Context zztF;

    zzc(JavascriptEngineFactory javascriptEngineFactory, Context context, zzaje zzaje, zzcu zzcu, zzv zzv, JSEngineSettableFuture jSEngineSettableFuture, String str) {
        this.zztF = context;
        this.zzKO = zzaje;
        this.zzKP = zzcu;
        this.zzKQ = zzv;
        this.zzKR = jSEngineSettableFuture;
        this.zzKS = str;
    }

    public final void run() {
        try {
            zze zze = new zze(this.zztF, this.zzKO, this.zzKP, this.zzKQ);
            this.zzKR.mEngineReference = zze;
            zze.zza(new zzd(this));
            zze.zzad(this.zzKS);
        } catch (zzakm e) {
            this.zzKR.zzb(e);
        }
    }
}
