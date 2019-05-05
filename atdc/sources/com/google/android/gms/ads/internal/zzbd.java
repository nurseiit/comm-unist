package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zznq;

final class zzbd implements Runnable {
    private /* synthetic */ zznq zztj;
    private /* synthetic */ zzbb zzuQ;

    zzbd(zzbb zzbb, zznq zznq) {
        this.zzuQ = zzbb;
        this.zztj = zznq;
    }

    public final void run() {
        try {
            if (this.zzuQ.zzsP.zzwf != null) {
                this.zzuQ.zzsP.zzwf.zza(this.zztj);
            }
        } catch (RemoteException e) {
            zzajc.zzc("Could not call OnAppInstallAdLoadedListener.onAppInstallAdLoaded().", e);
        }
    }
}
