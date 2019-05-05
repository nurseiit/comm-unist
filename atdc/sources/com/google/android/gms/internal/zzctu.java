package com.google.android.gms.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.internal.zzy;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzal;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.internal.zzbp;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.common.internal.zzm;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.internal.zzz;

public final class zzctu extends zzz<zzcts> implements zzctk {
    private final zzq zzaCA;
    private Integer zzaHn;
    private final Bundle zzbCL;
    private final boolean zzbCT;

    public zzctu(Context context, Looper looper, boolean z, zzq zzq, Bundle bundle, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 44, zzq, connectionCallbacks, onConnectionFailedListener);
        this.zzbCT = z;
        this.zzaCA = zzq;
        this.zzbCL = bundle;
        this.zzaHn = zzq.zzru();
    }

    public zzctu(Context context, Looper looper, boolean z, zzq zzq, zzctl zzctl, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, true, zzq, zza(zzq), connectionCallbacks, onConnectionFailedListener);
    }

    public static Bundle zza(zzq zzq) {
        zzctl zzrt = zzq.zzrt();
        Integer zzru = zzq.zzru();
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", zzq.getAccount());
        if (zzru != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", zzru.intValue());
        }
        if (zzrt != null) {
            bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", zzrt.zzAr());
            bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", zzrt.isIdTokenRequested());
            bundle.putString("com.google.android.gms.signin.internal.serverClientId", zzrt.getServerClientId());
            bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
            bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", zzrt.zzAs());
            bundle.putString("com.google.android.gms.signin.internal.hostedDomain", zzrt.zzAt());
            bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", zzrt.zzAu());
            if (zzrt.zzAv() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.authApiSignInModuleVersion", zzrt.zzAv().longValue());
            }
            if (zzrt.zzAw() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.realClientLibraryVersion", zzrt.zzAw().longValue());
            }
        }
        return bundle;
    }

    public final void connect() {
        zza((zzj) new zzm(this));
    }

    public final void zzAq() {
        try {
            ((zzcts) zzrf()).zzbv(this.zzaHn.intValue());
        } catch (RemoteException unused) {
            Log.w("SignInClientImpl", "Remote service probably died when clearAccountFromSessionStore is called");
        }
    }

    public final void zza(zzal zzal, boolean z) {
        try {
            ((zzcts) zzrf()).zza(zzal, this.zzaHn.intValue(), z);
        } catch (RemoteException unused) {
            Log.w("SignInClientImpl", "Remote service probably died when saveDefaultAccount is called");
        }
    }

    public final void zza(zzctq zzctq) {
        zzbo.zzb((Object) zzctq, (Object) "Expecting a valid ISignInCallbacks");
        try {
            Account zzrl = this.zzaCA.zzrl();
            GoogleSignInAccount googleSignInAccount = null;
            if ("<<default account>>".equals(zzrl.name)) {
                googleSignInAccount = zzy.zzaj(getContext()).zzmN();
            }
            ((zzcts) zzrf()).zza(new zzctv(new zzbp(zzrl, this.zzaHn.intValue(), googleSignInAccount)), zzctq);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                zzctq.zzb(new zzctx(8));
            } catch (RemoteException unused) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return queryLocalInterface instanceof zzcts ? (zzcts) queryLocalInterface : new zzctt(iBinder);
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdb() {
        return "com.google.android.gms.signin.service.START";
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdc() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    /* Access modifiers changed, original: protected|final */
    public final Bundle zzmo() {
        if (!getContext().getPackageName().equals(this.zzaCA.zzrq())) {
            this.zzbCL.putString("com.google.android.gms.signin.internal.realClientPackageName", this.zzaCA.zzrq());
        }
        return this.zzbCL;
    }

    public final boolean zzmv() {
        return this.zzbCT;
    }
}
