package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;

final class js extends kj<Void, ll> {
    @NonNull
    private final String zzakT;

    public js(@NonNull String str) {
        super(2);
        this.zzakT = zzbo.zzh(str, "password cannot be null or empty");
    }

    public final void dispatch() throws RemoteException {
        this.zzbWM.zzb(this.zzbWL.zzEH(), this.zzakT, this.zzbWK);
    }

    public final void zzEL() {
        ((ll) this.zzbWN).zza(this.zzbWT, iq.zza(this.zzbVZ, this.zzbWU));
        zzV(null);
    }
}
