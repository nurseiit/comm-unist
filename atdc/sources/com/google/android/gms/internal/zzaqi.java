package com.google.android.gms.internal;

import android.content.Intent;
import com.google.android.gms.appinvite.AppInviteInvitationResult;
import com.google.android.gms.common.api.Status;

public final class zzaqi implements AppInviteInvitationResult {
    private final Status mStatus;
    private final Intent zzakf;

    public zzaqi(Status status, Intent intent) {
        this.mStatus = status;
        this.zzakf = intent;
    }

    public final Intent getInvitationIntent() {
        return this.zzakf;
    }

    public final Status getStatus() {
        return this.mStatus;
    }
}
