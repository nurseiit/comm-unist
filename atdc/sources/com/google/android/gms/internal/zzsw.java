package com.google.android.gms.internal;

import android.os.RemoteException;

final class zzsw extends zzjm {
    private /* synthetic */ zzsj zzKb;

    zzsw(zzsj zzsj) {
        this.zzKb = zzsj;
    }

    public final void onAdClicked() throws RemoteException {
        this.zzKb.zztH.add(new zzsx(this));
    }
}
