package com.google.firebase.auth;

import com.google.firebase.auth.FirebaseAuth.AuthStateListener;

final class zzi implements Runnable {
    private /* synthetic */ FirebaseAuth zzbWh;

    zzi(FirebaseAuth firebaseAuth) {
        this.zzbWh = firebaseAuth;
    }

    public final void run() {
        for (AuthStateListener onAuthStateChanged : this.zzbWh.zzbVd) {
            onAuthStateChanged.onAuthStateChanged(this.zzbWh);
        }
    }
}
