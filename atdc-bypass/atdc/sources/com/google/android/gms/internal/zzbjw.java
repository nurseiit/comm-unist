package com.google.android.gms.internal;

import com.google.android.gms.awareness.fence.FenceQueryResult;
import com.google.android.gms.awareness.fence.FenceStateMap;
import com.google.android.gms.common.api.Status;

final class zzbjw implements FenceQueryResult {
    private /* synthetic */ Status zzakB;

    zzbjw(zzbjv zzbjv, Status status) {
        this.zzakB = status;
    }

    public final FenceStateMap getFenceStateMap() {
        return null;
    }

    public final Status getStatus() {
        return this.zzakB;
    }
}
