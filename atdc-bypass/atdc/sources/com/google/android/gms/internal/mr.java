package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import com.google.firebase.FirebaseApp;
import java.util.concurrent.ScheduledExecutorService;

public final class mr implements pu {
    private final ScheduledExecutorService zzbZs;
    private final FirebaseApp zzbZt;

    public mr(@NonNull FirebaseApp firebaseApp, @NonNull ScheduledExecutorService scheduledExecutorService) {
        this.zzbZt = firebaseApp;
        this.zzbZs = scheduledExecutorService;
    }

    public final void zza(pw pwVar) {
        this.zzbZt.zza(new mu(this, pwVar));
    }

    public final void zza(boolean z, @NonNull pv pvVar) {
        this.zzbZt.getToken(z).addOnSuccessListener(this.zzbZs, new mt(this, pvVar)).addOnFailureListener(this.zzbZs, new ms(this, pvVar));
    }
}
