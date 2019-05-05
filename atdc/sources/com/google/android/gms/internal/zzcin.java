package com.google.android.gms.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

final class zzcin implements Runnable {
    private /* synthetic */ String zzbjh;
    private /* synthetic */ String zzbth;
    private /* synthetic */ String zzbti;
    private /* synthetic */ boolean zzbtw;
    private /* synthetic */ zzcid zzbua;
    private /* synthetic */ AtomicReference zzbub;

    zzcin(zzcid zzcid, AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        this.zzbua = zzcid;
        this.zzbub = atomicReference;
        this.zzbjh = str;
        this.zzbth = str2;
        this.zzbti = str3;
        this.zzbtw = z;
    }

    public final void run() {
        synchronized (this.zzbub) {
            Object zza;
            try {
                zzcfd zzd = this.zzbua.zzbtU;
                if (zzd == null) {
                    this.zzbua.zzwF().zzyx().zzd("Failed to get user properties", zzcfl.zzdZ(this.zzbjh), this.zzbth, this.zzbti);
                    this.zzbub.set(Collections.emptyList());
                    this.zzbub.notify();
                    return;
                }
                AtomicReference atomicReference;
                if (TextUtils.isEmpty(this.zzbjh)) {
                    atomicReference = this.zzbub;
                    zza = zzd.zza(this.zzbth, this.zzbti, this.zzbtw, this.zzbua.zzwu().zzdV(this.zzbua.zzwF().zzyE()));
                } else {
                    atomicReference = this.zzbub;
                    zza = zzd.zza(this.zzbjh, this.zzbth, this.zzbti, this.zzbtw);
                }
                atomicReference.set(zza);
                this.zzbua.zzkP();
                zza = this.zzbub;
                zza.notify();
            } catch (RemoteException e) {
                try {
                    this.zzbua.zzwF().zzyx().zzd("Failed to get user properties", zzcfl.zzdZ(this.zzbjh), this.zzbth, e);
                    this.zzbub.set(Collections.emptyList());
                    zza = this.zzbub;
                } catch (Throwable th) {
                    this.zzbub.notify();
                }
            }
        }
    }
}
