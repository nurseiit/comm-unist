package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.auth.UserProfileChangeRequest;

final class ju extends kj<Void, ll> {
    @NonNull
    private final UserProfileChangeRequest zzbWD;

    public ju(UserProfileChangeRequest userProfileChangeRequest) {
        super(2);
        this.zzbWD = (UserProfileChangeRequest) zzbo.zzb((Object) userProfileChangeRequest, (Object) "request cannot be null");
    }

    public final void dispatch() throws RemoteException {
        this.zzbWM.zza(this.zzbWL.zzEH(), this.zzbWD, this.zzbWK);
    }

    public final void zzEL() {
        ((ll) this.zzbWN).zza(this.zzbWT, iq.zza(this.zzbVZ, this.zzbWU));
        zzV(null);
    }
}
