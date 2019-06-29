package com.google.android.gms.safetynet;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.internal.zzbeq;
import com.google.android.gms.internal.zzcry;
import com.google.android.gms.internal.zzcsn;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzj extends zzbeq<zzcsn, Void> {
    zzj(SafetyNetClient safetyNetClient) {
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb, TaskCompletionSource taskCompletionSource) throws RemoteException {
        zzcsn zzcsn = (zzcsn) zzb;
        ((zzcry) zzcsn.zzrf()).zza(new zzk(this, taskCompletionSource));
    }
}
