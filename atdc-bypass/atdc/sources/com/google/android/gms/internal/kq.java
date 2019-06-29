package com.google.android.gms.internal;

import com.google.firebase.auth.PhoneAuthProvider.OnVerificationStateChangedCallbacks;

final class kq implements Runnable {
    private /* synthetic */ kr zzbXg;
    private /* synthetic */ kl zzbXh;

    kq(kl klVar, kr krVar) {
        this.zzbXh = klVar;
        this.zzbXg = krVar;
    }

    public final void run() {
        synchronized (this.zzbXh.zzbXd.zzbWQ) {
            if (!this.zzbXh.zzbXd.zzbWQ.isEmpty()) {
                this.zzbXg.zza((OnVerificationStateChangedCallbacks) this.zzbXh.zzbXd.zzbWQ.get(0), new Object[0]);
            }
        }
    }
}
