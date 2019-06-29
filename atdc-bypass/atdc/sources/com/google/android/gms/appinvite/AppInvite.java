package com.google.android.gms.appinvite;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzf;
import com.google.android.gms.internal.zzapy;
import com.google.android.gms.internal.zzaqh;

@Deprecated
public final class AppInvite {
    public static final Api<NoOptions> API = new Api("AppInvite.API", zzajS, zzajR);
    public static final AppInviteApi AppInviteApi = new zzapy();
    private static zzf<zzaqh> zzajR = new zzf();
    private static final zza<zzaqh, NoOptions> zzajS = new zza();

    private AppInvite() {
    }
}
