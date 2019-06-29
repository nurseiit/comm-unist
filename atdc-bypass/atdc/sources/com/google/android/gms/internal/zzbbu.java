package com.google.android.gms.internal;

import com.google.android.gms.common.api.PendingResult.zza;
import com.google.android.gms.common.api.Status;

final class zzbbu implements zza {
    private /* synthetic */ zzbbe zzaCT;
    private /* synthetic */ zzbbt zzaCU;

    zzbbu(zzbbt zzbbt, zzbbe zzbbe) {
        this.zzaCU = zzbbt;
        this.zzaCT = zzbbe;
    }

    public final void zzo(Status status) {
        this.zzaCU.zzaCR.remove(this.zzaCT);
    }
}
