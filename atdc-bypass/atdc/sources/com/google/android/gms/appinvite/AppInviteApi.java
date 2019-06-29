package com.google.android.gms.appinvite;

import android.app.Activity;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;

@Deprecated
public interface AppInviteApi {
    PendingResult<Status> convertInvitation(@NonNull GoogleApiClient googleApiClient, String str);

    @Deprecated
    PendingResult<AppInviteInvitationResult> getInvitation(@NonNull GoogleApiClient googleApiClient, Activity activity, boolean z);

    @Deprecated
    PendingResult<Status> updateInvitationOnInstall(@NonNull GoogleApiClient googleApiClient, String str);
}
