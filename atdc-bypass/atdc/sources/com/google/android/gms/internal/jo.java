package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.PhoneAuthCredential;

final class jo extends kj<AuthResult, ll> {
    private PhoneAuthCredential zzbWA;

    public jo(PhoneAuthCredential phoneAuthCredential) {
        super(2);
        this.zzbWA = (PhoneAuthCredential) zzbo.zzu(phoneAuthCredential);
    }

    public final void dispatch() throws RemoteException {
        this.zzbWM.zza(this.zzbWA, this.zzbWK);
    }

    public final void zzEL() {
        ls zzb = iq.zza(this.zzbVZ, this.zzbWU);
        ((ll) this.zzbWN).zza(this.zzbWT, zzb);
        zzV(new lp(zzb));
    }
}
