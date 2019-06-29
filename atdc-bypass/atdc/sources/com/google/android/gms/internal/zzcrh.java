package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.People.LoadPeopleResult;
import com.google.android.gms.plus.model.people.PersonBuffer;

final class zzcrh implements LoadPeopleResult {
    private /* synthetic */ Status zzakB;

    zzcrh(zzcrg zzcrg, Status status) {
        this.zzakB = status;
    }

    public final String getNextPageToken() {
        return null;
    }

    public final PersonBuffer getPersonBuffer() {
        return null;
    }

    public final Status getStatus() {
        return this.zzakB;
    }

    public final void release() {
    }
}
