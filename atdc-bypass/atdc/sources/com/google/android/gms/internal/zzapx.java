package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzapw.zzc;
import com.google.android.gms.internal.zzapw.zzd;

final class zzapx extends zzc<Status> {
    private /* synthetic */ zzapl[] zzajM;

    zzapx(zzapw zzapw, GoogleApiClient googleApiClient, zzapl[] zzaplArr) {
        this.zzajM = zzaplArr;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(zzapp zzapp) throws RemoteException {
        zzapp.zza(new zzd(this), null, this.zzajM);
    }
}
