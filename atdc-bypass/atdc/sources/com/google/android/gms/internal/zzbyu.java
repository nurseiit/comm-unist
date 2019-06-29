package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.data.zzt;
import com.google.android.gms.fitness.request.SensorRequest;
import com.google.android.gms.fitness.request.zzan;

final class zzbyu extends zzbvn {
    private /* synthetic */ SensorRequest zzaVV;
    private /* synthetic */ zzt zzaVW;
    private /* synthetic */ PendingIntent zzaVX;

    zzbyu(zzbys zzbys, GoogleApiClient googleApiClient, SensorRequest sensorRequest, zzt zzt, PendingIntent pendingIntent) {
        this.zzaVV = sensorRequest;
        this.zzaVW = zzt;
        this.zzaVX = pendingIntent;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    public final Status zzA(Status status) {
        return status;
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwt) ((zzbvk) zzb).zzrf()).zza(new zzan(this.zzaVV, this.zzaVW, this.zzaVX, new zzbzi(this)));
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return status;
    }
}
