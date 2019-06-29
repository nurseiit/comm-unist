package com.google.android.gms.internal;

import android.os.RemoteException;

final class zzst implements zzth {
    private /* synthetic */ String val$name;
    private /* synthetic */ String zzKd;

    zzst(zzss zzss, String str, String str2) {
        this.val$name = str;
        this.zzKd = str2;
    }

    public final void zzb(zzti zzti) throws RemoteException {
        if (zzti.zzKi != null) {
            zzti.zzKi.onAppEvent(this.val$name, this.zzKd);
        }
    }
}
