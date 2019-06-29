package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;

final class it extends kj<Void, ll> {
    @NonNull
    private final String zzaZK;
    @NonNull
    private final String zzbWw;

    public it(@NonNull String str, @NonNull String str2) {
        super(4);
        this.zzaZK = zzbo.zzh(str, "code cannot be null or empty");
        this.zzbWw = zzbo.zzh(str2, "new password cannot be null or empty");
    }

    public final void dispatch() throws RemoteException {
        this.zzbWM.zzf(this.zzaZK, this.zzbWw, this.zzbWK);
    }

    public final void zzEL() {
        zzV(null);
    }
}
