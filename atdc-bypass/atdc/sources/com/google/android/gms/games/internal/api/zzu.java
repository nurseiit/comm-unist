package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.event.EventBuffer;
import com.google.android.gms.games.event.Events.LoadEventsResult;

final class zzu implements LoadEventsResult {
    private /* synthetic */ Status zzakB;

    zzu(zzt zzt, Status status) {
        this.zzakB = status;
    }

    public final EventBuffer getEvents() {
        return new EventBuffer(DataHolder.zzau(14));
    }

    public final Status getStatus() {
        return this.zzakB;
    }

    public final void release() {
    }
}
