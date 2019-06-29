package com.google.android.gms.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.WeakHashMap;

public final class zzbbt {
    private final Map<zzbbe<?>, Boolean> zzaCR = Collections.synchronizedMap(new WeakHashMap());
    private final Map<TaskCompletionSource<?>, Boolean> zzaCS = Collections.synchronizedMap(new WeakHashMap());

    private final void zza(boolean z, Status status) {
        synchronized (this.zzaCR) {
            HashMap hashMap = new HashMap(this.zzaCR);
        }
        synchronized (this.zzaCS) {
            HashMap hashMap2 = new HashMap(this.zzaCS);
        }
        for (Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((zzbbe) entry.getKey()).zzs(status);
            }
        }
        for (Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((TaskCompletionSource) entry2.getKey()).trySetException(new ApiException(status));
            }
        }
    }

    /* Access modifiers changed, original: final */
    public final void zza(zzbbe<? extends Result> zzbbe, boolean z) {
        this.zzaCR.put(zzbbe, Boolean.valueOf(z));
        zzbbe.zza(new zzbbu(this, zzbbe));
    }

    /* Access modifiers changed, original: final */
    public final <TResult> void zza(TaskCompletionSource<TResult> taskCompletionSource, boolean z) {
        this.zzaCS.put(taskCompletionSource, Boolean.valueOf(z));
        taskCompletionSource.getTask().addOnCompleteListener(new zzbbv(this, taskCompletionSource));
    }

    /* Access modifiers changed, original: final */
    public final boolean zzpO() {
        return (this.zzaCR.isEmpty() && this.zzaCS.isEmpty()) ? false : true;
    }

    public final void zzpP() {
        zza(false, zzbdb.zzaEc);
    }

    public final void zzpQ() {
        zza(true, zzbev.zzaFj);
    }
}
