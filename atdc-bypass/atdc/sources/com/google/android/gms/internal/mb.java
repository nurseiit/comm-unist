package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.util.Log;
import com.google.android.gms.common.util.zzg;
import com.google.firebase.crash.FirebaseCrash.zza;

abstract class mb implements Runnable {
    protected final Context mContext;
    protected final zza zzbYh;

    mb(@NonNull Context context, @NonNull zza zza) {
        this.zzbYh = zza;
        this.mContext = context.getApplicationContext();
    }

    @NonNull
    public abstract String getErrorMessage();

    public void run() {
        try {
            mj zzFg = this.zzbYh.zzFg();
            if (zzFg != null) {
                if (zzFg.zzFf()) {
                    zzd(zzFg);
                    return;
                }
            }
            if (zzFg != null) {
                Log.e("FirebaseCrash", "Firebase Crash Reporting not enabled");
            } else {
                Log.e("FirebaseCrash", "Crash api not available");
            }
        } catch (RemoteException | RuntimeException e) {
            zzg.zza(this.mContext, e);
            Log.e("FirebaseCrash", getErrorMessage(), e);
        }
    }

    public abstract void zzd(@NonNull mj mjVar) throws RemoteException;
}
