package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.nearby.connection.Connections.StartAdvertisingResult;

abstract class zzcmh extends zzcmg<StartAdvertisingResult> {
    private zzcmh(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* synthetic */ zzcmh(GoogleApiClient googleApiClient, zzcln zzcln) {
        this(googleApiClient);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return new zzcmi(this, status);
    }
}
