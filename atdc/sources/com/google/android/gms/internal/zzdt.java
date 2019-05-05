package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;

public final class zzdt extends zzec {
    private static volatile String zzaY;
    private static final Object zzrl = new Object();

    public zzdt(zzdb zzdb, String str, String str2, zzax zzax, int i, int i2) {
        super(zzdb, str, str2, zzax, i, 1);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzT() throws IllegalAccessException, InvocationTargetException {
        this.zzro.zzaY = "E";
        if (zzaY == null) {
            synchronized (zzrl) {
                if (zzaY == null) {
                    zzaY = (String) this.zzrx.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.zzro) {
            this.zzro.zzaY = zzaY;
        }
    }
}
