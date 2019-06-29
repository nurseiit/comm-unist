package com.google.android.gms.internal;

import java.util.Map;
import org.json.JSONObject;

final class zzrf implements Runnable {
    private /* synthetic */ Map zzIl;
    final /* synthetic */ zzaka zzJp;
    private /* synthetic */ zzre zzJq;

    zzrf(zzre zzre, Map map, zzaka zzaka) {
        this.zzJq = zzre;
        this.zzIl = map;
        this.zzJp = zzaka;
    }

    public final void run() {
        zzajc.zzaC("Received Http request.");
        JSONObject zzR = this.zzJq.zzR((String) this.zzIl.get("http_request"));
        if (zzR == null) {
            zzajc.e("Response should not be null.");
        } else {
            zzagz.zzZr.post(new zzrg(this, zzR));
        }
    }
}
