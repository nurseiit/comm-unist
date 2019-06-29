package com.google.firebase.storage;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.util.Log;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.abu;
import com.google.android.gms.internal.ace;
import com.google.android.gms.internal.acf;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zza implements Runnable {
    private StorageReference zzcoe;
    private TaskCompletionSource<Void> zzcof;
    private abu zzcog = new abu(this.zzcoe.getStorage().getApp(), this.zzcoe.getStorage().getMaxOperationRetryTimeMillis());

    public zza(@NonNull StorageReference storageReference, @NonNull TaskCompletionSource<Void> taskCompletionSource) {
        zzbo.zzu(storageReference);
        zzbo.zzu(taskCompletionSource);
        this.zzcoe = storageReference;
        this.zzcof = taskCompletionSource;
    }

    public final void run() {
        try {
            acf zzw = ace.zzg(this.zzcoe.getStorage().getApp()).zzw(this.zzcoe.zzKP());
            this.zzcog.zza(zzw, true);
            zzw.zza(this.zzcof, null);
        } catch (RemoteException e) {
            Log.e("DeleteStorageTask", "Unable to create Firebase Storage network request.", e);
            this.zzcof.setException(StorageException.fromException(e));
        }
    }
}
