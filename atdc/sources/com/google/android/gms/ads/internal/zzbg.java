package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzpj;
import com.google.android.gms.internal.zzpw;

final class zzbg implements Runnable {
    private /* synthetic */ zzpj zztl;
    private /* synthetic */ zzbb zzuQ;

    zzbg(zzbb zzbb, zzpj zzpj) {
        this.zzuQ = zzbb;
        this.zztl = zzpj;
    }

    public final void run() {
        try {
            ((zzpw) this.zzuQ.zzsP.zzwi.get(this.zztl.getCustomTemplateId())).zza(this.zztl);
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded().", e);
        }
    }
}
