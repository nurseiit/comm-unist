package com.google.android.gms.auth.account;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzf;
import com.google.android.gms.internal.zzaqn;
import com.google.android.gms.internal.zzaqx;

public class WorkAccount {
    public static final Api<NoOptions> API = new Api("WorkAccount.API", zzajS, zzajR);
    public static final WorkAccountApi WorkAccountApi = new zzaqn();
    private static final zzf<zzaqx> zzajR = new zzf();
    private static final zza<zzaqx, NoOptions> zzajS = new zzg();

    private WorkAccount() {
    }
}
