package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.Account;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.internal.zzh;

public final class zzcqv implements Account {
    public final void clearDefaultAccount(GoogleApiClient googleApiClient) {
        zzh zzc = Plus.zzc(googleApiClient, false);
        if (zzc != null) {
            zzc.zzAe();
        }
    }

    public final String getAccountName(GoogleApiClient googleApiClient) {
        return Plus.zzc(googleApiClient, true).getAccountName();
    }

    @SuppressLint({"MissingRemoteException"})
    public final PendingResult<Status> revokeAccessAndDisconnect(GoogleApiClient googleApiClient) {
        return googleApiClient.zze(new zzcqw(this, googleApiClient));
    }
}
