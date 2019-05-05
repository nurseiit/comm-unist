package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.fitness.request.SessionInsertRequest;

final class zzbzc extends zzbvr {
    private /* synthetic */ SessionInsertRequest zzaWe;

    zzbzc(zzbyz zzbyz, GoogleApiClient googleApiClient, SessionInsertRequest sessionInsertRequest) {
        this.zzaWe = sessionInsertRequest;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwv) ((zzbvo) zzb).zzrf()).zza(new SessionInsertRequest(this.zzaWe, new zzbzi(this)));
    }
}
