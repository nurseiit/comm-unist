package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.auth.ProviderQueryResult;

final class iw extends kj<ProviderQueryResult, ll> {
    @NonNull
    private final String zzalO;

    public iw(@NonNull String str) {
        super(3);
        this.zzalO = zzbo.zzh(str, "email cannot be null or empty");
    }

    public final void dispatch() throws RemoteException {
        this.zzbWM.zzc(this.zzalO, this.zzbWK);
    }

    public final void zzEL() {
        zzV(new lt(this.zzbWV));
    }
}
