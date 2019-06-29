package com.google.android.gms.internal;

import android.os.RemoteException;

final class zzsl implements zzth {
    zzsl(zzsk zzsk) {
    }

    public final void zzb(zzti zzti) throws RemoteException {
        if (zzti.zztK != null) {
            zzti.zztK.onAdClosed();
        }
    }
}
