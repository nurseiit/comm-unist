package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.awareness.fence.FenceQueryResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;

public final class zzbkd extends zzbki {
    private final zzbkg zzaLE;
    private zzbaz<Status> zzaLF;
    private zzbaz<Object> zzaLG = null;
    private zzbaz<Object> zzaLH = null;
    private zzbaz<Object> zzaLI = null;
    private zzbaz<zzaud> zzaLJ;
    private zzbaz<FenceQueryResult> zzaLK;
    private zzbaz<Object> zzaLL;

    private zzbkd(zzbaz<Status> zzbaz, zzbaz<Object> zzbaz2, zzbaz<Object> zzbaz3, zzbaz<Object> zzbaz4, zzbaz<zzaud> zzbaz5, zzbaz<FenceQueryResult> zzbaz6, zzbaz<Object> zzbaz7, zzbkg zzbkg) {
        this.zzaLF = zzbaz;
        this.zzaLJ = zzbaz5;
        this.zzaLK = zzbaz6;
        this.zzaLL = null;
        this.zzaLE = null;
    }

    public static zzbkd zza(zzbaz<Status> zzbaz, zzbkg zzbkg) {
        return new zzbkd(zzbaz, null, null, null, null, null, null, null);
    }

    public static zzbkd zzd(zzbaz<zzaud> zzbaz) {
        return new zzbkd(null, null, null, null, zzbaz, null, null, null);
    }

    public static zzbkd zze(zzbaz<FenceQueryResult> zzbaz) {
        return new zzbkd(null, null, null, null, null, zzbaz, null, null);
    }

    public final void zza(Status status, DataHolder dataHolder) throws RemoteException {
        zzeq.zzd("ContextManagerPendingResult", "Unexpected callback to onStateResult");
    }

    public final void zza(Status status, DataHolder dataHolder, DataHolder dataHolder2) throws RemoteException {
        zzeq.zzd("ContextManagerPendingResult", "Unexpected callback to onReadResult.");
    }

    public final void zza(Status status, zzati zzati) throws RemoteException {
        if (this.zzaLJ == null) {
            zzeq.zzd("ContextManagerPendingResult", "Unexpected callback to onSnapshotResult");
            return;
        }
        this.zzaLJ.setResult(new zzbke(this, status, zzati));
        this.zzaLJ = null;
    }

    public final void zza(Status status, zzbjd zzbjd) {
        zzeq.zzd("ContextManagerPendingResult", "Unexpected callback to onFenceEvaluateResult");
    }

    public final void zza(Status status, zzbjf zzbjf) {
        if (this.zzaLK == null) {
            zzeq.zzd("ContextManagerPendingResult", "Unexpected callback to onFenceQueryResult");
            return;
        }
        this.zzaLK.setResult(new zzbkf(this, zzbjf, status));
        this.zzaLK = null;
    }

    public final void zza(Status status, zzbkl zzbkl) throws RemoteException {
        zzeq.zzd("ContextManagerPendingResult", "Unexpected callback to onWriteBatchResult");
    }

    public final void zzd(Status status) throws RemoteException {
        if (this.zzaLF == null) {
            zzeq.zzd("ContextManagerPendingResult", "Unexpected callback to onStatusResult.");
            return;
        }
        this.zzaLF.setResult(status);
        this.zzaLF = null;
    }
}
