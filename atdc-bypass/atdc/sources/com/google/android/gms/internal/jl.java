package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.auth.AuthCredential;
import com.google.firebase.auth.AuthResult;

final class jl extends kj<AuthResult, ll> {
    @NonNull
    private final lj zzbWz;

    public jl(@NonNull AuthCredential authCredential) {
        super(2);
        zzbo.zzb((Object) authCredential, (Object) "credential cannot be null");
        this.zzbWz = lm.zza(authCredential);
    }

    public final void dispatch() throws RemoteException {
        this.zzbWM.zza(this.zzbWz, this.zzbWK);
    }

    public final void zzEL() {
        ls zzb = iq.zza(this.zzbVZ, this.zzbWU);
        ((ll) this.zzbWN).zza(this.zzbWT, zzb);
        zzV(new lp(zzb));
    }
}
