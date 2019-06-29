package com.google.android.gms.cast;

import com.google.android.gms.cast.CastRemoteDisplay.CastRemoteDisplaySessionCallbacks;
import com.google.android.gms.common.api.Status;

final class zzv implements CastRemoteDisplaySessionCallbacks {
    zzv(CastRemoteDisplayLocalService castRemoteDisplayLocalService) {
    }

    public final void onRemoteDisplayEnded(Status status) {
        CastRemoteDisplayLocalService.zzapq.zzb(String.format("Cast screen has ended: %d", new Object[]{Integer.valueOf(status.getStatusCode())}), new Object[0]);
        CastRemoteDisplayLocalService.zzR(false);
    }
}
