package com.google.android.gms.cast;

import android.os.Bundle;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;

final class zzy implements ConnectionCallbacks {
    private /* synthetic */ CastRemoteDisplayLocalService zzapJ;

    zzy(CastRemoteDisplayLocalService castRemoteDisplayLocalService) {
        this.zzapJ = castRemoteDisplayLocalService;
    }

    public final void onConnected(Bundle bundle) {
        this.zzapJ.zzbp("onConnected");
        this.zzapJ.zznd();
    }

    public final void onConnectionSuspended(int i) {
        CastRemoteDisplayLocalService.zzapq.zzf(String.format("[Instance: %s] ConnectionSuspended %d", new Object[]{this, Integer.valueOf(i)}), new Object[0]);
    }
}
