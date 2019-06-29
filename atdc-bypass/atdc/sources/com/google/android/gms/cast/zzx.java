package com.google.android.gms.cast;

import com.google.android.gms.cast.CastRemoteDisplay.CastRemoteDisplaySessionResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;

final class zzx implements ResultCallback<CastRemoteDisplaySessionResult> {
    private /* synthetic */ CastRemoteDisplayLocalService zzapJ;

    zzx(CastRemoteDisplayLocalService castRemoteDisplayLocalService) {
        this.zzapJ = castRemoteDisplayLocalService;
    }

    public final /* synthetic */ void onResult(Result result) {
        CastRemoteDisplayLocalService castRemoteDisplayLocalService;
        String str;
        if (((CastRemoteDisplaySessionResult) result).getStatus().isSuccess()) {
            castRemoteDisplayLocalService = this.zzapJ;
            str = "remote display stopped";
        } else {
            castRemoteDisplayLocalService = this.zzapJ;
            str = "Unable to stop the remote display, result unsuccessful";
        }
        castRemoteDisplayLocalService.zzbp(str);
        this.zzapJ.zzPO = null;
    }
}
