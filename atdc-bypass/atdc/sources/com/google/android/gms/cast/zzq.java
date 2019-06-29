package com.google.android.gms.cast;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;

final class zzq implements OnConnectionFailedListener {
    private /* synthetic */ CastRemoteDisplayLocalService zzapJ;

    zzq(CastRemoteDisplayLocalService castRemoteDisplayLocalService) {
        this.zzapJ = castRemoteDisplayLocalService;
    }

    public final void onConnectionFailed(ConnectionResult connectionResult) {
        CastRemoteDisplayLocalService castRemoteDisplayLocalService = this.zzapJ;
        String valueOf = String.valueOf(connectionResult);
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 19);
        stringBuilder.append("Connection failed: ");
        stringBuilder.append(valueOf);
        castRemoteDisplayLocalService.zzbs(stringBuilder.toString());
        this.zzapJ.zzne();
    }
}
