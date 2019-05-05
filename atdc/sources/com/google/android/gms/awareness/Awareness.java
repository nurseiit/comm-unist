package com.google.android.gms.awareness;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.zzbil;

public final class Awareness {
    public static final Api<AwarenessOptions> API = zzbil.API;
    public static final FenceApi FenceApi = zzbil.FenceApi;
    public static final SnapshotApi SnapshotApi = zzbil.SnapshotApi;

    private Awareness() {
    }
}
