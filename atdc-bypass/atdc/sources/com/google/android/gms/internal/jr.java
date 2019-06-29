package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;

final class jr extends kj<Void, ll> {
    @NonNull
    private final String zzalO;

    public jr(String str) {
        super(2);
        this.zzalO = zzbo.zzh(str, "email cannot be null or empty");
    }

    public final void dispatch() throws RemoteException {
        this.zzbWM.zza(this.zzbWL.zzEH(), this.zzalO, this.zzbWK);
    }

    public final void zzEL() {
        ((ll) this.zzbWN).zza(this.zzbWT, iq.zza(this.zzbVZ, this.zzbWU));
        zzV(null);
    }
}
