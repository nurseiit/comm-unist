package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Process;
import android.os.RemoteException;
import com.google.android.gms.awareness.AwarenessOptions;
import com.google.android.gms.awareness.fence.FenceQueryResult;
import com.google.android.gms.awareness.fence.zza;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zze;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.internal.zzz;
import com.google.android.gms.common.util.zzd;
import java.util.ArrayList;

public final class zzbka extends zzz<zzbkj> {
    private static zzel zzaLu = zzel.zzrI;
    private final zzbkb zzaLv;
    private zzes<zza, zzbit> zzaLw;
    private final Looper zzrM;

    public zzbka(Context context, Looper looper, zzq zzq, AwarenessOptions awarenessOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        zzbkb zza;
        Context context2 = context;
        AwarenessOptions awarenessOptions2 = awarenessOptions;
        super(context2, looper, 47, zzq, connectionCallbacks, onConnectionFailedListener);
        this.zzrM = looper;
        String str = zzq.getAccount() == null ? "@@ContextManagerNullAccount@@" : zzq.getAccount().name;
        if (awarenessOptions2 == null) {
            zzbkb zzbkb = new zzbkb(str, context.getPackageName(), Process.myUid(), context.getPackageName(), zzd.zzA(context2, context.getPackageName()), 3, null, null, -1, Process.myPid());
        } else {
            zza = zzbkb.zza(context2, str, awarenessOptions2);
        }
        this.zzaLv = zza;
    }

    public final void zza(zzbaz<zzaud> zzbaz, zzaub zzaub) throws RemoteException {
        zzre();
        ((zzbkj) zzrf()).zza(zzbkd.zzd((zzbaz) zzbaz), this.zzaLv.packageName, this.zzaLv.zzaLx, this.zzaLv.moduleId, zzaub);
    }

    public final void zza(zzbaz<FenceQueryResult> zzbaz, zzbja zzbja) throws RemoteException {
        zzre();
        ((zzbkj) zzrf()).zza(zzbkd.zze(zzbaz), this.zzaLv.packageName, this.zzaLv.zzaLx, this.zzaLv.moduleId, zzbja);
    }

    public final void zza(zzbaz<Status> zzbaz, zzbjj zzbjj) throws RemoteException {
        zzre();
        if (this.zzaLw == null) {
            this.zzaLw = new zzes(this.zzrM, zzbit.zzaKT);
        }
        zzes zzes = this.zzaLw;
        ArrayList arrayList = zzbjj.zzaLj;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            zzbjt zzbjt = (zzbjt) obj;
            if (zzbjt.zzaLp == null) {
                zza zza = zzbjt.zzaLq;
            }
        }
        ((zzbkj) zzrf()).zza(zzbkd.zza((zzbaz) zzbaz, null), this.zzaLv.packageName, this.zzaLv.zzaLx, this.zzaLv.moduleId, zzbjj);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
        return queryLocalInterface instanceof zzbkj ? (zzbkj) queryLocalInterface : new zzbkk(iBinder);
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdb() {
        return "com.google.android.contextmanager.service.ContextManagerService.START";
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdc() {
        return "com.google.android.gms.contextmanager.internal.IContextManagerService";
    }

    /* Access modifiers changed, original: protected|final */
    public final Bundle zzmo() {
        Bundle bundle = new Bundle();
        bundle.putByteArray("com.google.android.contextmanager.service.args", zze.zza(this.zzaLv));
        return bundle;
    }

    public final boolean zzrg() {
        return false;
    }
}
