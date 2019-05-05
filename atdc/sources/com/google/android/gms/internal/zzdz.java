package com.google.android.gms.internal;

import android.util.DisplayMetrics;
import android.view.View;
import com.google.android.gms.ads.internal.zzbs;
import java.lang.reflect.InvocationTargetException;

public final class zzdz extends zzec {
    private final View zzru;

    public zzdz(zzdb zzdb, String str, String str2, zzax zzax, int i, int i2, View view) {
        super(zzdb, str, str2, zzax, i, 57);
        this.zzru = view;
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzT() throws IllegalAccessException, InvocationTargetException {
        if (this.zzru != null) {
            DisplayMetrics displayMetrics = this.zzpJ.getContext().getResources().getDisplayMetrics();
            boolean booleanValue = ((Boolean) zzbs.zzbL().zzd(zzmo.zzEY)).booleanValue();
            zzdh zzdh = new zzdh((String) this.zzrx.invoke(null, new Object[]{this.zzru, displayMetrics, Boolean.valueOf(booleanValue)}));
            zzaz zzaz = new zzaz();
            zzaz.zzcu = zzdh.zzrj;
            zzaz.zzcv = zzdh.zzcv;
            zzaz.zzcw = zzdh.zzcw;
            this.zzro.zzbR = zzaz;
        }
    }
}
