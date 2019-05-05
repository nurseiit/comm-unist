package com.google.android.gms.gcm;

import android.annotation.TargetApi;
import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.support.annotation.CallSuper;
import android.support.annotation.Nullable;
import android.util.Log;
import com.google.android.gms.common.util.zzq;
import com.google.android.gms.common.util.zzw;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;

public abstract class GcmTaskService extends Service {
    public static final String SERVICE_ACTION_EXECUTE_TASK = "com.google.android.gms.gcm.ACTION_TASK_READY";
    public static final String SERVICE_ACTION_INITIALIZE = "com.google.android.gms.gcm.SERVICE_ACTION_INITIALIZE";
    public static final String SERVICE_PERMISSION = "com.google.android.gms.permission.BIND_NETWORK_TASK_SERVICE";
    private ComponentName componentName;
    private final Object lock = new Object();
    private final Set<String> zzbfE = new HashSet();
    private int zzbfF;
    private Messenger zzbfG;
    private ExecutorService zzqF;

    @TargetApi(21)
    class zza extends Handler {
        zza(Looper looper) {
            super(looper);
        }

        public final void handleMessage(Message message) {
            if (zzw.zzb(GcmTaskService.this, message.sendingUid, "com.google.android.gms")) {
                int i = message.what;
                if (i != 4) {
                    String valueOf;
                    StringBuilder stringBuilder;
                    switch (i) {
                        case 1:
                            Bundle data = message.getData();
                            if (data != null) {
                                Messenger messenger = message.replyTo;
                                if (messenger != null) {
                                    GcmTaskService.this.zza(new zzb(data.getString("tag"), messenger, data.getBundle("extras"), data.getParcelableArrayList("triggered_uris")));
                                }
                            }
                            return;
                        case 2:
                            if (Log.isLoggable("GcmTaskService", 3)) {
                                valueOf = String.valueOf(message);
                                stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 45);
                                stringBuilder.append("ignoring unimplemented stop message for now: ");
                                stringBuilder.append(valueOf);
                                Log.d("GcmTaskService", stringBuilder.toString());
                            }
                            return;
                        default:
                            valueOf = String.valueOf(message);
                            stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 31);
                            stringBuilder.append("Unrecognized message received: ");
                            stringBuilder.append(valueOf);
                            Log.e("GcmTaskService", stringBuilder.toString());
                            return;
                    }
                }
                GcmTaskService.this.onInitializeTasks();
                return;
            }
            Log.e("GcmTaskService", "unable to verify presence of Google Play Services");
        }
    }

    class zzb implements Runnable {
        private final Bundle mExtras;
        @Nullable
        private final Messenger mMessenger;
        private final String mTag;
        private final List<Uri> zzbfJ;
        @Nullable
        private final zzd zzbfK;

        zzb(String str, IBinder iBinder, Bundle bundle, List<Uri> list) {
            zzd zzd;
            this.mTag = str;
            if (iBinder == null) {
                zzd = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.gcm.INetworkTaskCallback");
                zzd = queryLocalInterface instanceof zzd ? (zzd) queryLocalInterface : new zze(iBinder);
            }
            this.zzbfK = zzd;
            this.mExtras = bundle;
            this.zzbfJ = list;
            this.mMessenger = null;
        }

        zzb(String str, Messenger messenger, Bundle bundle, List<Uri> list) {
            this.mTag = str;
            this.mMessenger = messenger;
            this.mExtras = bundle;
            this.zzbfJ = list;
            this.zzbfK = null;
        }

        /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x004b */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing block: B:14:?, code skipped:
            r6 = "GcmTaskService";
            r1 = "Error reporting result of operation to scheduler for ";
            r2 = java.lang.String.valueOf(r5.mTag);
     */
        /* JADX WARNING: Missing block: B:15:0x0059, code skipped:
            if (r2.length() != 0) goto L_0x005b;
     */
        /* JADX WARNING: Missing block: B:16:0x005b, code skipped:
            r1 = r1.concat(r2);
     */
        /* JADX WARNING: Missing block: B:17:0x0060, code skipped:
            r1 = new java.lang.String(r1);
     */
        /* JADX WARNING: Missing block: B:18:0x0066, code skipped:
            android.util.Log.e(r6, r1);
     */
        /* JADX WARNING: Missing block: B:21:0x006d, code skipped:
            if (zzvC() == false) goto L_0x006f;
     */
        /* JADX WARNING: Missing block: B:22:0x006f, code skipped:
            r6 = r5.zzbfI;
            r1 = r5.mTag;
     */
        /* JADX WARNING: Missing block: B:26:0x007a, code skipped:
            if (zzvC() == false) goto L_0x007c;
     */
        /* JADX WARNING: Missing block: B:27:0x007c, code skipped:
            com.google.android.gms.gcm.GcmTaskService.zza(r5.zzbfI, r5.mTag);
     */
        private final void zzbg(int r6) {
            /*
            r5 = this;
            r0 = com.google.android.gms.gcm.GcmTaskService.this;
            r0 = r0.lock;
            monitor-enter(r0);
            r1 = r5.zzvC();	 Catch:{ RemoteException -> 0x004b }
            if (r1 == 0) goto L_0x0036;
        L_0x000d:
            r1 = r5.mMessenger;	 Catch:{ RemoteException -> 0x004b }
            r2 = android.os.Message.obtain();	 Catch:{ RemoteException -> 0x004b }
            r3 = 3;
            r2.what = r3;	 Catch:{ RemoteException -> 0x004b }
            r2.arg1 = r6;	 Catch:{ RemoteException -> 0x004b }
            r6 = new android.os.Bundle;	 Catch:{ RemoteException -> 0x004b }
            r6.<init>();	 Catch:{ RemoteException -> 0x004b }
            r3 = "component";
            r4 = com.google.android.gms.gcm.GcmTaskService.this;	 Catch:{ RemoteException -> 0x004b }
            r4 = r4.componentName;	 Catch:{ RemoteException -> 0x004b }
            r6.putParcelable(r3, r4);	 Catch:{ RemoteException -> 0x004b }
            r3 = "tag";
            r4 = r5.mTag;	 Catch:{ RemoteException -> 0x004b }
            r6.putString(r3, r4);	 Catch:{ RemoteException -> 0x004b }
            r2.setData(r6);	 Catch:{ RemoteException -> 0x004b }
            r1.send(r2);	 Catch:{ RemoteException -> 0x004b }
            goto L_0x003b;
        L_0x0036:
            r1 = r5.zzbfK;	 Catch:{ RemoteException -> 0x004b }
            r1.zzbh(r6);	 Catch:{ RemoteException -> 0x004b }
        L_0x003b:
            r6 = r5.zzvC();	 Catch:{ all -> 0x0084 }
            if (r6 != 0) goto L_0x0074;
        L_0x0041:
            r6 = com.google.android.gms.gcm.GcmTaskService.this;	 Catch:{ all -> 0x0084 }
            r1 = r5.mTag;	 Catch:{ all -> 0x0084 }
        L_0x0045:
            r6.zzdp(r1);	 Catch:{ all -> 0x0084 }
            goto L_0x0074;
        L_0x0049:
            r6 = move-exception;
            goto L_0x0076;
        L_0x004b:
            r6 = "GcmTaskService";
            r1 = "Error reporting result of operation to scheduler for ";
            r2 = r5.mTag;	 Catch:{ all -> 0x0049 }
            r2 = java.lang.String.valueOf(r2);	 Catch:{ all -> 0x0049 }
            r3 = r2.length();	 Catch:{ all -> 0x0049 }
            if (r3 == 0) goto L_0x0060;
        L_0x005b:
            r1 = r1.concat(r2);	 Catch:{ all -> 0x0049 }
            goto L_0x0066;
        L_0x0060:
            r2 = new java.lang.String;	 Catch:{ all -> 0x0049 }
            r2.<init>(r1);	 Catch:{ all -> 0x0049 }
            r1 = r2;
        L_0x0066:
            android.util.Log.e(r6, r1);	 Catch:{ all -> 0x0049 }
            r6 = r5.zzvC();	 Catch:{ all -> 0x0084 }
            if (r6 != 0) goto L_0x0074;
        L_0x006f:
            r6 = com.google.android.gms.gcm.GcmTaskService.this;	 Catch:{ all -> 0x0084 }
            r1 = r5.mTag;	 Catch:{ all -> 0x0084 }
            goto L_0x0045;
        L_0x0074:
            monitor-exit(r0);	 Catch:{ all -> 0x0084 }
            return;
        L_0x0076:
            r1 = r5.zzvC();	 Catch:{ all -> 0x0084 }
            if (r1 != 0) goto L_0x0083;
        L_0x007c:
            r1 = com.google.android.gms.gcm.GcmTaskService.this;	 Catch:{ all -> 0x0084 }
            r2 = r5.mTag;	 Catch:{ all -> 0x0084 }
            r1.zzdp(r2);	 Catch:{ all -> 0x0084 }
        L_0x0083:
            throw r6;	 Catch:{ all -> 0x0084 }
        L_0x0084:
            r6 = move-exception;
            monitor-exit(r0);	 Catch:{ all -> 0x0084 }
            throw r6;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.gcm.GcmTaskService$zzb.zzbg(int):void");
        }

        private final boolean zzvC() {
            return this.mMessenger != null;
        }

        public final void run() {
            zzbg(GcmTaskService.this.onRunTask(new TaskParams(this.mTag, this.mExtras, this.zzbfJ)));
        }
    }

    private final void zza(zzb zzb) {
        try {
            this.zzqF.execute(zzb);
        } catch (RejectedExecutionException e) {
            Log.e("GcmTaskService", "Executor is shutdown. onDestroy was called but main looper had an unprocessed start task message. The task will be retried with backoff delay.", e);
            zzb.zzbg(1);
        }
    }

    private final void zzbf(int i) {
        synchronized (this.lock) {
            this.zzbfF = i;
            if (this.zzbfE.isEmpty()) {
                stopSelf(this.zzbfF);
            }
        }
    }

    private final void zzdp(String str) {
        synchronized (this.lock) {
            this.zzbfE.remove(str);
            if (this.zzbfE.isEmpty()) {
                stopSelf(this.zzbfF);
            }
        }
    }

    @CallSuper
    public IBinder onBind(Intent intent) {
        return (intent != null && zzq.zzse() && SERVICE_ACTION_EXECUTE_TASK.equals(intent.getAction())) ? this.zzbfG.getBinder() : null;
    }

    @CallSuper
    public void onCreate() {
        super.onCreate();
        this.zzqF = Executors.newFixedThreadPool(2, new zzb(this));
        this.zzbfG = new Messenger(new zza(Looper.getMainLooper()));
        this.componentName = new ComponentName(this, getClass());
    }

    @CallSuper
    public void onDestroy() {
        super.onDestroy();
        List shutdownNow = this.zzqF.shutdownNow();
        if (!shutdownNow.isEmpty()) {
            int size = shutdownNow.size();
            StringBuilder stringBuilder = new StringBuilder(79);
            stringBuilder.append("Shutting down, but not all tasks are finished executing. Remaining: ");
            stringBuilder.append(size);
            Log.e("GcmTaskService", stringBuilder.toString());
        }
    }

    public void onInitializeTasks() {
    }

    public abstract int onRunTask(TaskParams taskParams);

    /* JADX WARNING: Missing block: B:25:?, code skipped:
            zza(new com.google.android.gms.gcm.GcmTaskService.zzb(r7, r3, ((com.google.android.gms.gcm.PendingCallback) r0).zzaHj, r5, r6));
     */
    @android.support.annotation.CallSuper
    public int onStartCommand(android.content.Intent r8, int r9, int r10) {
        /*
        r7 = this;
        r9 = 2;
        if (r8 != 0) goto L_0x0007;
    L_0x0003:
        r7.zzbf(r10);
        return r9;
    L_0x0007:
        r0 = com.google.android.gms.gcm.PendingCallback.class;
        r0 = r0.getClassLoader();	 Catch:{ all -> 0x0106 }
        r8.setExtrasClassLoader(r0);	 Catch:{ all -> 0x0106 }
        r0 = r8.getAction();	 Catch:{ all -> 0x0106 }
        r1 = "com.google.android.gms.gcm.ACTION_TASK_READY";
        r1 = r1.equals(r0);	 Catch:{ all -> 0x0106 }
        if (r1 == 0) goto L_0x00d1;
    L_0x001c:
        r0 = "tag";
        r3 = r8.getStringExtra(r0);	 Catch:{ all -> 0x0106 }
        r0 = "callback";
        r0 = r8.getParcelableExtra(r0);	 Catch:{ all -> 0x0106 }
        r1 = "extras";
        r5 = r8.getBundleExtra(r1);	 Catch:{ all -> 0x0106 }
        r1 = "triggered_uris";
        r6 = r8.getParcelableArrayListExtra(r1);	 Catch:{ all -> 0x0106 }
        r8 = r0 instanceof com.google.android.gms.gcm.PendingCallback;	 Catch:{ all -> 0x0106 }
        if (r8 != 0) goto L_0x0075;
    L_0x0038:
        r8 = "GcmTaskService";
        r0 = r7.getPackageName();	 Catch:{ all -> 0x0106 }
        r0 = java.lang.String.valueOf(r0);	 Catch:{ all -> 0x0106 }
        r1 = java.lang.String.valueOf(r0);	 Catch:{ all -> 0x0106 }
        r1 = r1.length();	 Catch:{ all -> 0x0106 }
        r1 = r1 + 47;
        r2 = java.lang.String.valueOf(r3);	 Catch:{ all -> 0x0106 }
        r2 = r2.length();	 Catch:{ all -> 0x0106 }
        r1 = r1 + r2;
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0106 }
        r2.<init>(r1);	 Catch:{ all -> 0x0106 }
        r2.append(r0);	 Catch:{ all -> 0x0106 }
        r0 = " ";
        r2.append(r0);	 Catch:{ all -> 0x0106 }
        r2.append(r3);	 Catch:{ all -> 0x0106 }
        r0 = ": Could not process request, invalid callback.";
        r2.append(r0);	 Catch:{ all -> 0x0106 }
        r0 = r2.toString();	 Catch:{ all -> 0x0106 }
        android.util.Log.e(r8, r0);	 Catch:{ all -> 0x0106 }
        r7.zzbf(r10);
        return r9;
    L_0x0075:
        r8 = r7.lock;	 Catch:{ all -> 0x0106 }
        monitor-enter(r8);	 Catch:{ all -> 0x0106 }
        r1 = r7.zzbfE;	 Catch:{ all -> 0x00ce }
        r1 = r1.add(r3);	 Catch:{ all -> 0x00ce }
        if (r1 != 0) goto L_0x00be;
    L_0x0080:
        r0 = "GcmTaskService";
        r1 = r7.getPackageName();	 Catch:{ all -> 0x00ce }
        r1 = java.lang.String.valueOf(r1);	 Catch:{ all -> 0x00ce }
        r2 = java.lang.String.valueOf(r1);	 Catch:{ all -> 0x00ce }
        r2 = r2.length();	 Catch:{ all -> 0x00ce }
        r2 = r2 + 44;
        r4 = java.lang.String.valueOf(r3);	 Catch:{ all -> 0x00ce }
        r4 = r4.length();	 Catch:{ all -> 0x00ce }
        r2 = r2 + r4;
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00ce }
        r4.<init>(r2);	 Catch:{ all -> 0x00ce }
        r4.append(r1);	 Catch:{ all -> 0x00ce }
        r1 = " ";
        r4.append(r1);	 Catch:{ all -> 0x00ce }
        r4.append(r3);	 Catch:{ all -> 0x00ce }
        r1 = ": Task already running, won't start another";
        r4.append(r1);	 Catch:{ all -> 0x00ce }
        r1 = r4.toString();	 Catch:{ all -> 0x00ce }
        android.util.Log.w(r0, r1);	 Catch:{ all -> 0x00ce }
        monitor-exit(r8);	 Catch:{ all -> 0x00ce }
        r7.zzbf(r10);
        return r9;
    L_0x00be:
        monitor-exit(r8);	 Catch:{ all -> 0x00ce }
        r0 = (com.google.android.gms.gcm.PendingCallback) r0;	 Catch:{ all -> 0x0106 }
        r4 = r0.zzaHj;	 Catch:{ all -> 0x0106 }
        r8 = new com.google.android.gms.gcm.GcmTaskService$zzb;	 Catch:{ all -> 0x0106 }
        r1 = r8;
        r2 = r7;
        r1.<init>(r3, r4, r5, r6);	 Catch:{ all -> 0x0106 }
        r7.zza(r8);	 Catch:{ all -> 0x0106 }
        goto L_0x0102;
    L_0x00ce:
        r9 = move-exception;
        monitor-exit(r8);	 Catch:{ all -> 0x00ce }
        throw r9;	 Catch:{ all -> 0x0106 }
    L_0x00d1:
        r8 = "com.google.android.gms.gcm.SERVICE_ACTION_INITIALIZE";
        r8 = r8.equals(r0);	 Catch:{ all -> 0x0106 }
        if (r8 == 0) goto L_0x00dd;
    L_0x00d9:
        r7.onInitializeTasks();	 Catch:{ all -> 0x0106 }
        goto L_0x0102;
    L_0x00dd:
        r8 = "GcmTaskService";
        r1 = java.lang.String.valueOf(r0);	 Catch:{ all -> 0x0106 }
        r1 = r1.length();	 Catch:{ all -> 0x0106 }
        r1 = r1 + 37;
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0106 }
        r2.<init>(r1);	 Catch:{ all -> 0x0106 }
        r1 = "Unknown action received ";
        r2.append(r1);	 Catch:{ all -> 0x0106 }
        r2.append(r0);	 Catch:{ all -> 0x0106 }
        r0 = ", terminating";
        r2.append(r0);	 Catch:{ all -> 0x0106 }
        r0 = r2.toString();	 Catch:{ all -> 0x0106 }
        android.util.Log.e(r8, r0);	 Catch:{ all -> 0x0106 }
    L_0x0102:
        r7.zzbf(r10);
        return r9;
    L_0x0106:
        r8 = move-exception;
        r7.zzbf(r10);
        throw r8;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.gcm.GcmTaskService.onStartCommand(android.content.Intent, int, int):int");
    }
}
