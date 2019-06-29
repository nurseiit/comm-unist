package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.data.zzt;
import com.google.android.gms.fitness.request.zzaq;

final class zzbyw extends zzbvn {
    private /* synthetic */ PendingIntent zzaVL;
    private /* synthetic */ zzbyx zzaVZ;
    private /* synthetic */ zzt zzaWa;

    zzbyw(zzbys zzbys, GoogleApiClient googleApiClient, zzbyx zzbyx, zzt zzt, PendingIntent pendingIntent) {
        this.zzaVZ = zzbyx;
        this.zzaWa = zzt;
        this.zzaVL = pendingIntent;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    public final Status zzA(Status status) {
        return status;
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwt) ((zzbvk) zzb).zzrf()).zza(new zzaq(this.zzaWa, this.zzaVL, new zzbyy(this, this.zzaVZ, null)));
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return status;
    }
}
