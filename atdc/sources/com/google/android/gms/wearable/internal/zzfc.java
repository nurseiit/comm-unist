package com.google.android.gms.wearable.internal;

import com.google.android.gms.internal.zzbaz;

class zzfc<T> extends zza {
    private zzbaz<T> zzajL;

    public zzfc(zzbaz<T> zzbaz) {
        this.zzajL = zzbaz;
    }

    public final void zzR(T t) {
        zzbaz zzbaz = this.zzajL;
        if (zzbaz != null) {
            zzbaz.setResult(t);
            this.zzajL = null;
        }
    }
}
