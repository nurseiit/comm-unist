package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

public final class zzbap extends zzban {
    private zzbee<zzb, ?> zzaBu;
    private zzbey<zzb, ?> zzaBv;

    public zzbap(zzbef zzbef, TaskCompletionSource<Void> taskCompletionSource) {
        super(3, taskCompletionSource);
        this.zzaBu = zzbef.zzaBu;
        this.zzaBv = zzbef.zzaBv;
    }

    public final /* bridge */ /* synthetic */ void zza(@NonNull zzbbt zzbbt, boolean z) {
    }

    public final void zzb(zzbdd<?> zzbdd) throws RemoteException {
        this.zzaBu.zzb(zzbdd.zzpJ(), this.zzalE);
        if (this.zzaBu.zzqG() != null) {
            zzbdd.zzqs().put(this.zzaBu.zzqG(), new zzbef(this.zzaBu, this.zzaBv));
        }
    }

    public final /* bridge */ /* synthetic */ void zzp(@NonNull Status status) {
        super.zzp(status);
    }
}
