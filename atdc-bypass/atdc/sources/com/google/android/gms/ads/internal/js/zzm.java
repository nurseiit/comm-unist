package com.google.android.gms.ads.internal.js;

import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.internal.zzagz;
import com.google.android.gms.internal.zzais;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzcu;
import com.google.android.gms.internal.zzrd;

final class zzm implements Runnable {
    final /* synthetic */ zzcu zzLf;
    final /* synthetic */ zzac zzLg;
    final /* synthetic */ zzl zzLh;

    zzm(zzl zzl, zzcu zzcu, zzac zzac) {
        this.zzLh = zzl;
        this.zzLf = zzcu;
        this.zzLg = zzac;
    }

    public final void run() {
        try {
            zze zze = new zze(this.zzLh.mContext, this.zzLh.zztW, this.zzLf, null);
            zze.zza(new zzn(this, zze));
            zze.zza("/jsLoaded", (zzrd) new zzq(this, zze));
            zzais zzais = new zzais();
            zzr zzr = new zzr(this, zze, zzais);
            zzais.set(zzr);
            zze.zza("/requestReload", (zzrd) zzr);
            if (this.zzLh.zzLa.endsWith(".js")) {
                zze.zzac(this.zzLh.zzLa);
            } else if (this.zzLh.zzLa.startsWith("<html>")) {
                zze.zzae(this.zzLh.zzLa);
            } else {
                zze.zzad(this.zzLh.zzLa);
            }
            zzagz.zzZr.postDelayed(new zzs(this, zze), (long) zzw.zzLp);
        } catch (Throwable th) {
            zzajc.zzb("Error creating webview.", th);
            zzbs.zzbD().zza(th, "SdkJavascriptFactory.loadJavascriptEngine");
            this.zzLg.reject();
        }
    }
}
