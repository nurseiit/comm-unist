package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.EmailAuthCredential;

final class iy extends kj<AuthResult, ll> {
    @NonNull
    private final EmailAuthCredential zzbWy;

    public iy(@NonNull EmailAuthCredential emailAuthCredential) {
        super(2);
        this.zzbWy = (EmailAuthCredential) zzbo.zzb((Object) emailAuthCredential, (Object) "credential cannot be null");
    }

    public final void dispatch() throws RemoteException {
        this.zzbWM.zza(this.zzbWy.getEmail(), this.zzbWy.getPassword(), this.zzbWL.zzEH(), this.zzbWK);
    }

    public final void zzEL() {
        ls zzb = iq.zza(this.zzbVZ, this.zzbWU);
        ((ll) this.zzbWN).zza(this.zzbWT, zzb);
        zzV(new lp(zzb));
    }
}
