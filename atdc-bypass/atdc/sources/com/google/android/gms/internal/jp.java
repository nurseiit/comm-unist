package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.firebase.auth.AuthResult;

final class jp extends kj<AuthResult, ll> {
    public jp() {
        super(2);
    }

    public final void dispatch() throws RemoteException {
        this.zzbWM.zze(this.zzbWL.zzEH(), this.zzbWK);
    }

    public final void zzEL() {
        ls zzb = iq.zza(this.zzbVZ, this.zzbWU);
        ((ll) this.zzbWN).zza(this.zzbWT, zzb);
        zzV(new lp(zzb));
    }
}
