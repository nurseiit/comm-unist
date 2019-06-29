package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;

@zzzn
public final class zzew extends zzez {
    private final zzct zzsi;
    private final zzcu zzsj;
    private final zzcr zzsk;
    private boolean zzsl = false;

    public zzew(String str, Context context, boolean z) {
        this.zzsi = zzct.zza(str, context, z);
        this.zzsj = new zzcu(this.zzsi);
        this.zzsk = z ? null : zzcr.zzb(context);
    }

    private final IObjectWrapper zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, boolean z) {
        try {
            Uri uri = (Uri) zzn.zzE(iObjectWrapper);
            Context context = (Context) zzn.zzE(iObjectWrapper2);
            return zzn.zzw(z ? this.zzsj.zza(uri, context) : this.zzsj.zza(uri, context, null));
        } catch (zzcv unused) {
            return null;
        }
    }

    public final IObjectWrapper zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        return zza(iObjectWrapper, iObjectWrapper2, true);
    }

    public final String zza(IObjectWrapper iObjectWrapper, String str) {
        return this.zzsi.zza((Context) zzn.zzE(iObjectWrapper), str);
    }

    public final String zza(IObjectWrapper iObjectWrapper, byte[] bArr) {
        Context context = (Context) zzn.zzE(iObjectWrapper);
        String zza = this.zzsi.zza(context, bArr);
        if (this.zzsk == null || !this.zzsl) {
            return zza;
        }
        zza = zzcr.zza(zza, this.zzsk.zza(context, bArr));
        this.zzsl = false;
        return zza;
    }

    public final boolean zza(IObjectWrapper iObjectWrapper) {
        return this.zzsj.zza((Uri) zzn.zzE(iObjectWrapper));
    }

    public final String zzaf() {
        return "ms";
    }

    public final IObjectWrapper zzb(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        return zza(iObjectWrapper, iObjectWrapper2, false);
    }

    public final void zzb(String str, String str2) {
        this.zzsj.zzb(str, str2);
    }

    public final boolean zzb(IObjectWrapper iObjectWrapper) {
        return this.zzsj.zzc((Uri) zzn.zzE(iObjectWrapper));
    }

    public final boolean zzb(String str, boolean z) {
        if (this.zzsk == null) {
            return false;
        }
        this.zzsk.zza(new Info(str, z));
        this.zzsl = true;
        return true;
    }

    public final String zzc(IObjectWrapper iObjectWrapper) {
        return zza(iObjectWrapper, null);
    }

    public final void zzd(IObjectWrapper iObjectWrapper) {
        this.zzsj.zza((MotionEvent) zzn.zzE(iObjectWrapper));
    }

    public final void zzk(String str) {
        this.zzsj.zzk(str);
    }
}
