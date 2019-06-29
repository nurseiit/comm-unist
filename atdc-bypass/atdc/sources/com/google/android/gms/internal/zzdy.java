package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;

public final class zzdy extends zzec {
    public zzdy(zzdb zzdb, String str, String str2, zzax zzax, int i, int i2) {
        super(zzdb, str, str2, zzax, i, 48);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzT() throws IllegalAccessException, InvocationTargetException {
        this.zzro.zzbH = Integer.valueOf(2);
        boolean booleanValue = ((Boolean) this.zzrx.invoke(null, new Object[]{this.zzpJ.getApplicationContext()})).booleanValue();
        synchronized (this.zzro) {
            zzax zzax;
            Integer valueOf;
            if (booleanValue) {
                try {
                    zzax = this.zzro;
                    valueOf = Integer.valueOf(1);
                } catch (Throwable th) {
                }
            } else {
                zzax = this.zzro;
                valueOf = Integer.valueOf(0);
            }
            zzax.zzbH = valueOf;
        }
    }
}
