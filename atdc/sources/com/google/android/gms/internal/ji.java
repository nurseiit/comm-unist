package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;

final class ji extends kj<Void, ll> {
    @NonNull
    private String zzakv;

    public ji(@NonNull String str) {
        super(6);
        this.zzakv = zzbo.zzh(str, "token cannot be null or empty");
    }

    public final void dispatch() throws RemoteException {
        this.zzbWM.zzh(this.zzakv, this.zzbWK);
    }

    public final void zzEL() {
        zzV(null);
    }
}
