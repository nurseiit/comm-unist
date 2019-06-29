package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.zzaet;
import com.google.android.gms.internal.zzafg;
import com.google.android.gms.internal.zzagz;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzaka;
import com.google.android.gms.internal.zzakm;
import com.google.android.gms.internal.zznb;
import com.google.android.gms.internal.zznc;
import com.google.android.gms.internal.zzxx;

final class zzl implements Runnable {
    final /* synthetic */ zzafg zzsW;
    final /* synthetic */ zzi zztb;
    final /* synthetic */ zzaet zztc;
    private /* synthetic */ zznb zztd;

    zzl(zzi zzi, zzafg zzafg, zzaet zzaet, zznb zznb) {
        this.zztb = zzi;
        this.zzsW = zzafg;
        this.zztc = zzaet;
        this.zztd = zznb;
    }

    public final void run() {
        if (this.zzsW.zzXY.zzTx && this.zztb.zzsP.zzwo != null) {
            String str = null;
            if (this.zzsW.zzXY.zzPi != null) {
                zzbs.zzbz();
                str = zzagz.zzaI(this.zzsW.zzXY.zzPi);
            }
            zznc zznc = new zznc(this.zztb, str, this.zzsW.zzXY.body);
            this.zztb.zzsP.zzwt = 1;
            try {
                this.zztb.zzsN = false;
                this.zztb.zzsP.zzwo.zza(zznc);
                return;
            } catch (RemoteException e) {
                zzajc.zzc("Could not call the onCustomRenderedAdLoadedListener.", e);
                this.zztb.zzsN = true;
            }
        }
        zzw zzw = new zzw(this.zztc);
        try {
            zzaka zza = this.zztb.zza(this.zzsW, zzw, this.zztc);
            zza.setOnTouchListener(new zzn(this, zzw));
            zza.setOnClickListener(new zzo(this, zzw));
            this.zztb.zzsP.zzwt = 0;
            zzbt zzbt = this.zztb.zzsP;
            zzbs.zzby();
            zzbt.zzvW = zzxx.zza(this.zztb.zzsP.zzqD, this.zztb, this.zzsW, this.zztb.zzsP.zzvS, zza, this.zztb.zzsX, this.zztb, this.zztd);
        } catch (zzakm e2) {
            zzajc.zzb("Could not obtain webview.", e2);
            zzagz.zzZr.post(new zzm(this));
        }
    }
}
