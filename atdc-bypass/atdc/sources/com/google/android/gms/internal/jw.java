package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.auth.PhoneAuthProvider.OnVerificationStateChangedCallbacks;

final class jw extends kj<Void, OnVerificationStateChangedCallbacks> {
    private final lf zzbWE;

    public jw(lf lfVar) {
        super(8);
        this.zzbWE = (lf) zzbo.zzu(lfVar);
    }

    public final void dispatch() throws RemoteException {
        this.zzbWM.zza(this.zzbWE, this.zzbWK);
    }

    public final void zzEL() {
    }
}
