package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzf;
import com.google.android.gms.common.api.GoogleApi;

public final class zk extends GoogleApi<NoOptions> {
    private static Api<NoOptions> API = new Api("DynamicLinks.API", zzajS, zzajR);
    private static final zzf<zm> zzajR = new zzf();
    private static final zza<zm, NoOptions> zzajS = new zl();

    public zk(@NonNull Context context) {
        super(context, API, null, GoogleApi.zza.zzaAO);
    }
}
