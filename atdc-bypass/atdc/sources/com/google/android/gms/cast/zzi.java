package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.cast.Cast.CastApi.zza;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzaxx;
import com.google.android.gms.internal.zzbaz;

final class zzi extends zza {
    private /* synthetic */ String val$sessionId;
    private /* synthetic */ String zzaoR;
    private /* synthetic */ zzz zzaoT = null;

    zzi(zza zza, GoogleApiClient googleApiClient, String str, String str2, zzz zzz) {
        this.zzaoR = str;
        this.val$sessionId = str2;
        super(googleApiClient);
    }

    public final void zza(zzaxx zzaxx) throws RemoteException {
        try {
            zzaxx.zza(this.zzaoR, this.val$sessionId, this.zzaoT, (zzbaz) this);
        } catch (IllegalStateException unused) {
            zzad(2001);
        }
    }
}
