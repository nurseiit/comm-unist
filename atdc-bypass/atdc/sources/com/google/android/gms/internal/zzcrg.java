package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.People.LoadPeopleResult;
import com.google.android.gms.plus.Plus.zza;

abstract class zzcrg extends zza<LoadPeopleResult> {
    private zzcrg(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* synthetic */ zzcrg(GoogleApiClient googleApiClient, zzcrb zzcrb) {
        this(googleApiClient);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return new zzcrh(this, status);
    }
}
