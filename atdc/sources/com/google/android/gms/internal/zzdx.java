package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;

public final class zzdx extends zzec {
    private static final Object zzrl = new Object();
    private static volatile Long zzrt;

    public zzdx(zzdb zzdb, String str, String str2, zzax zzax, int i, int i2) {
        super(zzdb, str, str2, zzax, i, 33);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzT() throws IllegalAccessException, InvocationTargetException {
        if (zzrt == null) {
            synchronized (zzrl) {
                if (zzrt == null) {
                    zzrt = (Long) this.zzrx.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.zzro) {
            this.zzro.zzbw = zzrt;
        }
    }
}
