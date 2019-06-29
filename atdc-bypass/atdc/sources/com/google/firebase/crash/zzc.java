package com.google.firebase.crash;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.google.android.gms.common.util.zzg;
import com.google.android.gms.internal.mj;
import com.google.android.gms.internal.ml;
import com.google.android.gms.internal.mn;
import com.google.android.gms.internal.mq;
import com.google.android.gms.internal.zzcaf;
import com.google.firebase.FirebaseApp;

public final class zzc {
    private final Context mContext;
    private final FirebaseApp zzbVZ;
    private String zzbYc = null;

    zzc(@NonNull FirebaseApp firebaseApp, @Nullable String str) {
        this.mContext = firebaseApp.getApplicationContext();
        this.zzbVZ = firebaseApp;
    }

    @VisibleForTesting
    public final mj zzFi() {
        Throwable e;
        mq.initialize(this.mContext);
        if (((Boolean) zzcaf.zzuc().zzb(mq.zzbYp)).booleanValue()) {
            mj zzFk;
            try {
                ml.zzFj().zzav(this.mContext);
                zzFk = ml.zzFj().zzFk();
                try {
                    String valueOf = String.valueOf(ml.zzFj());
                    StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 33);
                    stringBuilder.append("FirebaseCrash reporting loaded - ");
                    stringBuilder.append(valueOf);
                    Log.i("FirebaseCrash", stringBuilder.toString());
                    return zzFk;
                } catch (mn e2) {
                    e = e2;
                    Log.e("FirebaseCrash", "Failed to load crash reporting", e);
                    zzg.zza(this.mContext, e);
                    return zzFk;
                }
            } catch (mn e3) {
                e = e3;
                zzFk = null;
                Log.e("FirebaseCrash", "Failed to load crash reporting", e);
                zzg.zza(this.mContext, e);
                return zzFk;
            }
        }
        Log.w("FirebaseCrash", "Crash reporting is disabled");
        return null;
    }
}
