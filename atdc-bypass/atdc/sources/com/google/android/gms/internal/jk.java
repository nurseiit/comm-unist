package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.firebase.auth.AuthResult;

final class jk extends kj<AuthResult, ll> {
    public jk() {
        super(2);
    }

    public final void dispatch() throws RemoteException {
        this.zzbWM.zza(this.zzbWK);
    }

    public final void zzEL() {
        ls zzb = iq.zza(this.zzbVZ, this.zzbWU, true);
        ((ll) this.zzbWN).zza(this.zzbWT, zzb);
        zzV(new lp(zzb));
    }
}
