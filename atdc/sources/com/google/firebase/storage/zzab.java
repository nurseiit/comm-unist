package com.google.firebase.storage;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.util.Log;
import com.google.android.gms.internal.abu;
import com.google.android.gms.internal.acf;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.storage.StorageMetadata.Builder;
import org.json.JSONException;

final class zzab implements Runnable {
    private final StorageReference zzcoe;
    private final TaskCompletionSource<StorageMetadata> zzcof;
    private abu zzcog;
    private StorageMetadata zzcor = null;
    private final StorageMetadata zzcpJ;

    public zzab(@NonNull StorageReference storageReference, @NonNull TaskCompletionSource<StorageMetadata> taskCompletionSource, @NonNull StorageMetadata storageMetadata) {
        this.zzcoe = storageReference;
        this.zzcof = taskCompletionSource;
        this.zzcpJ = storageMetadata;
        this.zzcog = new abu(this.zzcoe.getStorage().getApp(), this.zzcoe.getStorage().getMaxOperationRetryTimeMillis());
    }

    public final void run() {
        try {
            acf zza = this.zzcoe.zzKO().zza(this.zzcoe.zzKP(), this.zzcpJ.zzKN());
            this.zzcog.zza(zza, true);
            if (zza.zzLk()) {
                try {
                    this.zzcor = new Builder(zza.zzLn(), this.zzcoe).build();
                } catch (RemoteException | JSONException e) {
                    String str = "UpdateMetadataTask";
                    String str2 = "Unable to parse a valid JSON object from resulting metadata:";
                    String valueOf = String.valueOf(zza.zzLi());
                    Log.e(str, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2), e);
                    this.zzcof.setException(StorageException.fromException(e));
                    return;
                }
            }
            if (this.zzcof != null) {
                zza.zza(this.zzcof, this.zzcor);
            }
        } catch (RemoteException | JSONException e2) {
            Log.e("UpdateMetadataTask", "Unable to create the request from metadata.", e2);
            this.zzcof.setException(StorageException.fromException(e2));
        }
    }
}
