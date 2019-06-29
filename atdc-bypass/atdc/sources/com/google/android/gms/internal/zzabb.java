package com.google.android.gms.internal;

import org.json.JSONObject;

final class zzabb implements Runnable {
    private /* synthetic */ zzaaz zzUc;
    final /* synthetic */ JSONObject zzUd;
    final /* synthetic */ String zzUe;

    zzabb(zzaaz zzaaz, JSONObject jSONObject, String str) {
        this.zzUc = zzaaz;
        this.zzUd = jSONObject;
        this.zzUe = str;
    }

    public final void run() {
        this.zzUc.zzUb = zzaaz.zzRl.zzb(null);
        this.zzUc.zzUb.zza(new zzabc(this), new zzabd(this));
    }
}
