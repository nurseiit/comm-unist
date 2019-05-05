package com.google.android.gms.internal;

import android.os.Looper;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;

public final class zzbdw<L> {
    private volatile L mListener;
    private final zzbdx zzaEM;
    private final zzbdy<L> zzaEN;

    zzbdw(@NonNull Looper looper, @NonNull L l, @NonNull String str) {
        this.zzaEM = new zzbdx(this, looper);
        this.mListener = zzbo.zzb((Object) l, (Object) "Listener must not be null");
        this.zzaEN = new zzbdy(l, zzbo.zzcF(str));
    }

    public final void clear() {
        this.mListener = null;
    }

    public final void zza(zzbdz<? super L> zzbdz) {
        zzbo.zzb((Object) zzbdz, (Object) "Notifier must not be null");
        this.zzaEM.sendMessage(this.zzaEM.obtainMessage(1, zzbdz));
    }

    /* Access modifiers changed, original: final */
    public final void zzb(zzbdz<? super L> zzbdz) {
        Object obj = this.mListener;
        if (obj == null) {
            zzbdz.zzpT();
            return;
        }
        try {
            zzbdz.zzq(obj);
        } catch (RuntimeException e) {
            zzbdz.zzpT();
            throw e;
        }
    }

    public final boolean zzoc() {
        return this.mListener != null;
    }

    @NonNull
    public final zzbdy<L> zzqG() {
        return this.zzaEN;
    }
}
