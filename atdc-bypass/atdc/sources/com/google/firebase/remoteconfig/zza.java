package com.google.firebase.remoteconfig;

import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.internal.zzbhh;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zza implements ResultCallback<zzbhh> {
    private /* synthetic */ TaskCompletionSource zzcny;
    private /* synthetic */ FirebaseRemoteConfig zzcnz;

    zza(FirebaseRemoteConfig firebaseRemoteConfig, TaskCompletionSource taskCompletionSource) {
        this.zzcnz = firebaseRemoteConfig;
        this.zzcny = taskCompletionSource;
    }

    public final /* synthetic */ void onResult(@NonNull Result result) {
        this.zzcnz.zza(this.zzcny, (zzbhh) result);
    }
}
