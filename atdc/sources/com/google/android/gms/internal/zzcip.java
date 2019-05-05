package com.google.android.gms.internal;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

final class zzcip implements Runnable {
    private /* synthetic */ boolean zzbtw;
    private /* synthetic */ zzcid zzbua;
    private /* synthetic */ AtomicReference zzbub;

    zzcip(zzcid zzcid, AtomicReference atomicReference, boolean z) {
        this.zzbua = zzcid;
        this.zzbub = atomicReference;
        this.zzbtw = z;
    }

    public final void run() {
        synchronized (this.zzbub) {
            Object obj;
            try {
                zzcfd zzd = this.zzbua.zzbtU;
                if (zzd == null) {
                    this.zzbua.zzwF().zzyx().log("Failed to get user properties");
                    this.zzbub.notify();
                    return;
                }
                this.zzbub.set(zzd.zza(this.zzbua.zzwu().zzdV(null), this.zzbtw));
                this.zzbua.zzkP();
                obj = this.zzbub;
                obj.notify();
            } catch (RemoteException e) {
                try {
                    this.zzbua.zzwF().zzyx().zzj("Failed to get user properties", e);
                    obj = this.zzbub;
                } catch (Throwable th) {
                    this.zzbub.notify();
                }
            }
        }
    }
}
