package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;

public final class zzdv extends zzec {
    private final StackTraceElement[] zzrs;

    public zzdv(zzdb zzdb, String str, String str2, zzax zzax, int i, int i2, StackTraceElement[] stackTraceElementArr) {
        super(zzdb, str, str2, zzax, i, 45);
        this.zzrs = stackTraceElementArr;
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzT() throws IllegalAccessException, InvocationTargetException {
        if (this.zzrs != null) {
            zzcz zzcz = new zzcz((String) this.zzrx.invoke(null, new Object[]{this.zzrs}));
            synchronized (this.zzro) {
                this.zzro.zzbG = zzcz.zzqy;
                if (zzcz.zzqz.booleanValue()) {
                    this.zzro.zzbO = Integer.valueOf(zzcz.zzqA.booleanValue() ^ 1);
                }
            }
        }
    }
}
