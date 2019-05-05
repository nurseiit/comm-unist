package com.google.android.gms.internal;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

final class zzcif implements Runnable {
    private /* synthetic */ zzcid zzbua;
    private /* synthetic */ AtomicReference zzbub;

    zzcif(zzcid zzcid, AtomicReference atomicReference) {
        this.zzbua = zzcid;
        this.zzbub = atomicReference;
    }

    public final void run() {
        synchronized (this.zzbub) {
            Object obj;
            try {
                zzcfd zzd = this.zzbua.zzbtU;
                if (zzd == null) {
                    this.zzbua.zzwF().zzyx().log("Failed to get app instance id");
                    this.zzbub.notify();
                    return;
                }
                this.zzbub.set(zzd.zzc(this.zzbua.zzwu().zzdV(null)));
                String str = (String) this.zzbub.get();
                if (str != null) {
                    this.zzbua.zzwt().zzee(str);
                    this.zzbua.zzwG().zzbrq.zzef(str);
                }
                this.zzbua.zzkP();
                obj = this.zzbub;
                obj.notify();
            } catch (RemoteException e) {
                try {
                    this.zzbua.zzwF().zzyx().zzj("Failed to get app instance id", e);
                    obj = this.zzbub;
                } catch (Throwable th) {
                    this.zzbub.notify();
                }
            }
        }
    }
}
