package com.google.android.gms.internal;

import com.google.android.gms.auth.api.proxy.ProxyResponse;

final class zzasp extends zzarx {
    private /* synthetic */ zzaso zzalL;

    zzasp(zzaso zzaso) {
        this.zzalL = zzaso;
    }

    public final void zza(ProxyResponse proxyResponse) {
        this.zzalL.setResult(new zzasq(proxyResponse));
    }
}
