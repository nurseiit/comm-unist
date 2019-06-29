package com.google.android.gms.internal;

import android.os.RemoteException;

final class zztf implements zzth {
    private /* synthetic */ int zzKc;

    zztf(zzsy zzsy, int i) {
        this.zzKc = i;
    }

    public final void zzb(zzti zzti) throws RemoteException {
        if (zzti.zzKl != null) {
            zzti.zzKl.onRewardedVideoAdFailedToLoad(this.zzKc);
        }
    }
}
