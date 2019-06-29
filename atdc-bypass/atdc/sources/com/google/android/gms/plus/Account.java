package com.google.android.gms.plus;

import android.support.annotation.RequiresPermission;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;

@Deprecated
public interface Account {
    @Deprecated
    void clearDefaultAccount(GoogleApiClient googleApiClient);

    @RequiresPermission("android.permission.GET_ACCOUNTS")
    @Deprecated
    String getAccountName(GoogleApiClient googleApiClient);

    @Deprecated
    PendingResult<Status> revokeAccessAndDisconnect(GoogleApiClient googleApiClient);
}
