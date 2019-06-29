package com.google.android.gms.internal;

import android.provider.Settings.SettingNotFoundException;
import java.lang.reflect.InvocationTargetException;

public final class zzdj extends zzec {
    public zzdj(zzdb zzdb, String str, String str2, zzax zzax, int i, int i2) {
        super(zzdb, str, str2, zzax, i, 49);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzT() throws IllegalAccessException, InvocationTargetException {
        this.zzro.zzbI = Integer.valueOf(2);
        try {
            boolean booleanValue = ((Boolean) this.zzrx.invoke(null, new Object[]{this.zzpJ.getApplicationContext()})).booleanValue();
            this.zzro.zzbI = Integer.valueOf(booleanValue);
        } catch (InvocationTargetException e) {
            if (!(e.getTargetException() instanceof SettingNotFoundException)) {
                throw e;
            }
        }
    }
}
