package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.request.Requests.UpdateRequestsResult;
import java.util.Set;

final class zzca implements UpdateRequestsResult {
    private /* synthetic */ Status zzakB;

    zzca(zzbz zzbz, Status status) {
        this.zzakB = status;
    }

    public final Set<String> getRequestIds() {
        return null;
    }

    public final int getRequestOutcome(String str) {
        String str2 = "Unknown request ID ";
        str = String.valueOf(str);
        throw new IllegalArgumentException(str.length() != 0 ? str2.concat(str) : new String(str2));
    }

    public final Status getStatus() {
        return this.zzakB;
    }

    public final void release() {
    }
}
