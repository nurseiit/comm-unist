package com.google.firebase.storage;

import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.storage.StreamDownloadTask.TaskSnapshot;

final class zzg implements OnSuccessListener<TaskSnapshot> {
    private /* synthetic */ TaskCompletionSource zzcoP;

    zzg(StorageReference storageReference, TaskCompletionSource taskCompletionSource) {
        this.zzcoP = taskCompletionSource;
    }

    public final /* synthetic */ void onSuccess(Object obj) {
        if (!this.zzcoP.getTask().isComplete()) {
            Log.e("StorageReference", "getBytes 'succeeded', but failed to set a Result.");
            this.zzcoP.setException(StorageException.fromErrorStatus(Status.zzaBo));
        }
    }
}
