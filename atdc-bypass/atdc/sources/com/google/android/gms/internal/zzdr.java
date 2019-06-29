package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;

public final class zzdr extends zzec {
    private static final Object zzrl = new Object();
    private static volatile Long zzrp;

    public zzdr(zzdb zzdb, String str, String str2, zzax zzax, int i, int i2) {
        super(zzdb, str, str2, zzax, i, 22);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzT() throws IllegalAccessException, InvocationTargetException {
        if (zzrp == null) {
            synchronized (zzrl) {
                if (zzrp == null) {
                    zzrp = (Long) this.zzrx.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.zzro) {
            this.zzro.zzbr = zzrp;
        }
    }
}
