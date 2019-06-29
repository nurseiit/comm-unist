package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.auth.ActionCodeResult;

final class is extends kj<ActionCodeResult, ll> {
    @NonNull
    private final String zzaZK;

    public is(@NonNull String str) {
        super(4);
        this.zzaZK = zzbo.zzh(str, "code cannot be null or empty");
    }

    public final void dispatch() throws RemoteException {
        this.zzbWM.zzi(this.zzaZK, this.zzbWK);
    }

    public final void zzEL() {
        zzV(new ln(this.zzbWW));
    }
}
