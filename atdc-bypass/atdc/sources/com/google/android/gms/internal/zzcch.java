package com.google.android.gms.internal;

import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;

final class zzcch extends zzccm {
    private /* synthetic */ LocationRequest zzbiD;
    private /* synthetic */ LocationListener zzbiE;
    private /* synthetic */ Looper zzbiI;

    zzcch(zzccb zzccb, GoogleApiClient googleApiClient, LocationRequest locationRequest, LocationListener locationListener, Looper looper) {
        this.zzbiD = locationRequest;
        this.zzbiE = locationListener;
        this.zzbiI = looper;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzcdj) zzb).zza(this.zzbiD, zzbea.zzb(this.zzbiE, zzceb.zzb(this.zzbiI), LocationListener.class.getSimpleName()), new zzccn(this));
    }
}
