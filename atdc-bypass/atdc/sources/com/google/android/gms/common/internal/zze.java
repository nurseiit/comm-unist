package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import android.support.annotation.BinderThread;
import com.google.android.gms.common.ConnectionResult;

abstract class zze extends zzi<Boolean> {
    private int statusCode;
    private Bundle zzaHd;
    private /* synthetic */ zzd zzaHe;

    @BinderThread
    protected zze(zzd zzd, int i, Bundle bundle) {
        this.zzaHe = zzd;
        super(zzd, Boolean.valueOf(true));
        this.statusCode = i;
        this.zzaHd = bundle;
    }

    public abstract void zzj(ConnectionResult connectionResult);

    public abstract boolean zzrj();

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zzs(Object obj) {
        PendingIntent pendingIntent = null;
        if (((Boolean) obj) == null) {
            this.zzaHe.zza(1, null);
            return;
        }
        int i = this.statusCode;
        if (i == 0) {
            if (!zzrj()) {
                this.zzaHe.zza(1, null);
                zzj(new ConnectionResult(8, null));
            }
        } else if (i != 10) {
            this.zzaHe.zza(1, null);
            if (this.zzaHd != null) {
                pendingIntent = (PendingIntent) this.zzaHd.getParcelable("pendingIntent");
            }
            zzj(new ConnectionResult(this.statusCode, pendingIntent));
        } else {
            this.zzaHe.zza(1, null);
            throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
        }
    }
}
