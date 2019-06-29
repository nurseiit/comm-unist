package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;

final class zzaem implements OnConnectionFailedListener {
    private /* synthetic */ zzajg zzXk;

    zzaem(zzael zzael, zzajg zzajg) {
        this.zzXk = zzajg;
    }

    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        zzaes.zzaC("Failed to connect to SafetyNet API");
        this.zzXk.zzg(null);
    }
}
