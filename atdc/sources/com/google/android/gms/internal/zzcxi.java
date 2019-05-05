package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.support.annotation.MainThread;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.stats.zza;
import com.google.android.gms.tagmanager.TagManagerService;

public final class zzcxi implements ServiceConnection {
    private final Context mContext;
    private final zza zzaHQ;
    private volatile boolean zzbJL;
    private volatile boolean zzbJM;
    private zzcvg zzbJN;

    public zzcxi(Context context) {
        this(context, zza.zzrU());
    }

    private zzcxi(Context context, zza zza) {
        this.zzbJL = false;
        this.zzbJM = false;
        this.mContext = context;
        this.zzaHQ = zza;
    }

    @WorkerThread
    private final boolean zzCE() {
        if (this.zzbJL) {
            return true;
        }
        synchronized (this) {
            if (this.zzbJL) {
                return true;
            }
            if (!this.zzbJM) {
                if (this.zzaHQ.zza(this.mContext, new Intent(this.mContext, TagManagerService.class), this, 1)) {
                    this.zzbJM = true;
                } else {
                    return false;
                }
            }
            while (this.zzbJM) {
                try {
                    wait();
                    this.zzbJM = false;
                } catch (InterruptedException e) {
                    zzcvk.zzc("Error connecting to TagManagerService", e);
                    this.zzbJM = false;
                }
            }
            boolean z = this.zzbJL;
            return z;
        }
    }

    @WorkerThread
    public final void dispatch() {
        if (zzCE()) {
            try {
                this.zzbJN.dispatch();
            } catch (RemoteException e) {
                zzcvk.zzc("Error calling service to dispatch pending events", e);
            }
        }
    }

    @MainThread
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this) {
            zzcvg zzcvg;
            if (iBinder == null) {
                zzcvg = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.tagmanager.internal.ITagManagerService");
                zzcvg = queryLocalInterface instanceof zzcvg ? (zzcvg) queryLocalInterface : new zzcvi(iBinder);
            }
            this.zzbJN = zzcvg;
            this.zzbJL = true;
            this.zzbJM = false;
            notifyAll();
        }
    }

    @MainThread
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this) {
            this.zzbJN = null;
            this.zzbJL = false;
            this.zzbJM = false;
        }
    }

    @WorkerThread
    public final boolean zzCF() {
        if (zzCE()) {
            try {
                this.zzbJN.zzCr();
                return true;
            } catch (RemoteException e) {
                zzcvk.zzc("Error in resetting service", e);
            }
        }
        return false;
    }

    @WorkerThread
    public final void zza(String str, Bundle bundle, String str2, long j, boolean z) {
        if (zzCE()) {
            try {
                this.zzbJN.zza(str, bundle, str2, j, z);
            } catch (RemoteException e) {
                zzcvk.zzc("Error calling service to emit event", e);
            }
        }
    }

    @WorkerThread
    public final void zzb(String str, @Nullable String str2, @Nullable String str3, @Nullable zzcvd zzcvd) {
        if (zzCE()) {
            try {
                this.zzbJN.zza(str, str2, str3, zzcvd);
                return;
            } catch (RemoteException e) {
                zzcvk.zzc("Error calling service to load container", e);
            }
        }
        if (zzcvd != null) {
            try {
                zzcvd.zza(false, str);
            } catch (RemoteException e2) {
                zzcvk.zzb("Error - local callback should not throw RemoteException", e2);
            }
        }
    }
}
