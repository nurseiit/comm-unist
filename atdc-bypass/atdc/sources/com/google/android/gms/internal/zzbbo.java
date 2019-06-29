package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zze;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.internal.zzq;

public final class zzbbo<O extends ApiOptions> extends GoogleApi<O> {
    private final zza<? extends zzctk, zzctl> zzaBe;
    private final zzq zzaCA;
    private final zze zzaCy;
    private final zzbbi zzaCz;

    public zzbbo(@NonNull Context context, Api<O> api, Looper looper, @NonNull zze zze, @NonNull zzbbi zzbbi, zzq zzq, zza<? extends zzctk, zzctl> zza) {
        super(context, api, looper);
        this.zzaCy = zze;
        this.zzaCz = zzbbi;
        this.zzaCA = zzq;
        this.zzaBe = zza;
        this.zzaAN.zzb((GoogleApi) this);
    }

    public final zze zza(Looper looper, zzbdd<O> zzbdd) {
        this.zzaCz.zza(zzbdd);
        return this.zzaCy;
    }

    public final zzbej zza(Context context, Handler handler) {
        return new zzbej(context, handler, this.zzaCA, this.zzaBe);
    }

    public final zze zzpJ() {
        return this.zzaCy;
    }
}
