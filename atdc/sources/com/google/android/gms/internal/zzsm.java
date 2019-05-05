package com.google.android.gms.internal;

import android.os.RemoteException;

final class zzsm implements zzth {
    private /* synthetic */ int zzKc;

    zzsm(zzsk zzsk, int i) {
        this.zzKc = i;
    }

    public final void zzb(zzti zzti) throws RemoteException {
        if (zzti.zztK != null) {
            zzti.zztK.onAdFailedToLoad(this.zzKc);
        }
    }
}
