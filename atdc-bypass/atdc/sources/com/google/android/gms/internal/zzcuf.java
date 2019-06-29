package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.tagmanager.zzcn;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public final class zzcuf {
    private final Context mContext;
    private volatile int mState = 1;
    private final String zzbDw;
    private ScheduledFuture<?> zzbGa = null;
    private final String zzbHH;
    private final String zzbHI;
    private final zzcvz zzbHJ;
    private final cd zzbHK;
    private final ExecutorService zzbHL;
    private final ScheduledExecutorService zzbHM;
    private final zzcn zzbHN;
    private final zzcuo zzbHO;
    private zzcvu zzbHP;
    private List<zzcut> zzbHQ = new ArrayList();
    private boolean zzbHR = false;
    private final zze zzvw;

    zzcuf(Context context, String str, @Nullable String str2, @Nullable String str3, zzcvz zzcvz, cd cdVar, ExecutorService executorService, ScheduledExecutorService scheduledExecutorService, zzcn zzcn, zze zze, zzcuo zzcuo) {
        this.mContext = context;
        this.zzbDw = (String) zzbo.zzu(str);
        this.zzbHJ = (zzcvz) zzbo.zzu(zzcvz);
        this.zzbHK = (cd) zzbo.zzu(cdVar);
        this.zzbHL = (ExecutorService) zzbo.zzu(executorService);
        this.zzbHM = (ScheduledExecutorService) zzbo.zzu(scheduledExecutorService);
        this.zzbHN = (zzcn) zzbo.zzu(zzcn);
        this.zzvw = (zze) zzbo.zzu(zze);
        this.zzbHO = (zzcuo) zzbo.zzu(zzcuo);
        this.zzbHH = str3;
        this.zzbHI = str2;
        this.zzbHQ.add(new zzcut("gtm.load", new Bundle(), "gtm", new Date(), false, this.zzbHN));
        String str4 = this.zzbDw;
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str4).length() + 35);
        stringBuilder.append("Container ");
        stringBuilder.append(str4);
        stringBuilder.append("is scheduled for loading.");
        zzcvk.v(stringBuilder.toString());
        this.zzbHL.execute(new zzcuj(this, null));
    }

    private final void zzaj(long j) {
        if (this.zzbGa != null) {
            this.zzbGa.cancel(false);
        }
        String str = this.zzbDw;
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 45);
        stringBuilder.append("Refresh container ");
        stringBuilder.append(str);
        stringBuilder.append(" in ");
        stringBuilder.append(j);
        stringBuilder.append("ms.");
        zzcvk.v(stringBuilder.toString());
        this.zzbGa = this.zzbHM.schedule(new zzcuh(this), j, TimeUnit.MILLISECONDS);
    }

    public final void dispatch() {
        this.zzbHL.execute(new zzcug(this));
    }

    public final void zza(zzcut zzcut) {
        this.zzbHL.execute(new zzcuk(this, zzcut));
    }
}
