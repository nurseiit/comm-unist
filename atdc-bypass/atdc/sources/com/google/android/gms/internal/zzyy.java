package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzbs;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

final class zzyy implements Runnable {
    final /* synthetic */ JSONObject zzRZ;
    final /* synthetic */ zzajg zzSa;
    final /* synthetic */ zzyx zzSb;

    zzyy(zzyx zzyx, JSONObject jSONObject, zzajg zzajg) {
        this.zzSb = zzyx;
        this.zzRZ = jSONObject;
        this.zzSa = zzajg;
    }

    public final void run() {
        try {
            zzaka zzgz = this.zzSb.zzgz();
            this.zzSb.zzRm.zzd(zzgz);
            WeakReference weakReference = new WeakReference(zzgz);
            zzgz.zziw().zza(this.zzSb.zza(weakReference), this.zzSb.zzb(weakReference));
            this.zzSb.zzi(zzgz);
            zzgz.zziw().zza(new zzyz(this, zzgz));
            zzgz.zziw().zza(new zzza(this));
            zzgz.loadUrl((String) zzbs.zzbL().zzd(zzmo.zzFs));
        } catch (Exception e) {
            zzajc.zzc("Exception occurred while getting video view", e);
            this.zzSa.zzg(null);
        }
    }
}
