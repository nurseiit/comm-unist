package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzf;

public final class ke {
    private static zzf<jx> zzajR = new zzf();
    private static final zza<jx, kg> zzbWH = new kf();
    public static final Api<kg> zzbWI = new Api("InternalFirebaseAuth.FIREBASE_AUTH_API", zzbWH, zzajR);

    public static iq zza(Context context, kg kgVar) {
        return new iq(context, kgVar);
    }
}
