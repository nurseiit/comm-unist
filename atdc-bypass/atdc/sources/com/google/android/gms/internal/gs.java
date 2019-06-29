package com.google.android.gms.internal;

import com.google.android.gms.common.api.BooleanResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wallet.IsReadyToPayRequest;
import com.google.android.gms.wallet.Wallet.zza;

final class gs extends zza<BooleanResult> {
    gs(gl glVar, GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(gu guVar) {
        guVar.zza(IsReadyToPayRequest.newBuilder().build(), (zzbaz) this);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return new BooleanResult(status, false);
    }
}