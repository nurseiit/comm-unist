package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.fitness.result.GoalsResult;

final class zzbxz extends zzbwf {
    private /* synthetic */ zzbxy zzaVF;

    zzbxz(zzbxy zzbxy) {
        this.zzaVF = zzbxy;
    }

    public final void zza(GoalsResult goalsResult) throws RemoteException {
        this.zzaVF.setResult(goalsResult);
    }
}
