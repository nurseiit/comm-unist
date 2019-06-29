package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.cast.Cast.CastApi.zza;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzaxx;
import com.google.android.gms.internal.zzbaz;

final class zzg extends zza {
    private /* synthetic */ String zzaoR;

    zzg(zza zza, GoogleApiClient googleApiClient, String str) {
        this.zzaoR = str;
        super(googleApiClient);
    }

    public final void zza(zzaxx zzaxx) throws RemoteException {
        try {
            String str = this.zzaoR;
            LaunchOptions launchOptions = new LaunchOptions();
            launchOptions.setRelaunchIfRunning(false);
            zzaxx.zza(str, launchOptions, (zzbaz) this);
        } catch (IllegalStateException unused) {
            zzad(2001);
        }
    }
}
