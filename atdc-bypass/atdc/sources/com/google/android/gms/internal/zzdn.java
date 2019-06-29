package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;

public final class zzdn extends zzec {
    private static volatile Long zzbF;
    private static final Object zzrl = new Object();

    public zzdn(zzdb zzdb, String str, String str2, zzax zzax, int i, int i2) {
        super(zzdb, str, str2, zzax, i, 44);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzT() throws IllegalAccessException, InvocationTargetException {
        if (zzbF == null) {
            synchronized (zzrl) {
                if (zzbF == null) {
                    zzbF = (Long) this.zzrx.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.zzro) {
            this.zzro.zzbF = zzbF;
        }
    }
}
