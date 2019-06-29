package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.auth.AuthCredential;

final class jc extends kj<Void, ll> {
    @NonNull
    private final lj zzbWz;

    public jc(@NonNull AuthCredential authCredential) {
        super(2);
        zzbo.zzb((Object) authCredential, (Object) "credential cannot be null");
        this.zzbWz = lm.zza(authCredential);
    }

    public final void dispatch() throws RemoteException {
        this.zzbWM.zza(this.zzbWz, this.zzbWK);
    }

    public final void zzEL() {
        ls zzb = iq.zza(this.zzbVZ, this.zzbWU);
        if (this.zzbWL.getUid().equalsIgnoreCase(zzb.getUid())) {
            ((ll) this.zzbWN).zza(this.zzbWT, zzb);
            zzV(null);
            return;
        }
        zzL(lu.zzEZ());
    }
}
