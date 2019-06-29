package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;

public final class zzdi extends zzec {
    public zzdi(zzdb zzdb, String str, String str2, zzax zzax, int i, int i2) {
        super(zzdb, str, str2, zzax, i, 3);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzT() throws IllegalAccessException, InvocationTargetException {
        synchronized (this.zzro) {
            this.zzro.zzaZ = Long.valueOf(-1);
            this.zzro.zzaZ = (Long) this.zzrx.invoke(null, new Object[]{this.zzpJ.getContext()});
        }
    }
}
