package com.google.firebase.storage;

import android.app.Activity;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.abr;
import com.google.android.gms.internal.aby;
import com.google.firebase.storage.StorageTask.ProvideError;
import java.util.HashMap;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;

final class zzw<TListenerType, TResult extends ProvideError> {
    private final Queue<TListenerType> zzcpA = new ConcurrentLinkedQueue();
    private final HashMap<TListenerType, aby> zzcpB = new HashMap();
    private StorageTask<TResult> zzcpC;
    private int zzcpD;
    private zzaa<TListenerType, TResult> zzcpE;

    public zzw(@NonNull StorageTask<TResult> storageTask, int i, @NonNull zzaa<TListenerType, TResult> zzaa) {
        this.zzcpC = storageTask;
        this.zzcpD = i;
        this.zzcpE = zzaa;
    }

    public final void zzKZ() {
        if ((this.zzcpC.zzKR() & this.zzcpD) != 0) {
            ProvideError zzKS = this.zzcpC.zzKS();
            for (Object next : this.zzcpA) {
                aby aby = (aby) this.zzcpB.get(next);
                if (aby != null) {
                    aby.zzw(new zzz(this, next, zzKS));
                }
            }
        }
    }

    public final void zza(@Nullable Activity activity, @Nullable Executor executor, @NonNull TListenerType tListenerType) {
        Object obj;
        aby aby;
        zzbo.zzu(tListenerType);
        synchronized (this.zzcpC.mSyncObject) {
            obj = (this.zzcpC.zzKR() & this.zzcpD) != 0 ? 1 : null;
            this.zzcpA.add(tListenerType);
            aby = new aby(executor);
            this.zzcpB.put(tListenerType, aby);
            if (activity != null) {
                if (VERSION.SDK_INT >= 17) {
                    zzbo.zzb(activity.isDestroyed() ^ 1, (Object) "Activity is already destroyed!");
                }
                abr.zzLc().zza(activity, tListenerType, new zzx(this, tListenerType));
            }
        }
        if (obj != null) {
            aby.zzw(new zzy(this, tListenerType, this.zzcpC.zzKS()));
        }
    }

    public final void zzat(@NonNull TListenerType tListenerType) {
        zzbo.zzu(tListenerType);
        synchronized (this.zzcpC.mSyncObject) {
            this.zzcpB.remove(tListenerType);
            this.zzcpA.remove(tListenerType);
            abr.zzLc().zzau(tListenerType);
        }
    }
}
