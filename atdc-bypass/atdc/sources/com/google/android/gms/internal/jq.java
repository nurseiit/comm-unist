package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.auth.AuthResult;

final class jq extends kj<AuthResult, ll> {
    @NonNull
    private String zzbWC;

    public jq(@NonNull String str) {
        super(2);
        this.zzbWC = zzbo.zzh(str, "provider cannot be null or empty");
    }

    public final void dispatch() throws RemoteException {
        this.zzbWM.zze(this.zzbWC, this.zzbWL.zzEH(), this.zzbWK);
    }

    public final void zzEL() {
        ls zzb = iq.zza(this.zzbVZ, this.zzbWU);
        ((ll) this.zzbWN).zza(this.zzbWT, zzb);
        zzV(new lp(zzb));
    }
}
