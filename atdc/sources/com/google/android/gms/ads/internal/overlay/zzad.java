package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.support.annotation.Nullable;
import com.google.android.gms.internal.zzaka;
import com.google.android.gms.internal.zznb;
import com.google.android.gms.internal.zzzn;

@zzzn
public final class zzad extends zzz {
    @Nullable
    public final zzy zza(Context context, zzaka zzaka, int i, boolean z, zznb zznb, zzaq zzaq) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        Object obj = (applicationInfo == null || applicationInfo.targetSdkVersion >= 11) ? 1 : null;
        if (obj == null) {
            return null;
        }
        return new zzd(context, z, zzaka.zzam().zzAt, zzaq, new zzar(context, zzaka.zziz(), zzaka.getRequestId(), zznb, zzaka.zziF()));
    }
}
