package com.google.firebase.appinvite;

import android.os.Bundle;
import com.google.android.gms.internal.io;
import com.google.firebase.dynamiclinks.PendingDynamicLinkData;

public abstract class FirebaseAppInvite {
    public static FirebaseAppInvite getInvitation(PendingDynamicLinkData pendingDynamicLinkData) {
        Bundle zzJJ = pendingDynamicLinkData.zzJJ();
        return (zzJJ == null || zzJJ.getString("com.google.firebase.appinvite.fdl.extension.InvitationId", null) == null) ? null : new io(zzJJ);
    }

    public abstract String getInvitationId();
}
