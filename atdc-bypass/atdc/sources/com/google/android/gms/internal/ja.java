package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.PhoneAuthCredential;

final class ja extends kj<AuthResult, ll> {
    @NonNull
    private final PhoneAuthCredential zzbWA;

    public ja(@NonNull PhoneAuthCredential phoneAuthCredential) {
        super(2);
        this.zzbWA = (PhoneAuthCredential) zzbo.zzb((Object) phoneAuthCredential, (Object) "credential cannot be null");
    }

    public final void dispatch() throws RemoteException {
        this.zzbWM.zza(this.zzbWL.zzEH(), this.zzbWA, this.zzbWK);
    }

    public final void zzEL() {
        ls zzb = iq.zza(this.zzbVZ, this.zzbWU);
        ((ll) this.zzbWN).zza(this.zzbWT, zzb);
        zzV(new lp(zzb));
    }
}
