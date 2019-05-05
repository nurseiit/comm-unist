package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.auth.PhoneAuthCredential;

final class jt extends kj<Void, ll> {
    @NonNull
    private final PhoneAuthCredential zzbWA;

    public jt(PhoneAuthCredential phoneAuthCredential) {
        super(2);
        this.zzbWA = (PhoneAuthCredential) zzbo.zzu(phoneAuthCredential);
    }

    public final void dispatch() throws RemoteException {
        this.zzbWM.zza(this.zzbWL.zzEH(), this.zzbWA, this.zzbWK);
    }

    public final void zzEL() {
        ((ll) this.zzbWN).zza(this.zzbWT, iq.zza(this.zzbVZ, this.zzbWU));
        zzV(null);
    }
}
