package com.google.android.gms.internal;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.support.annotation.NonNull;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzg;

@zzzn
public final class zzaac extends zzzy implements zzf, zzg {
    private Context mContext;
    private final Object mLock = new Object();
    private zzajp<zzaae> zzSs;
    private final zzzw zzSt;
    private zzaad zzSw;
    private zzaje zztW;

    public zzaac(Context context, zzaje zzaje, zzajp<zzaae> zzajp, zzzw zzzw) {
        super(zzajp, zzzw);
        this.mContext = context;
        this.zztW = zzaje;
        this.zzSs = zzajp;
        this.zzSt = zzzw;
        this.zzSw = new zzaad(context, ((Boolean) zzbs.zzbL().zzd(zzmo.zzCK)).booleanValue() ? zzbs.zzbP().zzie() : context.getMainLooper(), this, this, this.zztW.zzaaP);
        this.zzSw.zzrb();
    }

    public final void onConnected(Bundle bundle) {
        zzgp();
    }

    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        zzajc.zzaC("Cannot connect to remote service, fallback to local instance.");
        new zzaab(this.mContext, this.zzSs, this.zzSt).zzgp();
        Bundle bundle = new Bundle();
        bundle.putString("action", "gms_connection_failed_fallback_to_local");
        zzbs.zzbz().zzb(this.mContext, this.zztW.zzaP, "gmob-apps", bundle, true);
    }

    public final void onConnectionSuspended(int i) {
        zzajc.zzaC("Disconnected from remote ad request service.");
    }

    public final void zzgA() {
        synchronized (this.mLock) {
            if (this.zzSw.isConnected() || this.zzSw.isConnecting()) {
                this.zzSw.disconnect();
            }
            Binder.flushPendingCommands();
        }
    }

    public final zzaam zzgB() {
        zzaam zzgC;
        synchronized (this.mLock) {
            try {
                zzgC = this.zzSw.zzgC();
            } catch (DeadObjectException | IllegalStateException unused) {
                return null;
            } catch (Throwable th) {
            }
        }
        return zzgC;
    }
}
