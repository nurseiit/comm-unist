package com.google.android.gms.internal;

import android.app.Activity;
import com.google.android.gms.appinvite.AppInviteApi;
import com.google.android.gms.appinvite.AppInviteInvitationResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;

public final class zzapy implements AppInviteApi {
    public final PendingResult<Status> convertInvitation(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.zzd(new zzaqd(this, googleApiClient, str));
    }

    public final PendingResult<AppInviteInvitationResult> getInvitation(GoogleApiClient googleApiClient, Activity activity, boolean z) {
        return googleApiClient.zzd(new zzaqf(this, googleApiClient, activity, z));
    }

    public final PendingResult<Status> updateInvitationOnInstall(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.zzd(new zzaqb(this, googleApiClient, str));
    }
}
