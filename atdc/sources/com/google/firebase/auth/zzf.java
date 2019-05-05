package com.google.firebase.auth;

import com.google.firebase.auth.FirebaseAuth.IdTokenListener;

final class zzf implements Runnable {
    private /* synthetic */ IdTokenListener zzbWg;
    private /* synthetic */ FirebaseAuth zzbWh;

    zzf(FirebaseAuth firebaseAuth, IdTokenListener idTokenListener) {
        this.zzbWh = firebaseAuth;
        this.zzbWg = idTokenListener;
    }

    public final void run() {
        this.zzbWg.onIdTokenChanged(this.zzbWh);
    }
}
