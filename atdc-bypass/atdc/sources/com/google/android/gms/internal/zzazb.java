package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.cast.CastRemoteDisplay.CastRemoteDisplaySessionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

class zzazb extends zzbay<CastRemoteDisplaySessionResult, zzazf> {
    final /* synthetic */ zzayw zzayZ;

    public zzazb(zzayw zzayw, GoogleApiClient googleApiClient) {
        this.zzayZ = zzayw;
        super(zzayw.zzayW, googleApiClient);
    }

    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((CastRemoteDisplaySessionResult) obj);
    }

    public void zza(zzazf zzazf) throws RemoteException {
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return new zzaze(status);
    }
}
