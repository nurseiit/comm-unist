package com.google.firebase.appindexing.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.GoogleApi;
import com.google.firebase.zzb;

final class zzj extends GoogleApi<NoOptions> {
    public zzj(Context context) {
        super(context, zzd.API, null, Looper.getMainLooper(), new zzb());
    }
}
