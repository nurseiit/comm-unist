package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.auth.AuthResult;

final class jf extends kj<AuthResult, ll> {
    @NonNull
    private final String zzakT;
    @NonNull
    private final String zzalO;

    public jf(@NonNull String str, @NonNull String str2) {
        super(2);
        this.zzalO = zzbo.zzh(str, "email cannot be null or empty");
        this.zzakT = zzbo.zzh(str2, "password cannot be null or empty");
    }

    public final void dispatch() throws RemoteException {
        this.zzbWM.zzd(this.zzalO, this.zzakT, this.zzbWK);
    }

    public final void zzEL() {
        ls zzb = iq.zza(this.zzbVZ, this.zzbWU);
        if (this.zzbWL.getUid().equalsIgnoreCase(zzb.getUid())) {
            ((ll) this.zzbWN).zza(this.zzbWT, zzb);
            zzV(new lp(zzb));
            return;
        }
        zzL(lu.zzEZ());
    }
}
