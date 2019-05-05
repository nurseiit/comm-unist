package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.tasks.TaskCompletionSource;

final class jb<ResultT, CallbackT> extends zzbeq<jx, ResultT> implements ki<ResultT> {
    private TaskCompletionSource<ResultT> zzalE;
    private kj<ResultT, CallbackT> zzbWB;

    public jb(kj<ResultT, CallbackT> kjVar) {
        this.zzbWB = kjVar;
    }

    public final void zza(ResultT resultT, Status status) {
        zzbo.zzb(this.zzalE, (Object) "doExecute must be called before onComplete");
        if (status != null) {
            this.zzalE.setException(jz.zzK(status));
        } else {
            this.zzalE.setResult(resultT);
        }
    }
}
