package com.google.android.gms.auth.api.phone;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzf;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.internal.zzash;
import com.google.android.gms.internal.zzbas;
import com.google.android.gms.tasks.Task;

public abstract class SmsRetrieverClient extends GoogleApi<NoOptions> implements SmsRetrieverApi {
    private static final Api<NoOptions> API = new Api("SmsRetriever.API", zzajS, zzajR);
    private static final zzf<zzash> zzajR = new zzf();
    private static final zza<zzash, NoOptions> zzajS = new zza();

    public SmsRetrieverClient(@NonNull Activity activity) {
        super(activity, API, null, new zzbas());
    }

    public SmsRetrieverClient(@NonNull Context context) {
        super(context, API, null, new zzbas());
    }

    public abstract Task<Void> startSmsRetriever();
}
