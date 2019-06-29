package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.auth.AuthResult;

final class iu extends kj<AuthResult, ll> {
    @NonNull
    private String zzakT;
    @NonNull
    private String zzalO;

    public iu(@NonNull String str, @NonNull String str2) {
        super(2);
        this.zzalO = zzbo.zzh(str, "email cannot be null or empty");
        this.zzakT = zzbo.zzh(str2, "password cannot be null or empty");
    }

    public final void dispatch() throws RemoteException {
        this.zzbWM.zzc(this.zzalO, this.zzakT, this.zzbWK);
    }

    public final void zzEL() {
        ls zzb = iq.zza(this.zzbVZ, this.zzbWU);
        ((ll) this.zzbWN).zza(this.zzbWT, zzb);
        zzV(new lp(zzb));
    }
}
