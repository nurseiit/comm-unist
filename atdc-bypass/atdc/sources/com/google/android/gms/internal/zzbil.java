package com.google.android.gms.internal;

import com.google.android.gms.awareness.AwarenessOptions;
import com.google.android.gms.awareness.FenceApi;
import com.google.android.gms.awareness.SnapshotApi;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzf;

public final class zzbil {
    public static final Api<AwarenessOptions> API = new Api("ContextManager.API", zzajS, zzajR);
    public static final FenceApi FenceApi = new zzbip();
    public static final SnapshotApi SnapshotApi = new zzatj();
    private static zzf<zzbka> zzajR = new zzf();
    private static final zza<zzbka, AwarenessOptions> zzajS = new zzbim();
}
