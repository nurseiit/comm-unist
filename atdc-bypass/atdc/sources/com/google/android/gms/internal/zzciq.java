package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Looper;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.stats.zza;

public final class zzciq implements ServiceConnection, zzf, zzg {
    final /* synthetic */ zzcid zzbua;
    private volatile boolean zzbuh;
    private volatile zzcfk zzbui;

    protected zzciq(zzcid zzcid) {
        this.zzbua = zzcid;
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:6:0x0022 */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    @android.support.annotation.MainThread
    public final void onConnected(@android.support.annotation.Nullable android.os.Bundle r4) {
        /*
        r3 = this;
        r4 = "MeasurementServiceConnection.onConnected";
        com.google.android.gms.common.internal.zzbo.zzcz(r4);
        monitor-enter(r3);
        r4 = 0;
        r0 = r3.zzbui;	 Catch:{ DeadObjectException | IllegalStateException -> 0x0022, DeadObjectException | IllegalStateException -> 0x0022 }
        r0 = r0.zzrf();	 Catch:{ DeadObjectException | IllegalStateException -> 0x0022, DeadObjectException | IllegalStateException -> 0x0022 }
        r0 = (com.google.android.gms.internal.zzcfd) r0;	 Catch:{ DeadObjectException | IllegalStateException -> 0x0022, DeadObjectException | IllegalStateException -> 0x0022 }
        r3.zzbui = r4;	 Catch:{ DeadObjectException | IllegalStateException -> 0x0022, DeadObjectException | IllegalStateException -> 0x0022 }
        r1 = r3.zzbua;	 Catch:{ DeadObjectException | IllegalStateException -> 0x0022, DeadObjectException | IllegalStateException -> 0x0022 }
        r1 = r1.zzwE();	 Catch:{ DeadObjectException | IllegalStateException -> 0x0022, DeadObjectException | IllegalStateException -> 0x0022 }
        r2 = new com.google.android.gms.internal.zzcit;	 Catch:{ DeadObjectException | IllegalStateException -> 0x0022, DeadObjectException | IllegalStateException -> 0x0022 }
        r2.<init>(r3, r0);	 Catch:{ DeadObjectException | IllegalStateException -> 0x0022, DeadObjectException | IllegalStateException -> 0x0022 }
        r1.zzj(r2);	 Catch:{ DeadObjectException | IllegalStateException -> 0x0022, DeadObjectException | IllegalStateException -> 0x0022 }
        goto L_0x0027;
    L_0x0020:
        r4 = move-exception;
        goto L_0x0029;
    L_0x0022:
        r3.zzbui = r4;	 Catch:{ all -> 0x0020 }
        r4 = 0;
        r3.zzbuh = r4;	 Catch:{ all -> 0x0020 }
    L_0x0027:
        monitor-exit(r3);	 Catch:{ all -> 0x0020 }
        return;
    L_0x0029:
        monitor-exit(r3);	 Catch:{ all -> 0x0020 }
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzciq.onConnected(android.os.Bundle):void");
    }

    @MainThread
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        zzbo.zzcz("MeasurementServiceConnection.onConnectionFailed");
        zzcfl zzyQ = this.zzbua.zzboe.zzyQ();
        if (zzyQ != null) {
            zzyQ.zzyz().zzj("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.zzbuh = false;
            this.zzbui = null;
        }
        this.zzbua.zzwE().zzj(new zzciv(this));
    }

    @MainThread
    public final void onConnectionSuspended(int i) {
        zzbo.zzcz("MeasurementServiceConnection.onConnectionSuspended");
        this.zzbua.zzwF().zzyC().log("Service connection suspended");
        this.zzbua.zzwE().zzj(new zzciu(this));
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:22:0x0063 */
    /* JADX WARNING: Can't wrap try/catch for region: R(2:22|23) */
    /* JADX WARNING: Missing block: B:23:?, code skipped:
            r3.zzbua.zzwF().zzyx().log("Service connect failed to get IMeasurementService");
     */
    @android.support.annotation.MainThread
    public final void onServiceConnected(android.content.ComponentName r4, android.os.IBinder r5) {
        /*
        r3 = this;
        r4 = "MeasurementServiceConnection.onServiceConnected";
        com.google.android.gms.common.internal.zzbo.zzcz(r4);
        monitor-enter(r3);
        r4 = 0;
        if (r5 != 0) goto L_0x001f;
    L_0x0009:
        r3.zzbuh = r4;	 Catch:{ all -> 0x001c }
        r4 = r3.zzbua;	 Catch:{ all -> 0x001c }
        r4 = r4.zzwF();	 Catch:{ all -> 0x001c }
        r4 = r4.zzyx();	 Catch:{ all -> 0x001c }
        r5 = "Service connected with null binder";
        r4.log(r5);	 Catch:{ all -> 0x001c }
        monitor-exit(r3);	 Catch:{ all -> 0x001c }
        return;
    L_0x001c:
        r4 = move-exception;
        goto L_0x0099;
    L_0x001f:
        r0 = 0;
        r1 = r5.getInterfaceDescriptor();	 Catch:{ RemoteException -> 0x0063 }
        r2 = "com.google.android.gms.measurement.internal.IMeasurementService";
        r2 = r2.equals(r1);	 Catch:{ RemoteException -> 0x0063 }
        if (r2 == 0) goto L_0x0053;
    L_0x002c:
        if (r5 != 0) goto L_0x002f;
    L_0x002e:
        goto L_0x0043;
    L_0x002f:
        r1 = "com.google.android.gms.measurement.internal.IMeasurementService";
        r1 = r5.queryLocalInterface(r1);	 Catch:{ RemoteException -> 0x0063 }
        r2 = r1 instanceof com.google.android.gms.internal.zzcfd;	 Catch:{ RemoteException -> 0x0063 }
        if (r2 == 0) goto L_0x003d;
    L_0x0039:
        r1 = (com.google.android.gms.internal.zzcfd) r1;	 Catch:{ RemoteException -> 0x0063 }
    L_0x003b:
        r0 = r1;
        goto L_0x0043;
    L_0x003d:
        r1 = new com.google.android.gms.internal.zzcff;	 Catch:{ RemoteException -> 0x0063 }
        r1.<init>(r5);	 Catch:{ RemoteException -> 0x0063 }
        goto L_0x003b;
    L_0x0043:
        r5 = r3.zzbua;	 Catch:{ RemoteException -> 0x0063 }
        r5 = r5.zzwF();	 Catch:{ RemoteException -> 0x0063 }
        r5 = r5.zzyD();	 Catch:{ RemoteException -> 0x0063 }
        r1 = "Bound to IMeasurementService interface";
        r5.log(r1);	 Catch:{ RemoteException -> 0x0063 }
        goto L_0x0072;
    L_0x0053:
        r5 = r3.zzbua;	 Catch:{ RemoteException -> 0x0063 }
        r5 = r5.zzwF();	 Catch:{ RemoteException -> 0x0063 }
        r5 = r5.zzyx();	 Catch:{ RemoteException -> 0x0063 }
        r2 = "Got binder with a wrong descriptor";
        r5.zzj(r2, r1);	 Catch:{ RemoteException -> 0x0063 }
        goto L_0x0072;
    L_0x0063:
        r5 = r3.zzbua;	 Catch:{ all -> 0x001c }
        r5 = r5.zzwF();	 Catch:{ all -> 0x001c }
        r5 = r5.zzyx();	 Catch:{ all -> 0x001c }
        r1 = "Service connect failed to get IMeasurementService";
        r5.log(r1);	 Catch:{ all -> 0x001c }
    L_0x0072:
        if (r0 != 0) goto L_0x0089;
    L_0x0074:
        r3.zzbuh = r4;	 Catch:{ all -> 0x001c }
        com.google.android.gms.common.stats.zza.zzrU();	 Catch:{ IllegalArgumentException -> 0x0097 }
        r4 = r3.zzbua;	 Catch:{ IllegalArgumentException -> 0x0097 }
        r4 = r4.getContext();	 Catch:{ IllegalArgumentException -> 0x0097 }
        r5 = r3.zzbua;	 Catch:{ IllegalArgumentException -> 0x0097 }
        r5 = r5.zzbtT;	 Catch:{ IllegalArgumentException -> 0x0097 }
        r4.unbindService(r5);	 Catch:{ IllegalArgumentException -> 0x0097 }
        goto L_0x0097;
    L_0x0089:
        r4 = r3.zzbua;	 Catch:{ all -> 0x001c }
        r4 = r4.zzwE();	 Catch:{ all -> 0x001c }
        r5 = new com.google.android.gms.internal.zzcir;	 Catch:{ all -> 0x001c }
        r5.<init>(r3, r0);	 Catch:{ all -> 0x001c }
        r4.zzj(r5);	 Catch:{ all -> 0x001c }
    L_0x0097:
        monitor-exit(r3);	 Catch:{ all -> 0x001c }
        return;
    L_0x0099:
        monitor-exit(r3);	 Catch:{ all -> 0x001c }
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzciq.onServiceConnected(android.content.ComponentName, android.os.IBinder):void");
    }

    @MainThread
    public final void onServiceDisconnected(ComponentName componentName) {
        zzbo.zzcz("MeasurementServiceConnection.onServiceDisconnected");
        this.zzbua.zzwF().zzyC().log("Service disconnected");
        this.zzbua.zzwE().zzj(new zzcis(this, componentName));
    }

    @WorkerThread
    public final void zzk(Intent intent) {
        this.zzbua.zzjC();
        Context context = this.zzbua.getContext();
        zza zzrU = zza.zzrU();
        synchronized (this) {
            if (this.zzbuh) {
                this.zzbua.zzwF().zzyD().log("Connection attempt already in progress");
                return;
            }
            this.zzbuh = true;
            zzrU.zza(context, intent, this.zzbua.zzbtT, 129);
        }
    }

    @WorkerThread
    public final void zzzm() {
        this.zzbua.zzjC();
        Context context = this.zzbua.getContext();
        synchronized (this) {
            if (this.zzbuh) {
                this.zzbua.zzwF().zzyD().log("Connection attempt already in progress");
            } else if (this.zzbui != null) {
                this.zzbua.zzwF().zzyD().log("Already awaiting connection attempt");
            } else {
                this.zzbui = new zzcfk(context, Looper.getMainLooper(), this, this);
                this.zzbua.zzwF().zzyD().log("Connecting to remote service");
                this.zzbuh = true;
                this.zzbui.zzrb();
            }
        }
    }
}
