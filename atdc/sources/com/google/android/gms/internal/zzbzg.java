package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.fitness.result.SessionReadResult;

final class zzbzg extends zzbxb {
    private final zzbaz<SessionReadResult> zzaIz;

    private zzbzg(zzbaz<SessionReadResult> zzbaz) {
        this.zzaIz = zzbaz;
    }

    /* synthetic */ zzbzg(zzbaz zzbaz, zzbza zzbza) {
        this(zzbaz);
    }

    public final void zza(SessionReadResult sessionReadResult) throws RemoteException {
        this.zzaIz.setResult(sessionReadResult);
    }
}
