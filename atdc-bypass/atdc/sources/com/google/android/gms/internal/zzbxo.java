package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.fitness.data.BleDevice;
import com.google.android.gms.fitness.request.zzd;

final class zzbxo extends zzbus {
    private /* synthetic */ BleDevice zzaVB;

    zzbxo(zzbxk zzbxk, GoogleApiClient googleApiClient, BleDevice bleDevice) {
        this.zzaVB = bleDevice;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwh) ((zzbup) zzb).zzrf()).zza(new zzd(this.zzaVB.getAddress(), this.zzaVB, new zzbzi(this)));
    }
}
