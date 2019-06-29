package com.google.android.gms.safetynet;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzf;
import com.google.android.gms.internal.zzcsa;
import com.google.android.gms.internal.zzcsn;
import com.google.android.gms.internal.zzcso;

public final class SafetyNet {
    @Deprecated
    public static final Api<NoOptions> API = new Api("SafetyNet.API", zzajS, zzajR);
    @Deprecated
    public static final SafetyNetApi SafetyNetApi = new zzcsa();
    private static zzf<zzcsn> zzajR = new zzf();
    private static zza<zzcsn, NoOptions> zzajS = new zzi();
    private static zzm zzbBL = new zzcso();

    private SafetyNet() {
    }

    public static SafetyNetClient getClient(Activity activity) {
        return new SafetyNetClient(activity);
    }

    public static SafetyNetClient getClient(Context context) {
        return new SafetyNetClient(context);
    }
}
