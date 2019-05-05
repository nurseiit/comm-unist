package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions.Builder;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.internal.zzz;

public final class zzd extends zzz<zzt> {
    private final GoogleSignInOptions zzamk;

    public zzd(Context context, Looper looper, zzq zzq, GoogleSignInOptions googleSignInOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 91, zzq, connectionCallbacks, onConnectionFailedListener);
        if (googleSignInOptions == null) {
            googleSignInOptions = new Builder().build();
        }
        if (!zzq.zzro().isEmpty()) {
            Builder builder = new Builder(googleSignInOptions);
            for (Scope requestScopes : zzq.zzro()) {
                builder.requestScopes(requestScopes, new Scope[0]);
            }
            googleSignInOptions = builder.build();
        }
        this.zzamk = googleSignInOptions;
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
        return queryLocalInterface instanceof zzt ? (zzt) queryLocalInterface : new zzu(iBinder);
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdb() {
        return "com.google.android.gms.auth.api.signin.service.START";
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdc() {
        return "com.google.android.gms.auth.api.signin.internal.ISignInService";
    }

    public final boolean zzmG() {
        return true;
    }

    public final Intent zzmH() {
        return zze.zza(getContext(), this.zzamk);
    }

    public final GoogleSignInOptions zzmI() {
        return this.zzamk;
    }
}
