package com.google.android.gms.internal;

import com.google.firebase.auth.PhoneAuthProvider.ForceResendingToken;
import com.google.firebase.auth.PhoneAuthProvider.OnVerificationStateChangedCallbacks;

final class km implements kr {
    private /* synthetic */ String zzbXe;

    km(kl klVar, String str) {
        this.zzbXe = str;
    }

    public final void zza(OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks, Object... objArr) {
        onVerificationStateChangedCallbacks.onCodeSent(this.zzbXe, ForceResendingToken.zzEK());
    }
}
