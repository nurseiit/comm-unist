package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Api.zze;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.internal.zzbx;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

public final class zzbdd<O extends ApiOptions> implements ConnectionCallbacks, OnConnectionFailedListener, zzbbj {
    private final zzbat<O> zzaAK;
    private final zze zzaCy;
    private boolean zzaDA;
    private /* synthetic */ zzbdb zzaEm;
    private final Queue<zzbam> zzaEn = new LinkedList();
    private final zzb zzaEo;
    private final zzbbt zzaEp;
    private final Set<zzbav> zzaEq = new HashSet();
    private final Map<zzbdy<?>, zzbef> zzaEr = new HashMap();
    private final int zzaEs;
    private final zzbej zzaEt;
    private ConnectionResult zzaEu = null;

    @WorkerThread
    public zzbdd(zzbdb zzbdb, GoogleApi<O> googleApi) {
        this.zzaEm = zzbdb;
        this.zzaCy = googleApi.zza(zzbdb.mHandler.getLooper(), this);
        if (this.zzaCy instanceof zzbx) {
            zzbx zzbx = (zzbx) this.zzaCy;
            this.zzaEo = null;
        } else {
            this.zzaEo = this.zzaCy;
        }
        this.zzaAK = googleApi.zzph();
        this.zzaEp = new zzbbt();
        this.zzaEs = googleApi.getInstanceId();
        if (this.zzaCy.zzmv()) {
            this.zzaEt = googleApi.zza(zzbdb.mContext, zzbdb.mHandler);
        } else {
            this.zzaEt = null;
        }
    }

    @WorkerThread
    private final void zzb(zzbam zzbam) {
        zzbam.zza(this.zzaEp, zzmv());
        try {
            zzbam.zza(this);
        } catch (DeadObjectException unused) {
            onConnectionSuspended(1);
            this.zzaCy.disconnect();
        }
    }

    @WorkerThread
    private final void zzi(ConnectionResult connectionResult) {
        for (zzbav zza : this.zzaEq) {
            zza.zza(this.zzaAK, connectionResult);
        }
        this.zzaEq.clear();
    }

    @WorkerThread
    private final void zzqq() {
        zzqt();
        zzi(ConnectionResult.zzazX);
        zzqv();
        for (zzbef zzbef : this.zzaEr.values()) {
            try {
                zzbef.zzaBu.zzb(this.zzaEo, new TaskCompletionSource());
            } catch (DeadObjectException unused) {
                onConnectionSuspended(1);
                this.zzaCy.disconnect();
            } catch (RemoteException unused2) {
            }
        }
        while (this.zzaCy.isConnected() && !this.zzaEn.isEmpty()) {
            zzb((zzbam) this.zzaEn.remove());
        }
        zzqw();
    }

    @WorkerThread
    private final void zzqr() {
        zzqt();
        this.zzaDA = true;
        this.zzaEp.zzpQ();
        this.zzaEm.mHandler.sendMessageDelayed(Message.obtain(this.zzaEm.mHandler, 9, this.zzaAK), this.zzaEm.zzaDC);
        this.zzaEm.mHandler.sendMessageDelayed(Message.obtain(this.zzaEm.mHandler, 11, this.zzaAK), this.zzaEm.zzaDB);
        this.zzaEm.zzaEg = -1;
    }

    @WorkerThread
    private final void zzqv() {
        if (this.zzaDA) {
            this.zzaEm.mHandler.removeMessages(11, this.zzaAK);
            this.zzaEm.mHandler.removeMessages(9, this.zzaAK);
            this.zzaDA = false;
        }
    }

    private final void zzqw() {
        this.zzaEm.mHandler.removeMessages(12, this.zzaAK);
        this.zzaEm.mHandler.sendMessageDelayed(this.zzaEm.mHandler.obtainMessage(12, this.zzaAK), this.zzaEm.zzaEe);
    }

    @WorkerThread
    public final void connect() {
        zzbo.zza(this.zzaEm.mHandler);
        if (!this.zzaCy.isConnected() && !this.zzaCy.isConnecting()) {
            if (this.zzaCy.zzpe() && this.zzaEm.zzaEg != 0) {
                this.zzaEm.zzaEg = this.zzaEm.zzaBd.isGooglePlayServicesAvailable(this.zzaEm.mContext);
                if (this.zzaEm.zzaEg != 0) {
                    onConnectionFailed(new ConnectionResult(this.zzaEm.zzaEg, null));
                    return;
                }
            }
            zzbdh zzbdh = new zzbdh(this.zzaEm, this.zzaCy, this.zzaAK);
            if (this.zzaCy.zzmv()) {
                this.zzaEt.zza(zzbdh);
            }
            this.zzaCy.zza(zzbdh);
        }
    }

    public final int getInstanceId() {
        return this.zzaEs;
    }

    /* Access modifiers changed, original: final */
    public final boolean isConnected() {
        return this.zzaCy.isConnected();
    }

    public final void onConnected(@Nullable Bundle bundle) {
        if (Looper.myLooper() == this.zzaEm.mHandler.getLooper()) {
            zzqq();
        } else {
            this.zzaEm.mHandler.post(new zzbde(this));
        }
    }

    /* JADX WARNING: Missing block: B:23:0x0069, code skipped:
            if (r4.zzaEm.zzc(r5, r4.zzaEs) != false) goto L_0x00cc;
     */
    /* JADX WARNING: Missing block: B:25:0x0071, code skipped:
            if (r5.getErrorCode() != 18) goto L_0x0076;
     */
    /* JADX WARNING: Missing block: B:26:0x0073, code skipped:
            r4.zzaDA = true;
     */
    /* JADX WARNING: Missing block: B:28:0x0078, code skipped:
            if (r4.zzaDA == false) goto L_0x0098;
     */
    /* JADX WARNING: Missing block: B:29:0x007a, code skipped:
            r4.zzaEm.mHandler.sendMessageDelayed(android.os.Message.obtain(r4.zzaEm.mHandler, 9, r4.zzaAK), r4.zzaEm.zzaDC);
     */
    /* JADX WARNING: Missing block: B:30:0x0097, code skipped:
            return;
     */
    /* JADX WARNING: Missing block: B:31:0x0098, code skipped:
            r1 = java.lang.String.valueOf(r4.zzaAK.zzpr());
            r3 = new java.lang.StringBuilder(java.lang.String.valueOf(r1).length() + 38);
            r3.append("API: ");
            r3.append(r1);
            r3.append(" is not available on this device.");
            zzt(new com.google.android.gms.common.api.Status(17, r3.toString()));
     */
    /* JADX WARNING: Missing block: B:32:0x00cc, code skipped:
            return;
     */
    @android.support.annotation.WorkerThread
    public final void onConnectionFailed(@android.support.annotation.NonNull com.google.android.gms.common.ConnectionResult r5) {
        /*
        r4 = this;
        r0 = r4.zzaEm;
        r0 = r0.mHandler;
        com.google.android.gms.common.internal.zzbo.zza(r0);
        r0 = r4.zzaEt;
        if (r0 == 0) goto L_0x0012;
    L_0x000d:
        r0 = r4.zzaEt;
        r0.zzqI();
    L_0x0012:
        r4.zzqt();
        r0 = r4.zzaEm;
        r1 = -1;
        r0.zzaEg = r1;
        r4.zzi(r5);
        r0 = r5.getErrorCode();
        r1 = 4;
        if (r0 != r1) goto L_0x002d;
    L_0x0025:
        r5 = com.google.android.gms.internal.zzbdb.zzaEd;
        r4.zzt(r5);
        return;
    L_0x002d:
        r0 = r4.zzaEn;
        r0 = r0.isEmpty();
        if (r0 == 0) goto L_0x0038;
    L_0x0035:
        r4.zzaEu = r5;
        return;
    L_0x0038:
        r0 = com.google.android.gms.internal.zzbdb.zzuF;
        monitor-enter(r0);
        r1 = r4.zzaEm;	 Catch:{ all -> 0x00cd }
        r1 = r1.zzaEj;	 Catch:{ all -> 0x00cd }
        if (r1 == 0) goto L_0x0060;
    L_0x0045:
        r1 = r4.zzaEm;	 Catch:{ all -> 0x00cd }
        r1 = r1.zzaEk;	 Catch:{ all -> 0x00cd }
        r2 = r4.zzaAK;	 Catch:{ all -> 0x00cd }
        r1 = r1.contains(r2);	 Catch:{ all -> 0x00cd }
        if (r1 == 0) goto L_0x0060;
    L_0x0053:
        r1 = r4.zzaEm;	 Catch:{ all -> 0x00cd }
        r1 = r1.zzaEj;	 Catch:{ all -> 0x00cd }
        r2 = r4.zzaEs;	 Catch:{ all -> 0x00cd }
        r1.zzb(r5, r2);	 Catch:{ all -> 0x00cd }
        monitor-exit(r0);	 Catch:{ all -> 0x00cd }
        return;
    L_0x0060:
        monitor-exit(r0);	 Catch:{ all -> 0x00cd }
        r0 = r4.zzaEm;
        r1 = r4.zzaEs;
        r0 = r0.zzc(r5, r1);
        if (r0 != 0) goto L_0x00cc;
    L_0x006b:
        r5 = r5.getErrorCode();
        r0 = 18;
        if (r5 != r0) goto L_0x0076;
    L_0x0073:
        r5 = 1;
        r4.zzaDA = r5;
    L_0x0076:
        r5 = r4.zzaDA;
        if (r5 == 0) goto L_0x0098;
    L_0x007a:
        r5 = r4.zzaEm;
        r5 = r5.mHandler;
        r0 = r4.zzaEm;
        r0 = r0.mHandler;
        r1 = 9;
        r2 = r4.zzaAK;
        r0 = android.os.Message.obtain(r0, r1, r2);
        r1 = r4.zzaEm;
        r1 = r1.zzaDC;
        r5.sendMessageDelayed(r0, r1);
        return;
    L_0x0098:
        r5 = new com.google.android.gms.common.api.Status;
        r0 = 17;
        r1 = r4.zzaAK;
        r1 = r1.zzpr();
        r1 = java.lang.String.valueOf(r1);
        r2 = java.lang.String.valueOf(r1);
        r2 = r2.length();
        r2 = r2 + 38;
        r3 = new java.lang.StringBuilder;
        r3.<init>(r2);
        r2 = "API: ";
        r3.append(r2);
        r3.append(r1);
        r1 = " is not available on this device.";
        r3.append(r1);
        r1 = r3.toString();
        r5.<init>(r0, r1);
        r4.zzt(r5);
    L_0x00cc:
        return;
    L_0x00cd:
        r5 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x00cd }
        throw r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbdd.onConnectionFailed(com.google.android.gms.common.ConnectionResult):void");
    }

    public final void onConnectionSuspended(int i) {
        if (Looper.myLooper() == this.zzaEm.mHandler.getLooper()) {
            zzqr();
        } else {
            this.zzaEm.mHandler.post(new zzbdf(this));
        }
    }

    @WorkerThread
    public final void resume() {
        zzbo.zza(this.zzaEm.mHandler);
        if (this.zzaDA) {
            connect();
        }
    }

    @WorkerThread
    public final void signOut() {
        zzbo.zza(this.zzaEm.mHandler);
        zzt(zzbdb.zzaEc);
        this.zzaEp.zzpP();
        for (zzbdy zzbar : this.zzaEr.keySet()) {
            zza(new zzbar(zzbar, new TaskCompletionSource()));
        }
        zzi(new ConnectionResult(4));
        this.zzaCy.disconnect();
    }

    public final void zza(ConnectionResult connectionResult, Api<?> api, boolean z) {
        if (Looper.myLooper() == this.zzaEm.mHandler.getLooper()) {
            onConnectionFailed(connectionResult);
        } else {
            this.zzaEm.mHandler.post(new zzbdg(this, connectionResult));
        }
    }

    @WorkerThread
    public final void zza(zzbam zzbam) {
        zzbo.zza(this.zzaEm.mHandler);
        if (this.zzaCy.isConnected()) {
            zzb(zzbam);
            zzqw();
            return;
        }
        this.zzaEn.add(zzbam);
        if (this.zzaEu == null || !this.zzaEu.hasResolution()) {
            connect();
        } else {
            onConnectionFailed(this.zzaEu);
        }
    }

    @WorkerThread
    public final void zza(zzbav zzbav) {
        zzbo.zza(this.zzaEm.mHandler);
        this.zzaEq.add(zzbav);
    }

    @WorkerThread
    public final void zzh(@NonNull ConnectionResult connectionResult) {
        zzbo.zza(this.zzaEm.mHandler);
        this.zzaCy.disconnect();
        onConnectionFailed(connectionResult);
    }

    public final boolean zzmv() {
        return this.zzaCy.zzmv();
    }

    public final zze zzpJ() {
        return this.zzaCy;
    }

    @WorkerThread
    public final void zzqd() {
        zzbo.zza(this.zzaEm.mHandler);
        if (this.zzaDA) {
            zzqv();
            zzt(this.zzaEm.zzaBd.isGooglePlayServicesAvailable(this.zzaEm.mContext) == 18 ? new Status(8, "Connection timed out while waiting for Google Play services update to complete.") : new Status(8, "API failed to connect while resuming due to an unknown error."));
            this.zzaCy.disconnect();
        }
    }

    public final Map<zzbdy<?>, zzbef> zzqs() {
        return this.zzaEr;
    }

    @WorkerThread
    public final void zzqt() {
        zzbo.zza(this.zzaEm.mHandler);
        this.zzaEu = null;
    }

    @WorkerThread
    public final ConnectionResult zzqu() {
        zzbo.zza(this.zzaEm.mHandler);
        return this.zzaEu;
    }

    @WorkerThread
    public final void zzqx() {
        zzbo.zza(this.zzaEm.mHandler);
        if (this.zzaCy.isConnected() && this.zzaEr.size() == 0) {
            if (this.zzaEp.zzpO()) {
                zzqw();
                return;
            }
            this.zzaCy.disconnect();
        }
    }

    /* Access modifiers changed, original: final */
    public final zzctk zzqy() {
        return this.zzaEt == null ? null : this.zzaEt.zzqy();
    }

    @WorkerThread
    public final void zzt(Status status) {
        zzbo.zza(this.zzaEm.mHandler);
        for (zzbam zzp : this.zzaEn) {
            zzp.zzp(status);
        }
        this.zzaEn.clear();
    }
}
