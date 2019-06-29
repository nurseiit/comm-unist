package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.cast.Cast.CastApi.zza;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzaxx;
import com.google.android.gms.internal.zzayi;
import com.google.android.gms.internal.zzbaz;

final class zzf extends zzayi {
    private /* synthetic */ String val$message;
    private /* synthetic */ String zzaoQ;

    zzf(zza zza, GoogleApiClient googleApiClient, String str, String str2) {
        this.zzaoQ = str;
        this.val$message = str2;
        super(googleApiClient);
    }

    public final void zza(zzaxx zzaxx) throws RemoteException {
        try {
            zzaxx.zza(this.zzaoQ, this.val$message, (zzbaz) this);
        } catch (IllegalArgumentException | IllegalStateException unused) {
            zzad(2001);
        }
    }
}
