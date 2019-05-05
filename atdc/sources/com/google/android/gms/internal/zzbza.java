package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.request.zzay;

final class zzbza extends zzbvr {
    private /* synthetic */ Session zzaWc;

    zzbza(zzbyz zzbyz, GoogleApiClient googleApiClient, Session session) {
        this.zzaWc = session;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwv) ((zzbvo) zzb).zzrf()).zza(new zzay(this.zzaWc, new zzbzi(this)));
    }
}
