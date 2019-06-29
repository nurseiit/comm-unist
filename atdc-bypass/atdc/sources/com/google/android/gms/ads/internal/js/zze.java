package com.google.android.gms.ads.internal.js;

import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.overlay.zzag;
import com.google.android.gms.ads.internal.overlay.zzw;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.zzagz;
import com.google.android.gms.internal.zzaiy;
import com.google.android.gms.internal.zzaje;
import com.google.android.gms.internal.zzaka;
import com.google.android.gms.internal.zzakm;
import com.google.android.gms.internal.zzcu;
import com.google.android.gms.internal.zzig;
import com.google.android.gms.internal.zzim;
import com.google.android.gms.internal.zziv;
import com.google.android.gms.internal.zzji;
import com.google.android.gms.internal.zzqk;
import com.google.android.gms.internal.zzrd;
import com.google.android.gms.internal.zzrm;
import com.google.android.gms.internal.zzwv;
import com.google.android.gms.internal.zzzn;
import org.json.JSONObject;

@zzzn
public final class zze implements zza {
    private final zzaka zzJH;

    public zze(Context context, zzaje zzaje, @Nullable zzcu zzcu, zzv zzv) throws zzakm {
        this.zzJH = zzbs.zzbA().zza(context, new zziv(), false, false, zzcu, zzaje, null, null, zzv, zzig.zzde());
        this.zzJH.getWebView().setWillNotDraw(true);
    }

    private static void runOnUiThread(Runnable runnable) {
        zzji.zzds();
        if (zzaiy.zzil()) {
            runnable.run();
        } else {
            zzagz.zzZr.post(runnable);
        }
    }

    public final void destroy() {
        this.zzJH.destroy();
    }

    public final void zza(zzb zzb) {
        this.zzJH.zziw().zza(new zzk(this, zzb));
    }

    public final void zza(zzim zzim, zzw zzw, zzqk zzqk, zzag zzag, boolean z, zzrm zzrm, com.google.android.gms.ads.internal.zzw zzw2, zzwv zzwv) {
        this.zzJH.zziw().zza(zzim, zzw, zzqk, zzag, false, null, new com.google.android.gms.ads.internal.zzw(null), null, null);
    }

    public final void zza(String str, zzrd zzrd) {
        this.zzJH.zziw().zza(str, zzrd);
    }

    public final void zza(String str, JSONObject jSONObject) {
        runOnUiThread(new zzf(this, str, jSONObject));
    }

    public final void zzac(String str) {
        runOnUiThread(new zzh(this, String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", new Object[]{str})));
    }

    public final void zzad(String str) {
        runOnUiThread(new zzj(this, str));
    }

    public final void zzae(String str) {
        runOnUiThread(new zzi(this, str));
    }

    public final void zzb(String str, zzrd zzrd) {
        this.zzJH.zziw().zzb(str, zzrd);
    }

    public final void zzb(String str, JSONObject jSONObject) {
        this.zzJH.zzb(str, jSONObject);
    }

    public final zzaj zzeY() {
        return new zzak(this);
    }

    public final void zzi(String str, String str2) {
        runOnUiThread(new zzg(this, str, str2));
    }
}
