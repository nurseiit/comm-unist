package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzpj;
import com.google.android.gms.internal.zzpw;

final class zzu implements Runnable {
    private /* synthetic */ zzq zzti;
    private /* synthetic */ zzpj zztl;

    zzu(zzq zzq, zzpj zzpj) {
        this.zzti = zzq;
        this.zztl = zzpj;
    }

    public final void run() {
        try {
            ((zzpw) this.zzti.zzsP.zzwi.get(this.zztl.getCustomTemplateId())).zza(this.zztl);
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded().", e);
        }
    }
}
