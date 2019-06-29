package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.auth.GetTokenResult;

final class ix extends kj<GetTokenResult, ll> {
    @NonNull
    private final String zzbWx;

    public ix(@NonNull String str) {
        super(1);
        this.zzbWx = zzbo.zzh(str, "refresh token cannot be null");
    }

    public final void dispatch() throws RemoteException {
        this.zzbWM.zza(this.zzbWx, this.zzbWK);
    }

    public final void zzEL() {
        this.zzbWT.zzgt(this.zzbWx);
        ((ll) this.zzbWN).zza(this.zzbWT, this.zzbWL);
        zzV(new GetTokenResult(this.zzbWT.getAccessToken()));
    }
}
