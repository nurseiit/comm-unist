package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

final class zzf extends zzl<GoogleSignInResult> {
    final /* synthetic */ zzy zzamm;
    final /* synthetic */ GoogleSignInOptions zzamn;

    zzf(GoogleApiClient googleApiClient, zzy zzy, GoogleSignInOptions googleSignInOptions) {
        this.zzamm = zzy;
        this.zzamn = googleSignInOptions;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzt) ((zzd) zzb).zzrf()).zza(new zzg(this), this.zzamn);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return new GoogleSignInResult(null, status);
    }
}
