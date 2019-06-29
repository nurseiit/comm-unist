package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;

final class jv extends kj<String, ll> {
    @NonNull
    private final String zzaZK;

    public jv(@NonNull String str) {
        super(4);
        this.zzaZK = zzbo.zzh(str, "code cannot be null or empty");
    }

    public final void dispatch() throws RemoteException {
        this.zzbWM.zzi(this.zzaZK, this.zzbWK);
    }

    public final void zzEL() {
        if (new ln(this.zzbWW).getOperation() != 0) {
            zzL(new Status(17499));
        } else {
            zzV(this.zzbWW.getEmail());
        }
    }
}
