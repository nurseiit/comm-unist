package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;

final class zzbcs implements OnConnectionFailedListener {
    private /* synthetic */ zzben zzaDP;

    zzbcs(zzbcp zzbcp, zzben zzben) {
        this.zzaDP = zzben;
    }

    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        this.zzaDP.setResult(new Status(8));
    }
}
