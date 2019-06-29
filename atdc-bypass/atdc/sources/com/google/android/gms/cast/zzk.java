package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.cast.Cast.CastApi.zza;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzaxx;
import com.google.android.gms.internal.zzayi;
import com.google.android.gms.internal.zzbaz;

final class zzk extends zzayi {
    zzk(zza zza, GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    public final void zza(zzaxx zzaxx) throws RemoteException {
        try {
            zzaxx.zza("", (zzbaz) this);
        } catch (IllegalStateException unused) {
            zzad(2001);
        }
    }
}
