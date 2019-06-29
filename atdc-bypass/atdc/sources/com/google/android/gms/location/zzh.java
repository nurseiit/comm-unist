package com.google.android.gms.location;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.internal.zzbdy;
import com.google.android.gms.internal.zzbey;
import com.google.android.gms.internal.zzcdj;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzh extends zzbey<zzcdj, LocationCallback> {
    zzh(FusedLocationProviderClient fusedLocationProviderClient, zzbdy zzbdy) {
        super(zzbdy);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zzc(zzb zzb, TaskCompletionSource taskCompletionSource) throws RemoteException {
        ((zzcdj) zzb).zzb(zzqG(), null);
    }
}
