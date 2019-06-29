package com.google.firebase.storage;

import android.support.annotation.NonNull;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zze implements OnFailureListener {
    private /* synthetic */ TaskCompletionSource zzcoO;

    zze(StorageReference storageReference, TaskCompletionSource taskCompletionSource) {
        this.zzcoO = taskCompletionSource;
    }

    public final void onFailure(@NonNull Exception exception) {
        this.zzcoO.setException(exception);
    }
}
