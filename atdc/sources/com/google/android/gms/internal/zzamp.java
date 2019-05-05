package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import com.google.android.gms.common.internal.zzbo;

public final class zzamp implements ServiceConnection {
    final /* synthetic */ zzamn zzagk;
    private volatile zzany zzagl;
    private volatile boolean zzagm;

    protected zzamp(zzamn zzamn) {
        this.zzagk = zzamn;
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:33:0x0083 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:23:0x004b */
    /* JADX WARNING: Can't wrap try/catch for region: R(9:10|11|12|(2:(1:15)(3:16|(1:18)(1:20)|19)|21)(1:22)|(2:26|27)(3:28|29|(1:31)(1:32))|33|34|35|36) */
    /* JADX WARNING: Can't wrap try/catch for region: R(2:23|24) */
    /* JADX WARNING: Missing block: B:24:?, code skipped:
            r2.zzagk.zzbs("Service connect failed to get IAnalyticsService");
     */
    public final void onServiceConnected(android.content.ComponentName r3, android.os.IBinder r4) {
        /*
        r2 = this;
        r3 = "AnalyticsServiceConnection.onServiceConnected";
        com.google.android.gms.common.internal.zzbo.zzcz(r3);
        monitor-enter(r2);
        if (r4 != 0) goto L_0x0017;
    L_0x0008:
        r3 = r2.zzagk;	 Catch:{ all -> 0x0014 }
        r4 = "Service connected with null binder";
        r3.zzbs(r4);	 Catch:{ all -> 0x0014 }
        r2.notifyAll();	 Catch:{ all -> 0x008c }
        monitor-exit(r2);	 Catch:{ all -> 0x008c }
        return;
    L_0x0014:
        r3 = move-exception;
        goto L_0x0088;
    L_0x0017:
        r3 = 0;
        r0 = r4.getInterfaceDescriptor();	 Catch:{ RemoteException -> 0x004b }
        r1 = "com.google.android.gms.analytics.internal.IAnalyticsService";
        r1 = r1.equals(r0);	 Catch:{ RemoteException -> 0x004b }
        if (r1 == 0) goto L_0x0043;
    L_0x0024:
        if (r4 != 0) goto L_0x0027;
    L_0x0026:
        goto L_0x003b;
    L_0x0027:
        r0 = "com.google.android.gms.analytics.internal.IAnalyticsService";
        r0 = r4.queryLocalInterface(r0);	 Catch:{ RemoteException -> 0x004b }
        r1 = r0 instanceof com.google.android.gms.internal.zzany;	 Catch:{ RemoteException -> 0x004b }
        if (r1 == 0) goto L_0x0035;
    L_0x0031:
        r0 = (com.google.android.gms.internal.zzany) r0;	 Catch:{ RemoteException -> 0x004b }
    L_0x0033:
        r3 = r0;
        goto L_0x003b;
    L_0x0035:
        r0 = new com.google.android.gms.internal.zzanz;	 Catch:{ RemoteException -> 0x004b }
        r0.<init>(r4);	 Catch:{ RemoteException -> 0x004b }
        goto L_0x0033;
    L_0x003b:
        r4 = r2.zzagk;	 Catch:{ RemoteException -> 0x004b }
        r0 = "Bound to IAnalyticsService interface";
        r4.zzbo(r0);	 Catch:{ RemoteException -> 0x004b }
        goto L_0x0052;
    L_0x0043:
        r4 = r2.zzagk;	 Catch:{ RemoteException -> 0x004b }
        r1 = "Got binder with a wrong descriptor";
        r4.zze(r1, r0);	 Catch:{ RemoteException -> 0x004b }
        goto L_0x0052;
    L_0x004b:
        r4 = r2.zzagk;	 Catch:{ all -> 0x0014 }
        r0 = "Service connect failed to get IAnalyticsService";
        r4.zzbs(r0);	 Catch:{ all -> 0x0014 }
    L_0x0052:
        if (r3 != 0) goto L_0x0067;
    L_0x0054:
        com.google.android.gms.common.stats.zza.zzrU();	 Catch:{ IllegalArgumentException -> 0x0083 }
        r3 = r2.zzagk;	 Catch:{ IllegalArgumentException -> 0x0083 }
        r3 = r3.getContext();	 Catch:{ IllegalArgumentException -> 0x0083 }
        r4 = r2.zzagk;	 Catch:{ IllegalArgumentException -> 0x0083 }
        r4 = r4.zzagg;	 Catch:{ IllegalArgumentException -> 0x0083 }
        r3.unbindService(r4);	 Catch:{ IllegalArgumentException -> 0x0083 }
        goto L_0x0083;
    L_0x0067:
        r4 = r2.zzagm;	 Catch:{ all -> 0x0014 }
        if (r4 != 0) goto L_0x0081;
    L_0x006b:
        r4 = r2.zzagk;	 Catch:{ all -> 0x0014 }
        r0 = "onServiceConnected received after the timeout limit";
        r4.zzbr(r0);	 Catch:{ all -> 0x0014 }
        r4 = r2.zzagk;	 Catch:{ all -> 0x0014 }
        r4 = r4.zzkt();	 Catch:{ all -> 0x0014 }
        r0 = new com.google.android.gms.internal.zzamq;	 Catch:{ all -> 0x0014 }
        r0.<init>(r2, r3);	 Catch:{ all -> 0x0014 }
        r4.zzf(r0);	 Catch:{ all -> 0x0014 }
        goto L_0x0083;
    L_0x0081:
        r2.zzagl = r3;	 Catch:{ all -> 0x0014 }
    L_0x0083:
        r2.notifyAll();	 Catch:{ all -> 0x008c }
        monitor-exit(r2);	 Catch:{ all -> 0x008c }
        return;
    L_0x0088:
        r2.notifyAll();	 Catch:{ all -> 0x008c }
        throw r3;	 Catch:{ all -> 0x008c }
    L_0x008c:
        r3 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x008c }
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzamp.onServiceConnected(android.content.ComponentName, android.os.IBinder):void");
    }

    public final void onServiceDisconnected(ComponentName componentName) {
        zzbo.zzcz("AnalyticsServiceConnection.onServiceDisconnected");
        this.zzagk.zzkt().zzf(new zzamr(this, componentName));
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x005e */
    /* JADX WARNING: Can't wrap try/catch for region: R(6:9|10|11|12|13|(1:15)) */
    /* JADX WARNING: Missing block: B:17:0x0075, code skipped:
            return r0;
     */
    public final com.google.android.gms.internal.zzany zzkR() {
        /*
        r6 = this;
        com.google.android.gms.analytics.zzl.zzjC();
        r0 = new android.content.Intent;
        r1 = "com.google.android.gms.analytics.service.START";
        r0.<init>(r1);
        r1 = new android.content.ComponentName;
        r2 = "com.google.android.gms";
        r3 = "com.google.android.gms.analytics.service.AnalyticsService";
        r1.<init>(r2, r3);
        r0.setComponent(r1);
        r1 = r6.zzagk;
        r1 = r1.getContext();
        r2 = "app_package_name";
        r3 = r1.getPackageName();
        r0.putExtra(r2, r3);
        r2 = com.google.android.gms.common.stats.zza.zzrU();
        monitor-enter(r6);
        r3 = 0;
        r6.zzagl = r3;	 Catch:{ all -> 0x0076 }
        r4 = 1;
        r6.zzagm = r4;	 Catch:{ all -> 0x0076 }
        r4 = r6.zzagk;	 Catch:{ all -> 0x0076 }
        r4 = r4.zzagg;	 Catch:{ all -> 0x0076 }
        r5 = 129; // 0x81 float:1.81E-43 double:6.37E-322;
        r0 = r2.zza(r1, r0, r4, r5);	 Catch:{ all -> 0x0076 }
        r1 = r6.zzagk;	 Catch:{ all -> 0x0076 }
        r2 = "Bind to service requested";
        r4 = java.lang.Boolean.valueOf(r0);	 Catch:{ all -> 0x0076 }
        r1.zza(r2, r4);	 Catch:{ all -> 0x0076 }
        r1 = 0;
        if (r0 != 0) goto L_0x004e;
    L_0x004a:
        r6.zzagm = r1;	 Catch:{ all -> 0x0076 }
        monitor-exit(r6);	 Catch:{ all -> 0x0076 }
        return r3;
    L_0x004e:
        r0 = com.google.android.gms.internal.zzans.zzahP;	 Catch:{ InterruptedException -> 0x005e }
        r0 = r0.get();	 Catch:{ InterruptedException -> 0x005e }
        r0 = (java.lang.Long) r0;	 Catch:{ InterruptedException -> 0x005e }
        r4 = r0.longValue();	 Catch:{ InterruptedException -> 0x005e }
        r6.wait(r4);	 Catch:{ InterruptedException -> 0x005e }
        goto L_0x0065;
    L_0x005e:
        r0 = r6.zzagk;	 Catch:{ all -> 0x0076 }
        r2 = "Wait for service connect was interrupted";
        r0.zzbr(r2);	 Catch:{ all -> 0x0076 }
    L_0x0065:
        r6.zzagm = r1;	 Catch:{ all -> 0x0076 }
        r0 = r6.zzagl;	 Catch:{ all -> 0x0076 }
        r6.zzagl = r3;	 Catch:{ all -> 0x0076 }
        if (r0 != 0) goto L_0x0074;
    L_0x006d:
        r1 = r6.zzagk;	 Catch:{ all -> 0x0076 }
        r2 = "Successfully bound to service but never got onServiceConnected callback";
        r1.zzbs(r2);	 Catch:{ all -> 0x0076 }
    L_0x0074:
        monitor-exit(r6);	 Catch:{ all -> 0x0076 }
        return r0;
    L_0x0076:
        r0 = move-exception;
        monitor-exit(r6);	 Catch:{ all -> 0x0076 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzamp.zzkR():com.google.android.gms.internal.zzany");
    }
}
