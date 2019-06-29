package com.google.firebase.appindexing.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.zzapp;
import com.google.android.gms.internal.zzapw.zzd;

final class zzr extends zzt {
    private /* synthetic */ zza[] zzbVW;

    zzr(zzq zzq, zza[] zzaArr) {
        this.zzbVW = zzaArr;
        super();
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(zzapp zzapp) throws RemoteException {
        zzapp.zza(new zzd(this), this.zzbVW);
    }
}
