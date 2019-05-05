package com.google.android.gms.internal;

import android.os.RemoteException;

final class zzss extends zzkf {
    private /* synthetic */ zzsj zzKb;

    zzss(zzsj zzsj) {
        this.zzKb = zzsj;
    }

    public final void onAppEvent(String str, String str2) throws RemoteException {
        this.zzKb.zztH.add(new zzst(this, str, str2));
    }
}
