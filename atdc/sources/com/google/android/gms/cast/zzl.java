package com.google.android.gms.cast;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.cast.Cast.CastApi.zza;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaxx;
import com.google.android.gms.internal.zzayi;
import com.google.android.gms.internal.zzbaz;

final class zzl extends zzayi {
    private /* synthetic */ String val$sessionId;

    zzl(zza zza, GoogleApiClient googleApiClient, String str) {
        this.val$sessionId = str;
        super(googleApiClient);
    }

    public final void zza(zzaxx zzaxx) throws RemoteException {
        if (TextUtils.isEmpty(this.val$sessionId)) {
            setResult(zzb(new Status(2001, "IllegalArgument: sessionId cannot be null or empty", null)));
            return;
        }
        try {
            zzaxx.zza(this.val$sessionId, (zzbaz) this);
        } catch (IllegalStateException unused) {
            zzad(2001);
        }
    }
}
