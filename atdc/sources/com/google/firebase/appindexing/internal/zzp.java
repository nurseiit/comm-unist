package com.google.firebase.appindexing.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzp implements OnCompleteListener<Void> {
    private /* synthetic */ TaskCompletionSource zzaCV;
    private /* synthetic */ zzk zzbVS;
    private /* synthetic */ zzm zzbVT;

    zzp(zzm zzm, zzk zzk, TaskCompletionSource taskCompletionSource) {
        this.zzbVT = zzm;
        this.zzbVS = zzk;
        this.zzaCV = taskCompletionSource;
    }

    public final void onComplete(@NonNull Task<Void> task) {
        this.zzbVT.zza(this.zzbVS, this.zzaCV, 0);
    }
}
