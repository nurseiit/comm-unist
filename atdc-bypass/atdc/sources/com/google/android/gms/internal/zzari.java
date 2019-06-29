package com.google.android.gms.internal;

import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.Status;

final class zzari extends zzard {
    private /* synthetic */ zzarh zzalz;

    zzari(zzarh zzarh) {
        this.zzalz = zzarh;
    }

    public final void zza(Status status, Credential credential) {
        this.zzalz.setResult(new zzarf(status, credential));
    }

    public final void zzd(Status status) {
        this.zzalz.setResult(zzarf.zze(status));
    }
}
