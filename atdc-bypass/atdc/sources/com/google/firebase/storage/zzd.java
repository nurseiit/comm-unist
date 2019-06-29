package com.google.firebase.storage;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzd implements OnSuccessListener<StorageMetadata> {
    private /* synthetic */ TaskCompletionSource zzcoO;

    zzd(StorageReference storageReference, TaskCompletionSource taskCompletionSource) {
        this.zzcoO = taskCompletionSource;
    }

    public final /* synthetic */ void onSuccess(Object obj) {
        this.zzcoO.setResult(((StorageMetadata) obj).getDownloadUrl());
    }
}
