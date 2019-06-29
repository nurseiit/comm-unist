package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zzi;
import com.google.android.gms.tagmanager.zzce;
import com.google.android.gms.tagmanager.zzcn;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

public final class zzcun {
    private final Context mContext;
    private final ExecutorService zzGM;
    private final cd zzbHK;
    private final zzcn zzbHN;
    private final ScheduledExecutorService zzbHV;
    private final zzce zzbHW;

    public zzcun(Context context, zzcn zzcn, zzce zzce) {
        this(context, zzcn, zzce, new cd(context), zza.zzbx(context), zzcxg.zzbJK);
    }

    private zzcun(Context context, zzcn zzcn, zzce zzce, cd cdVar, ExecutorService executorService, ScheduledExecutorService scheduledExecutorService) {
        this.mContext = ((Context) zzbo.zzu(context)).getApplicationContext();
        this.zzbHN = (zzcn) zzbo.zzu(zzcn);
        this.zzbHW = (zzce) zzbo.zzu(zzce);
        this.zzbHK = (cd) zzbo.zzu(cdVar);
        this.zzGM = (ExecutorService) zzbo.zzu(executorService);
        this.zzbHV = (ScheduledExecutorService) zzbo.zzu(scheduledExecutorService);
    }

    public final zzcuf zzm(String str, @Nullable String str2, @Nullable String str3) {
        String str4 = str;
        return new zzcuf(this.mContext, str4, str2, str3, new zzcvz(this.mContext, this.zzbHN, this.zzbHW, str4), this.zzbHK, this.zzGM, this.zzbHV, this.zzbHN, zzi.zzrY(), new zzcuo(this.mContext, str4));
    }
}
