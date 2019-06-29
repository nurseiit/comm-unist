package com.google.firebase.storage;

import android.support.annotation.NonNull;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.RuntimeExecutionException;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzo implements OnCompleteListener<TResult> {
    final /* synthetic */ TaskCompletionSource zzaIk;
    private /* synthetic */ StorageTask zzcoZ;
    private /* synthetic */ Continuation zzcpa;

    zzo(StorageTask storageTask, Continuation continuation, TaskCompletionSource taskCompletionSource) {
        this.zzcoZ = storageTask;
        this.zzcpa = continuation;
        this.zzaIk = taskCompletionSource;
    }

    public final void onComplete(@NonNull Task<TResult> task) {
        try {
            Task task2 = (Task) this.zzcpa.then(this.zzcoZ);
            if (!this.zzaIk.getTask().isComplete()) {
                if (task2 == null) {
                    this.zzaIk.setException(new NullPointerException("Continuation returned null"));
                } else {
                    task2.addOnSuccessListener(new zzp(this));
                    task2.addOnFailureListener(new zzq(this));
                }
            }
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                this.zzaIk.setException((Exception) e.getCause());
            } else {
                this.zzaIk.setException(e);
            }
        } catch (Exception e2) {
            this.zzaIk.setException(e2);
        }
    }
}
