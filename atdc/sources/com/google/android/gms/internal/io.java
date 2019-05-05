package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.firebase.appinvite.FirebaseAppInvite;

public final class io extends FirebaseAppInvite {
    private final Bundle zzbVX;

    public io(Bundle bundle) {
        this.zzbVX = bundle;
    }

    public final String getInvitationId() {
        return this.zzbVX.getString("com.google.firebase.appinvite.fdl.extension.InvitationId", null);
    }
}
