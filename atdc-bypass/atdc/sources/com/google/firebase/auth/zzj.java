package com.google.firebase.auth;

import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.kx;
import com.google.android.gms.internal.ll;
import com.google.android.gms.internal.lw;

final class zzj implements ll, lw {
    private /* synthetic */ FirebaseAuth zzbWh;

    zzj(FirebaseAuth firebaseAuth) {
        this.zzbWh = firebaseAuth;
    }

    public final void onError(Status status) {
        int statusCode = status.getStatusCode();
        if (statusCode == 17011 || statusCode == 17021 || statusCode == 17005) {
            this.zzbWh.signOut();
        }
    }

    public final void zza(@NonNull kx kxVar, @NonNull FirebaseUser firebaseUser) {
        this.zzbWh.zza(firebaseUser, kxVar, true);
    }
}
