package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;

final class ir extends kj<Void, ll> {
    @NonNull
    private final String zzaZK;

    public ir(@NonNull String str) {
        super(7);
        this.zzaZK = zzbo.zzh(str, "code cannot be null or empty");
    }

    public final void dispatch() throws RemoteException {
        this.zzbWM.zzj(this.zzaZK, this.zzbWK);
    }

    public final void zzEL() {
        zzV(null);
    }
}
