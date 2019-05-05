package com.google.firebase.auth;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.lv;

final class zzk implements lv {
    private /* synthetic */ FirebaseAuth zzbWh;
    private /* synthetic */ FirebaseUser zzbWk;

    zzk(FirebaseAuth firebaseAuth, FirebaseUser firebaseUser) {
        this.zzbWh = firebaseAuth;
        this.zzbWk = firebaseUser;
    }

    public final void onError(Status status) {
        if (status.getStatusCode() == 17011 || status.getStatusCode() == 17021 || status.getStatusCode() == 17005) {
            this.zzbWh.signOut();
        }
    }

    public final void zzEE() {
        if (this.zzbWh.zzbWc.getUid().equalsIgnoreCase(this.zzbWk.getUid())) {
            this.zzbWh.zzED();
        }
    }
}
