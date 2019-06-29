package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.common.api.Status;

final class zzg extends zza {
    private /* synthetic */ zzf zzamo;

    zzg(zzf zzf) {
        this.zzamo = zzf;
    }

    public final void zza(GoogleSignInAccount googleSignInAccount, Status status) throws RemoteException {
        if (googleSignInAccount != null) {
            this.zzamo.zzamm.zza(googleSignInAccount, this.zzamo.zzamn);
        }
        this.zzamo.setResult(new GoogleSignInResult(googleSignInAccount, status));
    }
}
