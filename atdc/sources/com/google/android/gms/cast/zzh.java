package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.cast.Cast.CastApi.zza;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzaxx;
import com.google.android.gms.internal.zzbaz;

final class zzh extends zza {
    private /* synthetic */ String zzaoR;
    private /* synthetic */ LaunchOptions zzaoS;

    zzh(zza zza, GoogleApiClient googleApiClient, String str, LaunchOptions launchOptions) {
        this.zzaoR = str;
        this.zzaoS = launchOptions;
        super(googleApiClient);
    }

    public final void zza(zzaxx zzaxx) throws RemoteException {
        try {
            zzaxx.zza(this.zzaoR, this.zzaoS, (zzbaz) this);
        } catch (IllegalStateException unused) {
            zzad(2001);
        }
    }
}
