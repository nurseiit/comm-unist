package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.plus.People;
import com.google.android.gms.plus.People.LoadPeopleResult;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.model.people.Person;
import java.util.Collection;

public final class zzcra implements People {
    public final Person getCurrentPerson(GoogleApiClient googleApiClient) {
        return Plus.zzc(googleApiClient, true).zzAf();
    }

    @SuppressLint({"MissingRemoteException"})
    public final PendingResult<LoadPeopleResult> load(GoogleApiClient googleApiClient, Collection<String> collection) {
        return googleApiClient.zzd(new zzcre(this, googleApiClient, collection));
    }

    @SuppressLint({"MissingRemoteException"})
    public final PendingResult<LoadPeopleResult> load(GoogleApiClient googleApiClient, String... strArr) {
        return googleApiClient.zzd(new zzcrf(this, googleApiClient, strArr));
    }

    @SuppressLint({"MissingRemoteException"})
    public final PendingResult<LoadPeopleResult> loadConnected(GoogleApiClient googleApiClient) {
        return googleApiClient.zzd(new zzcrd(this, googleApiClient));
    }

    @SuppressLint({"MissingRemoteException"})
    public final PendingResult<LoadPeopleResult> loadVisible(GoogleApiClient googleApiClient, int i, String str) {
        return googleApiClient.zzd(new zzcrb(this, googleApiClient, i, str));
    }

    @SuppressLint({"MissingRemoteException"})
    public final PendingResult<LoadPeopleResult> loadVisible(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.zzd(new zzcrc(this, googleApiClient, str));
    }
}
