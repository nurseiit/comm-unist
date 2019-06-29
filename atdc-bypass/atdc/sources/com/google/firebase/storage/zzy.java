package com.google.firebase.storage;

import com.google.firebase.storage.StorageTask.ProvideError;

final class zzy implements Runnable {
    private /* synthetic */ Object zzcpF;
    private /* synthetic */ zzw zzcpG;
    private /* synthetic */ ProvideError zzcpH;

    zzy(zzw zzw, Object obj, ProvideError provideError) {
        this.zzcpG = zzw;
        this.zzcpF = obj;
        this.zzcpH = provideError;
    }

    public final void run() {
        this.zzcpG.zzcpE.zzi(this.zzcpF, this.zzcpH);
    }
}
