package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.api.GoogleApi.zza;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzbas;
import com.google.android.gms.internal.zzbem;

public final class zzd {
    private zzbem zzaAM;
    private Looper zzrM;

    public final zzd zza(Looper looper) {
        zzbo.zzb((Object) looper, (Object) "Looper must not be null.");
        this.zzrM = looper;
        return this;
    }

    public final zzd zza(zzbem zzbem) {
        zzbo.zzb((Object) zzbem, (Object) "StatusExceptionMapper must not be null.");
        this.zzaAM = zzbem;
        return this;
    }

    public final zza zzpj() {
        if (this.zzaAM == null) {
            this.zzaAM = new zzbas();
        }
        if (this.zzrM == null) {
            this.zzrM = Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper();
        }
        return new zza(this.zzaAM, null, this.zzrM, null);
    }
}
