package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;

public final class zzdm extends zzec {
    public zzdm(zzdb zzdb, String str, String str2, zzax zzax, int i, int i2) {
        super(zzdb, str, str2, zzax, i, 5);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzT() throws IllegalAccessException, InvocationTargetException {
        this.zzro.zzbb = Long.valueOf(-1);
        this.zzro.zzbc = Long.valueOf(-1);
        int[] iArr = (int[]) this.zzrx.invoke(null, new Object[]{this.zzpJ.getContext()});
        synchronized (this.zzro) {
            this.zzro.zzbb = Long.valueOf((long) iArr[0]);
            this.zzro.zzbc = Long.valueOf((long) iArr[1]);
        }
    }
}
