package com.google.android.gms.internal;

import org.json.JSONObject;

final class zzrg implements Runnable {
    private /* synthetic */ JSONObject zzJr;
    private /* synthetic */ zzrf zzJs;

    zzrg(zzrf zzrf, JSONObject jSONObject) {
        this.zzJs = zzrf;
        this.zzJr = jSONObject;
    }

    public final void run() {
        this.zzJs.zzJp.zzb("fetchHttpRequestCompleted", this.zzJr);
        zzajc.zzaC("Dispatched http response.");
    }
}
