package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;

public final class zzdw extends zzec {
    public zzdw(zzdb zzdb, String str, String str2, zzax zzax, int i, int i2) {
        super(zzdb, str, str2, zzax, i, 51);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzT() throws IllegalAccessException, InvocationTargetException {
        synchronized (this.zzro) {
            zzda zzda = new zzda((String) this.zzrx.invoke(null, new Object[0]));
            this.zzro.zzbJ = zzda.zzqB;
            this.zzro.zzbK = zzda.zzqC;
        }
    }
}
