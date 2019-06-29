package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.request.GameRequestBuffer;
import com.google.android.gms.games.request.Requests.LoadRequestsResult;

final class zzby implements LoadRequestsResult {
    private /* synthetic */ Status zzakB;

    zzby(zzbx zzbx, Status status) {
        this.zzakB = status;
    }

    public final GameRequestBuffer getRequests(int i) {
        return new GameRequestBuffer(DataHolder.zzau(this.zzakB.getStatusCode()));
    }

    public final Status getStatus() {
        return this.zzakB;
    }

    public final void release() {
    }
}
