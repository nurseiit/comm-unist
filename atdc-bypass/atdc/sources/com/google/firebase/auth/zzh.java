package com.google.firebase.auth;

import com.google.android.gms.internal.aae;
import com.google.firebase.auth.FirebaseAuth.IdTokenListener;

final class zzh implements Runnable {
    private /* synthetic */ FirebaseAuth zzbWh;
    private /* synthetic */ aae zzbWj;

    zzh(FirebaseAuth firebaseAuth, aae aae) {
        this.zzbWh = firebaseAuth;
        this.zzbWj = aae;
    }

    public final void run() {
        this.zzbWh.zzbVZ.zza(this.zzbWj);
        for (IdTokenListener onIdTokenChanged : this.zzbWh.zzbWa) {
            onIdTokenChanged.onIdTokenChanged(this.zzbWh);
        }
    }
}
