package com.google.firebase.storage;

import android.support.annotation.NonNull;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.storage.StorageTask.ProvideError;

final class zzi implements zzaa<OnSuccessListener<? super TResult>, TResult> {
    private /* synthetic */ StorageTask zzcoZ;

    zzi(StorageTask storageTask) {
        this.zzcoZ = storageTask;
    }

    public final /* synthetic */ void zzi(@NonNull Object obj, @NonNull Object obj2) {
        OnSuccessListener onSuccessListener = (OnSuccessListener) obj;
        ProvideError provideError = (ProvideError) obj2;
        zzs.zzKV().zzc(this.zzcoZ);
        onSuccessListener.onSuccess(provideError);
    }
}
