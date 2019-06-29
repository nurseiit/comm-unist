package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import android.support.annotation.NonNull;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api.zze;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.zzc;
import java.util.Set;

public abstract class zzz<T extends IInterface> extends zzd<T> implements zze, zzad {
    private final zzq zzaCA;
    private final Account zzajb;
    private final Set<Scope> zzame;

    protected zzz(Context context, Looper looper, int i, zzq zzq, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, zzae.zzaC(context), GoogleApiAvailability.getInstance(), i, zzq, (ConnectionCallbacks) zzbo.zzu(connectionCallbacks), (OnConnectionFailedListener) zzbo.zzu(onConnectionFailedListener));
    }

    private zzz(Context context, Looper looper, zzae zzae, GoogleApiAvailability googleApiAvailability, int i, zzq zzq, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        ConnectionCallbacks connectionCallbacks2 = connectionCallbacks;
        OnConnectionFailedListener onConnectionFailedListener2 = onConnectionFailedListener;
        zzf zzaa = connectionCallbacks2 == null ? null : new zzaa(connectionCallbacks2);
        zzg zzab = onConnectionFailedListener2 == null ? null : new zzab(onConnectionFailedListener2);
        super(context, looper, zzae, googleApiAvailability, i, zzaa, zzab, zzq.zzrr());
        this.zzaCA = zzq;
        this.zzajb = zzq.getAccount();
        Set zzro = zzq.zzro();
        Set<Scope> zzb = zzb(zzro);
        for (Scope contains : zzb) {
            if (!zzro.contains(contains)) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        this.zzame = zzb;
    }

    public final Account getAccount() {
        return this.zzajb;
    }

    /* Access modifiers changed, original: protected */
    @NonNull
    public Set<Scope> zzb(@NonNull Set<Scope> set) {
        return set;
    }

    public zzc[] zzrd() {
        return new zzc[0];
    }

    /* Access modifiers changed, original: protected|final */
    public final Set<Scope> zzrh() {
        return this.zzame;
    }

    /* Access modifiers changed, original: protected|final */
    public final zzq zzry() {
        return this.zzaCA;
    }
}
