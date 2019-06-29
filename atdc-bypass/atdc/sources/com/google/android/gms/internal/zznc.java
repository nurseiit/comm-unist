package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import android.view.View;
import com.google.android.gms.ads.internal.zzag;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;

@zzzn
public final class zznc extends zznf {
    private final zzag zzHe;
    @Nullable
    private final String zzHf;
    private final String zzHg;

    public zznc(zzag zzag, @Nullable String str, String str2) {
        this.zzHe = zzag;
        this.zzHf = str;
        this.zzHg = str2;
    }

    public final String getContent() {
        return this.zzHg;
    }

    public final void recordClick() {
        this.zzHe.zzaL();
    }

    public final void recordImpression() {
        this.zzHe.zzaM();
    }

    public final String zzdX() {
        return this.zzHf;
    }

    public final void zzi(@Nullable IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper != null) {
            this.zzHe.zzc((View) zzn.zzE(iObjectWrapper));
        }
    }
}
