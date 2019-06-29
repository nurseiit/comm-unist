package com.google.android.gms.tasks;

import java.util.concurrent.Callable;

final class zzo implements Runnable {
    private /* synthetic */ Callable zzZo;
    private /* synthetic */ zzn zzbMk;

    zzo(zzn zzn, Callable callable) {
        this.zzbMk = zzn;
        this.zzZo = callable;
    }

    public final void run() {
        try {
            this.zzbMk.setResult(this.zzZo.call());
        } catch (Exception e) {
            this.zzbMk.setException(e);
        }
    }
}
