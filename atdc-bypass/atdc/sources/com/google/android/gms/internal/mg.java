package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.util.Log;
import com.google.android.gms.common.util.zzg;
import com.google.firebase.crash.FirebaseCrash.zza;

public final class mg extends mb {
    private final boolean zzbYk;

    public mg(@NonNull Context context, @NonNull zza zza, boolean z) {
        super(context, zza);
        this.zzbYk = z;
    }

    /* Access modifiers changed, original: protected|final */
    @NonNull
    public final String getErrorMessage() {
        boolean z = this.zzbYk;
        StringBuilder stringBuilder = new StringBuilder(36);
        stringBuilder.append("Failed to set crash enabled to ");
        stringBuilder.append(z);
        return stringBuilder.toString();
    }

    public final void run() {
        try {
            mj zzFg = this.zzbYh.zzFg();
            if (zzFg == null) {
                Log.e("FirebaseCrash", "Crash api not available");
            } else {
                zzd(zzFg);
            }
        } catch (RemoteException | RuntimeException e) {
            zzg.zza(this.mContext, e);
            Log.e("FirebaseCrash", getErrorMessage(), e);
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzd(@NonNull mj mjVar) throws RemoteException {
        mjVar.zzaz(this.zzbYk);
    }
}
