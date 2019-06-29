package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;

public final class zzdo extends zzec {
    private long startTime;

    public zzdo(zzdb zzdb, String str, String str2, zzax zzax, long j, int i, int i2) {
        super(zzdb, str, str2, zzax, i, 25);
        this.startTime = j;
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzT() throws IllegalAccessException, InvocationTargetException {
        long longValue = ((Long) this.zzrx.invoke(null, new Object[0])).longValue();
        synchronized (this.zzro) {
            this.zzro.zzbY = Long.valueOf(longValue);
            if (this.startTime != 0) {
                this.zzro.zzbn = Long.valueOf(longValue - this.startTime);
                this.zzro.zzbs = Long.valueOf(this.startTime);
            }
        }
    }
}
