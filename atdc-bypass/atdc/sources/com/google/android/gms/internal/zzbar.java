package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.util.Log;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

public final class zzbar extends zzban {
    private zzbdy<?> zzaBy;

    public zzbar(zzbdy<?> zzbdy, TaskCompletionSource<Void> taskCompletionSource) {
        super(4, taskCompletionSource);
        this.zzaBy = zzbdy;
    }

    public final /* bridge */ /* synthetic */ void zza(@NonNull zzbbt zzbbt, boolean z) {
    }

    public final void zzb(zzbdd<?> zzbdd) throws RemoteException {
        zzbef zzbef = (zzbef) zzbdd.zzqs().remove(this.zzaBy);
        if (zzbef != null) {
            zzbef.zzaBv.zzc(zzbdd.zzpJ(), this.zzalE);
            zzbef.zzaBu.zzqH();
            return;
        }
        Log.wtf("UnregisterListenerTask", "Received call to unregister a listener without a matching registration call.", new Exception());
        this.zzalE.trySetException(new ApiException(Status.zzaBo));
    }

    public final /* bridge */ /* synthetic */ void zzp(@NonNull Status status) {
        super.zzp(status);
    }
}
