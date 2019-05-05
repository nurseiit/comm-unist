package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

public final class zzdu extends zzec {
    private List<Long> zzrr = null;

    public zzdu(zzdb zzdb, String str, String str2, zzax zzax, int i, int i2) {
        super(zzdb, str, str2, zzax, i, 31);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzT() throws IllegalAccessException, InvocationTargetException {
        this.zzro.zzbu = Long.valueOf(-1);
        this.zzro.zzbv = Long.valueOf(-1);
        if (this.zzrr == null) {
            this.zzrr = (List) this.zzrx.invoke(null, new Object[]{this.zzpJ.getContext()});
        }
        if (this.zzrr != null && this.zzrr.size() == 2) {
            synchronized (this.zzro) {
                this.zzro.zzbu = Long.valueOf(((Long) this.zzrr.get(0)).longValue());
                this.zzro.zzbv = Long.valueOf(((Long) this.zzrr.get(1)).longValue());
            }
        }
    }
}
