package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.fitness.result.DailyTotalResult;

final class zzbyi extends zzbvt {
    private /* synthetic */ zzbyh zzaVP;

    zzbyi(zzbyh zzbyh) {
        this.zzaVP = zzbyh;
    }

    public final void zza(DailyTotalResult dailyTotalResult) throws RemoteException {
        this.zzaVP.setResult(dailyTotalResult);
    }
}
