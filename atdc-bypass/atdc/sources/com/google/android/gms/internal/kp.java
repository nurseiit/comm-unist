package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.firebase.auth.PhoneAuthProvider.OnVerificationStateChangedCallbacks;

final class kp implements kr {
    private /* synthetic */ Status zzakB;

    kp(kl klVar, Status status) {
        this.zzakB = status;
    }

    public final void zza(OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks, Object... objArr) {
        onVerificationStateChangedCallbacks.onVerificationFailed(jz.zzK(this.zzakB));
    }
}
