package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zzg;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.DynamiteModule.zzc;

public final class ml {
    private static ml zzbYm;
    private Context mContext;

    private ml() {
    }

    public static synchronized ml zzFj() {
        ml mlVar;
        synchronized (ml.class) {
            if (zzbYm == null) {
                zzbYm = new ml();
            }
            mlVar = zzbYm;
        }
        return mlVar;
    }

    public final mj zzFk() throws mn {
        try {
            DynamiteModule zza = DynamiteModule.zza(this.mContext, DynamiteModule.zzaSN, "com.google.android.gms.crash");
            zzbo.zzu(zza);
            IBinder zzcV = zza.zzcV("com.google.firebase.crash.internal.api.FirebaseCrashApiImpl");
            if (zzcV == null) {
                return null;
            }
            IInterface queryLocalInterface = zzcV.queryLocalInterface("com.google.firebase.crash.internal.IFirebaseCrashApi");
            return queryLocalInterface instanceof mj ? (mj) queryLocalInterface : new mk(zzcV);
        } catch (zzc e) {
            zzg.zza(this.mContext, e);
            throw new mn(e);
        }
    }

    public final void zzav(Context context) {
        this.mContext = context;
    }
}
