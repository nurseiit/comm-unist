package com.google.android.gms.internal;

import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialRequestResult;
import com.google.android.gms.common.api.Status;

public final class zzarf implements CredentialRequestResult {
    private final Status mStatus;
    private final Credential zzalx;

    public zzarf(Status status, Credential credential) {
        this.mStatus = status;
        this.zzalx = credential;
    }

    public static zzarf zze(Status status) {
        return new zzarf(status, null);
    }

    public final Credential getCredential() {
        return this.zzalx;
    }

    public final Status getStatus() {
        return this.mStatus;
    }
}
