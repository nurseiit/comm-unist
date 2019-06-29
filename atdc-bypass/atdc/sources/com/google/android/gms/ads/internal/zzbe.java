package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzns;

final class zzbe implements Runnable {
    private /* synthetic */ zzns zztk;
    private /* synthetic */ zzbb zzuQ;

    zzbe(zzbb zzbb, zzns zzns) {
        this.zzuQ = zzbb;
        this.zztk = zzns;
    }

    public final void run() {
        try {
            if (this.zzuQ.zzsP.zzwg != null) {
                this.zzuQ.zzsP.zzwg.zza(this.zztk);
            }
        } catch (RemoteException e) {
            zzajc.zzc("Could not call OnContentAdLoadedListener.onContentAdLoaded().", e);
        }
    }
}
