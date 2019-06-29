package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.AdRequest.ErrorCode;

final class zzvz implements Runnable {
    private /* synthetic */ zzvp zzNk;
    private /* synthetic */ ErrorCode zzNl;

    zzvz(zzvp zzvp, ErrorCode errorCode) {
        this.zzNk = zzvp;
        this.zzNl = errorCode;
    }

    public final void run() {
        try {
            this.zzNk.zzNc.onAdFailedToLoad(zzwb.zza(this.zzNl));
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onAdFailedToLoad.", e);
        }
    }
}
