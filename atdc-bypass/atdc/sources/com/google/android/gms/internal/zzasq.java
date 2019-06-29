package com.google.android.gms.internal;

import com.google.android.gms.auth.api.proxy.ProxyApi.ProxyResult;
import com.google.android.gms.auth.api.proxy.ProxyResponse;
import com.google.android.gms.common.api.Status;

final class zzasq implements ProxyResult {
    private Status mStatus;
    private ProxyResponse zzalM;

    public zzasq(ProxyResponse proxyResponse) {
        this.zzalM = proxyResponse;
        this.mStatus = Status.zzaBm;
    }

    public zzasq(Status status) {
        this.mStatus = status;
    }

    public final ProxyResponse getResponse() {
        return this.zzalM;
    }

    public final Status getStatus() {
        return this.mStatus;
    }
}
