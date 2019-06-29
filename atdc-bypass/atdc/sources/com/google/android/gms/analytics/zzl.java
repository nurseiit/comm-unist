package com.google.android.gms.analytics;

import android.content.Context;
import android.net.Uri;
import android.os.Process;
import android.util.DisplayMetrics;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzalk;
import com.google.android.gms.internal.zzalp;
import com.google.android.gms.internal.zzaos;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class zzl {
    private static volatile zzl zzaed;
    private final Context mContext;
    private final List<Object> zzaee = new CopyOnWriteArrayList();
    private final zzg zzaef = new zzg();
    private final zza zzaeg = new zza();
    private volatile zzalk zzaeh;
    private UncaughtExceptionHandler zzaei;

    class zza extends ThreadPoolExecutor {
        public zza() {
            super(1, 1, 1, TimeUnit.MINUTES, new LinkedBlockingQueue());
            setThreadFactory(new zzb());
            allowCoreThreadTimeOut(true);
        }

        /* Access modifiers changed, original: protected|final */
        public final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
            return new zzn(this, runnable, t);
        }
    }

    static class zzb implements ThreadFactory {
        private static final AtomicInteger zzaem = new AtomicInteger();

        private zzb() {
        }

        /* synthetic */ zzb(zzm zzm) {
            this();
        }

        public final Thread newThread(Runnable runnable) {
            int incrementAndGet = zzaem.incrementAndGet();
            StringBuilder stringBuilder = new StringBuilder(23);
            stringBuilder.append("measurement-");
            stringBuilder.append(incrementAndGet);
            return new zzc(runnable, stringBuilder.toString());
        }
    }

    static class zzc extends Thread {
        zzc(Runnable runnable, String str) {
            super(runnable, str);
        }

        public final void run() {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    private zzl(Context context) {
        context = context.getApplicationContext();
        zzbo.zzu(context);
        this.mContext = context;
    }

    public static zzl zzae(Context context) {
        zzbo.zzu(context);
        if (zzaed == null) {
            synchronized (zzl.class) {
                if (zzaed == null) {
                    zzaed = new zzl(context);
                }
            }
        }
        return zzaed;
    }

    private static void zzb(zzi zzi) {
        zzbo.zzcG("deliver should be called from worker thread");
        zzbo.zzb(zzi.zzju(), (Object) "Measurement must be submitted");
        List<zzo> zzjr = zzi.zzjr();
        if (!zzjr.isEmpty()) {
            HashSet hashSet = new HashSet();
            for (zzo zzo : zzjr) {
                Uri zzjl = zzo.zzjl();
                if (!hashSet.contains(zzjl)) {
                    hashSet.add(zzjl);
                    zzo.zzb(zzi);
                }
            }
        }
    }

    public static void zzjC() {
        if (!(Thread.currentThread() instanceof zzc)) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    public final Context getContext() {
        return this.mContext;
    }

    public final void zza(UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.zzaei = uncaughtExceptionHandler;
    }

    public final <V> Future<V> zzd(Callable<V> callable) {
        zzbo.zzu(callable);
        if (!(Thread.currentThread() instanceof zzc)) {
            return this.zzaeg.submit(callable);
        }
        FutureTask futureTask = new FutureTask(callable);
        futureTask.run();
        return futureTask;
    }

    /* Access modifiers changed, original: final */
    public final void zze(zzi zzi) {
        if (zzi.zzjx()) {
            throw new IllegalStateException("Measurement prototype can't be submitted");
        } else if (zzi.zzju()) {
            throw new IllegalStateException("Measurement can only be submitted once");
        } else {
            zzi = zzi.zzjp();
            zzi.zzjv();
            this.zzaeg.execute(new zzm(this, zzi));
        }
    }

    public final void zzf(Runnable runnable) {
        zzbo.zzu(runnable);
        this.zzaeg.submit(runnable);
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:16:0x0047 */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:16|17|(1:19)(1:20)|21) */
    /* JADX WARNING: Missing block: B:17:?, code skipped:
            r1 = "GAv4";
            r4 = "Error retrieving package info: appName set to ";
            r5 = java.lang.String.valueOf(r2);
     */
    /* JADX WARNING: Missing block: B:18:0x0053, code skipped:
            if (r5.length() != 0) goto L_0x0055;
     */
    /* JADX WARNING: Missing block: B:19:0x0055, code skipped:
            r4 = r4.concat(r5);
     */
    /* JADX WARNING: Missing block: B:20:0x005a, code skipped:
            r4 = new java.lang.String(r4);
     */
    /* JADX WARNING: Missing block: B:21:0x0060, code skipped:
            android.util.Log.e(r1, r4);
     */
    public final com.google.android.gms.internal.zzalk zzjA() {
        /*
        r7 = this;
        r0 = r7.zzaeh;
        if (r0 != 0) goto L_0x0070;
    L_0x0004:
        monitor-enter(r7);
        r0 = r7.zzaeh;	 Catch:{ all -> 0x006d }
        if (r0 != 0) goto L_0x006b;
    L_0x0009:
        r0 = new com.google.android.gms.internal.zzalk;	 Catch:{ all -> 0x006d }
        r0.<init>();	 Catch:{ all -> 0x006d }
        r1 = r7.mContext;	 Catch:{ all -> 0x006d }
        r1 = r1.getPackageManager();	 Catch:{ all -> 0x006d }
        r2 = r7.mContext;	 Catch:{ all -> 0x006d }
        r2 = r2.getPackageName();	 Catch:{ all -> 0x006d }
        r0.setAppId(r2);	 Catch:{ all -> 0x006d }
        r3 = r1.getInstallerPackageName(r2);	 Catch:{ all -> 0x006d }
        r0.setAppInstallerId(r3);	 Catch:{ all -> 0x006d }
        r3 = 0;
        r4 = r7.mContext;	 Catch:{ NameNotFoundException -> 0x0047 }
        r4 = r4.getPackageName();	 Catch:{ NameNotFoundException -> 0x0047 }
        r5 = 0;
        r4 = r1.getPackageInfo(r4, r5);	 Catch:{ NameNotFoundException -> 0x0047 }
        if (r4 == 0) goto L_0x0063;
    L_0x0032:
        r5 = r4.applicationInfo;	 Catch:{ NameNotFoundException -> 0x0047 }
        r1 = r1.getApplicationLabel(r5);	 Catch:{ NameNotFoundException -> 0x0047 }
        r5 = android.text.TextUtils.isEmpty(r1);	 Catch:{ NameNotFoundException -> 0x0047 }
        if (r5 != 0) goto L_0x0043;
    L_0x003e:
        r1 = r1.toString();	 Catch:{ NameNotFoundException -> 0x0047 }
        r2 = r1;
    L_0x0043:
        r1 = r4.versionName;	 Catch:{ NameNotFoundException -> 0x0047 }
        r3 = r1;
        goto L_0x0063;
    L_0x0047:
        r1 = "GAv4";
        r4 = "Error retrieving package info: appName set to ";
        r5 = java.lang.String.valueOf(r2);	 Catch:{ all -> 0x006d }
        r6 = r5.length();	 Catch:{ all -> 0x006d }
        if (r6 == 0) goto L_0x005a;
    L_0x0055:
        r4 = r4.concat(r5);	 Catch:{ all -> 0x006d }
        goto L_0x0060;
    L_0x005a:
        r5 = new java.lang.String;	 Catch:{ all -> 0x006d }
        r5.<init>(r4);	 Catch:{ all -> 0x006d }
        r4 = r5;
    L_0x0060:
        android.util.Log.e(r1, r4);	 Catch:{ all -> 0x006d }
    L_0x0063:
        r0.setAppName(r2);	 Catch:{ all -> 0x006d }
        r0.setAppVersion(r3);	 Catch:{ all -> 0x006d }
        r7.zzaeh = r0;	 Catch:{ all -> 0x006d }
    L_0x006b:
        monitor-exit(r7);	 Catch:{ all -> 0x006d }
        goto L_0x0070;
    L_0x006d:
        r0 = move-exception;
        monitor-exit(r7);	 Catch:{ all -> 0x006d }
        throw r0;
    L_0x0070:
        r0 = r7.zzaeh;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.zzl.zzjA():com.google.android.gms.internal.zzalk");
    }

    public final zzalp zzjB() {
        DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
        zzalp zzalp = new zzalp();
        zzalp.setLanguage(zzaos.zza(Locale.getDefault()));
        zzalp.zzNY = displayMetrics.widthPixels;
        zzalp.zzNZ = displayMetrics.heightPixels;
        return zzalp;
    }
}
