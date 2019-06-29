package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import com.google.android.gms.appinvite.AppInviteInvitationResult;
import com.google.android.gms.common.api.GoogleApiClient;
import java.lang.ref.WeakReference;

final class zzaqf extends zzaqa<AppInviteInvitationResult> {
    private final WeakReference<Activity> zzaka;
    private final boolean zzakb;
    private final Intent zzakc;

    public zzaqf(zzapy zzapy, GoogleApiClient googleApiClient, Activity activity, boolean z) {
        super(googleApiClient);
        this.zzakb = z;
        this.zzaka = new WeakReference(activity);
        this.zzakc = activity != null ? activity.getIntent() : null;
    }
}
