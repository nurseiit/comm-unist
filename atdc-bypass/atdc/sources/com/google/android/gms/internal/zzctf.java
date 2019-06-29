package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.search.GoogleNowAuthState;
import com.google.android.gms.search.SearchAuthApi.GoogleNowAuthResult;

final class zzctf implements GoogleNowAuthResult {
    private final Status mStatus;
    private final GoogleNowAuthState zzbCF;

    zzctf(Status status, GoogleNowAuthState googleNowAuthState) {
        this.mStatus = status;
        this.zzbCF = googleNowAuthState;
    }

    public final GoogleNowAuthState getGoogleNowAuthState() {
        return this.zzbCF;
    }

    public final Status getStatus() {
        return this.mStatus;
    }
}
