package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.zzbs;

@zzzn
public final class zzzu {
    private static boolean zzc(Context context, boolean z) {
        if (!z) {
            return true;
        }
        zzbs.zzbz();
        int zzP = zzagz.zzP(context);
        if (zzP == 0) {
            return false;
        }
        zzbs.zzbz();
        return zzP <= zzagz.zzQ(context);
    }
}
