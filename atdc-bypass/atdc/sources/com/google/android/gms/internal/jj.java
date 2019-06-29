package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;

final class jj extends kj<Void, ll> {
    @NonNull
    private String zzalO;

    public jj(@NonNull String str) {
        super(4);
        this.zzalO = zzbo.zzh(str, "email cannot be null or empty");
    }

    public final void dispatch() throws RemoteException {
        this.zzbWM.zzd(this.zzalO, this.zzbWK);
    }

    public final void zzEL() {
        zzV(null);
    }
}
