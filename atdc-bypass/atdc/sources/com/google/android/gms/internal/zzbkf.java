package com.google.android.gms.internal;

import com.google.android.gms.awareness.fence.FenceQueryResult;
import com.google.android.gms.awareness.fence.FenceStateMap;
import com.google.android.gms.common.api.Status;

final class zzbkf implements FenceQueryResult {
    private /* synthetic */ zzbjf zzaLN;
    private /* synthetic */ Status zzakB;

    zzbkf(zzbkd zzbkd, zzbjf zzbjf, Status status) {
        this.zzaLN = zzbjf;
        this.zzakB = status;
    }

    public final FenceStateMap getFenceStateMap() {
        return this.zzaLN;
    }

    public final Status getStatus() {
        return this.zzakB;
    }
}
