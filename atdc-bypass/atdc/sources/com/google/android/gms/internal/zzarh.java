package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.CredentialRequest;
import com.google.android.gms.auth.api.credentials.CredentialRequestResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

final class zzarh extends zzarn<CredentialRequestResult> {
    private /* synthetic */ CredentialRequest zzaly;

    zzarh(zzarg zzarg, GoogleApiClient googleApiClient, CredentialRequest credentialRequest) {
        this.zzaly = credentialRequest;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(Context context, zzart zzart) throws RemoteException {
        zzart.zza(new zzari(this), this.zzaly);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return zzarf.zze(status);
    }
}
