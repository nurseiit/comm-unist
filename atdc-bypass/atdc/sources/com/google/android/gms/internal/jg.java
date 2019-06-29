package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.auth.PhoneAuthCredential;

final class jg extends kj<Void, ll> {
    @NonNull
    private final PhoneAuthCredential zzbWA;

    public jg(@NonNull PhoneAuthCredential phoneAuthCredential) {
        super(2);
        zzbo.zzb((Object) phoneAuthCredential, (Object) "credential cannot be null");
        this.zzbWA = phoneAuthCredential;
    }

    public final void dispatch() throws RemoteException {
        this.zzbWM.zza(this.zzbWA, this.zzbWK);
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
