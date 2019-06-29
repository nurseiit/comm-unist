package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;

public final class zzdk extends zzec {
    private static volatile String zzrk;
    private static final Object zzrl = new Object();

    public zzdk(zzdb zzdb, String str, String str2, zzax zzax, int i, int i2) {
        super(zzdb, str, str2, zzax, i, 29);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzT() throws IllegalAccessException, InvocationTargetException {
        this.zzro.zzbt = "E";
        if (zzrk == null) {
            synchronized (zzrl) {
                if (zzrk == null) {
                    zzrk = (String) this.zzrx.invoke(null, new Object[]{this.zzpJ.getContext()});
                }
            }
        }
        synchronized (this.zzro) {
            this.zzro.zzbt = zzbt.zza(zzrk.getBytes(), true);
        }
    }
}
