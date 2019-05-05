package com.google.android.gms.nearby.messages.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbay;
import com.google.android.gms.internal.zzbaz;
import com.google.android.gms.internal.zzbdw;
import com.google.android.gms.nearby.Nearby;

abstract class zzav extends zzbay<Status, zzah> {
    private final zzbdw<zzbaz<Status>> zzbzo;

    public zzav(GoogleApiClient googleApiClient) {
        super(Nearby.MESSAGES_API, googleApiClient);
        this.zzbzo = googleApiClient.zzp(this);
    }

    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((Status) obj);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return status;
    }

    /* Access modifiers changed, original: final */
    public final zzbdw<zzbaz<Status>> zzzX() {
        return this.zzbzo;
    }
}
