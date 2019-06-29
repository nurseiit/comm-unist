package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zznq;

final class zzs implements Runnable {
    private /* synthetic */ zzq zzti;
    private /* synthetic */ zznq zztj;

    zzs(zzq zzq, zznq zznq) {
        this.zzti = zzq;
        this.zztj = zznq;
    }

    public final void run() {
        try {
            if (this.zzti.zzsP.zzwf != null) {
                this.zzti.zzsP.zzwf.zza(this.zztj);
            }
        } catch (RemoteException e) {
            zzajc.zzc("Could not call OnAppInstallAdLoadedListener.onAppInstallAdLoaded().", e);
        }
    }
}
