package com.google.android.gms.internal;

import android.net.Uri.Builder;
import android.os.Build.VERSION;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzbs;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.WeakHashMap;

@zzzn
public final class zzzi implements zzzl {
    private static zzzl zzSg;
    private static final Object zzuF = new Object();
    private final String mPackageName;
    private final Object zzSh = new Object();
    private final WeakHashMap<Thread, Boolean> zzSi = new WeakHashMap();
    private final zzaje zzuK;

    private zzzi(String str, zzaje zzaje) {
        this.mPackageName = str;
        this.zzuK = zzaje;
        Thread thread = Looper.getMainLooper().getThread();
        if (thread != null) {
            synchronized (this.zzSh) {
                this.zzSi.put(thread, Boolean.valueOf(true));
            }
            thread.setUncaughtExceptionHandler(new zzzk(this, thread.getUncaughtExceptionHandler()));
        }
        Thread.setDefaultUncaughtExceptionHandler(new zzzj(this, Thread.getDefaultUncaughtExceptionHandler()));
    }

    private static boolean zzat(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (str.startsWith((String) zzbs.zzbL().zzd(zzmo.zzCe))) {
            return true;
        }
        try {
            return Class.forName(str).isAnnotationPresent(zzzn.class);
        } catch (Exception e) {
            String str2 = "Fail to check class type for class ";
            str = String.valueOf(str);
            zzajc.zza(str.length() != 0 ? str2.concat(str) : new String(str2), e);
            return false;
        }
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:10:0x0024 */
    /* JADX WARNING: Can't wrap try/catch for region: R(6:7|8|9|10|11|12) */
    public static com.google.android.gms.internal.zzzl zzc(android.content.Context r3, com.google.android.gms.internal.zzaje r4) {
        /*
        r0 = zzuF;
        monitor-enter(r0);
        r1 = zzSg;	 Catch:{ all -> 0x003d }
        if (r1 != 0) goto L_0x0039;
    L_0x0007:
        r1 = com.google.android.gms.internal.zzmo.zzCc;	 Catch:{ all -> 0x003d }
        r2 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ all -> 0x003d }
        r1 = r2.zzd(r1);	 Catch:{ all -> 0x003d }
        r1 = (java.lang.Boolean) r1;	 Catch:{ all -> 0x003d }
        r1 = r1.booleanValue();	 Catch:{ all -> 0x003d }
        if (r1 == 0) goto L_0x0032;
    L_0x0019:
        r1 = "unknown";
        r3 = r3.getApplicationContext();	 Catch:{ Throwable -> 0x0024 }
        r3 = r3.getPackageName();	 Catch:{ Throwable -> 0x0024 }
        goto L_0x002a;
    L_0x0024:
        r3 = "Cannot obtain package name, proceeding.";
        com.google.android.gms.internal.zzajc.zzaT(r3);	 Catch:{ all -> 0x003d }
        r3 = r1;
    L_0x002a:
        r1 = new com.google.android.gms.internal.zzzi;	 Catch:{ all -> 0x003d }
        r1.<init>(r3, r4);	 Catch:{ all -> 0x003d }
        zzSg = r1;	 Catch:{ all -> 0x003d }
        goto L_0x0039;
    L_0x0032:
        r3 = new com.google.android.gms.internal.zzzm;	 Catch:{ all -> 0x003d }
        r3.<init>();	 Catch:{ all -> 0x003d }
        zzSg = r3;	 Catch:{ all -> 0x003d }
    L_0x0039:
        monitor-exit(r0);	 Catch:{ all -> 0x003d }
        r3 = zzSg;
        return r3;
    L_0x003d:
        r3 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x003d }
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzzi.zzc(android.content.Context, com.google.android.gms.internal.zzaje):com.google.android.gms.internal.zzzl");
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Missing block: B:15:0x003f, code skipped:
            if (r3 == null) goto L_0x0043;
     */
    public final void zza(java.lang.Thread r10, java.lang.Throwable r11) {
        /*
        r9 = this;
        r10 = 1;
        r0 = 0;
        if (r11 == 0) goto L_0x0042;
    L_0x0004:
        r1 = r11;
        r2 = 0;
        r3 = 0;
    L_0x0007:
        if (r1 == 0) goto L_0x003d;
    L_0x0009:
        r4 = r1.getStackTrace();
        r5 = r4.length;
        r6 = r3;
        r3 = r2;
        r2 = 0;
    L_0x0011:
        if (r2 >= r5) goto L_0x0036;
    L_0x0013:
        r7 = r4[r2];
        r8 = r7.getClassName();
        r8 = zzat(r8);
        if (r8 == 0) goto L_0x0020;
    L_0x001f:
        r3 = 1;
    L_0x0020:
        r8 = r9.getClass();
        r8 = r8.getName();
        r7 = r7.getClassName();
        r7 = r8.equals(r7);
        if (r7 == 0) goto L_0x0033;
    L_0x0032:
        r6 = 1;
    L_0x0033:
        r2 = r2 + 1;
        goto L_0x0011;
    L_0x0036:
        r1 = r1.getCause();
        r2 = r3;
        r3 = r6;
        goto L_0x0007;
    L_0x003d:
        if (r2 == 0) goto L_0x0042;
    L_0x003f:
        if (r3 != 0) goto L_0x0042;
    L_0x0041:
        goto L_0x0043;
    L_0x0042:
        r10 = 0;
    L_0x0043:
        if (r10 == 0) goto L_0x004a;
    L_0x0045:
        r10 = "";
        r9.zza(r11, r10);
    L_0x004a:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzzi.zza(java.lang.Thread, java.lang.Throwable):void");
    }

    public final void zza(Throwable th, String str) {
        Throwable th2;
        if (((Boolean) zzbs.zzbL().zzd(zzmo.zzCd)).booleanValue()) {
            th2 = th;
        } else {
            LinkedList linkedList = new LinkedList();
            for (Object obj = th; obj != null; obj = obj.getCause()) {
                linkedList.push(obj);
            }
            th2 = null;
            while (!linkedList.isEmpty()) {
                Throwable th3 = (Throwable) linkedList.pop();
                StackTraceElement[] stackTrace = th3.getStackTrace();
                ArrayList arrayList = new ArrayList();
                arrayList.add(new StackTraceElement(th3.getClass().getName(), "<filtered>", "<filtered>", 1));
                Object obj2 = null;
                for (Object obj3 : stackTrace) {
                    Object obj32;
                    if (zzat(obj32.getClassName())) {
                        arrayList.add(obj32);
                        obj2 = 1;
                    } else {
                        String className = obj32.getClassName();
                        Object obj4 = (TextUtils.isEmpty(className) || !(className.startsWith("android.") || className.startsWith("java."))) ? null : 1;
                        if (obj4 == null) {
                            obj32 = new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1);
                        }
                        arrayList.add(obj32);
                    }
                }
                if (obj2 != null) {
                    th2 = th2 == null ? new Throwable(th3.getMessage()) : new Throwable(th3.getMessage(), th2);
                    th2.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
                }
            }
        }
        if (th2 != null) {
            Class cls = th.getClass();
            List arrayList2 = new ArrayList();
            StringWriter stringWriter = new StringWriter();
            th2.printStackTrace(new PrintWriter(stringWriter));
            zzbs.zzbz();
            arrayList2.add(new Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", VERSION.RELEASE).appendQueryParameter("api", String.valueOf(VERSION.SDK_INT)).appendQueryParameter("device", zzagz.zzhQ()).appendQueryParameter("js", this.zzuK.zzaP).appendQueryParameter("appid", this.mPackageName).appendQueryParameter("exceptiontype", cls.getName()).appendQueryParameter("stacktrace", stringWriter.toString()).appendQueryParameter("eids", TextUtils.join(",", zzmo.zzdJ())).appendQueryParameter("exceptionkey", str).appendQueryParameter("cl", "162978962").appendQueryParameter("rc", "dev").appendQueryParameter("session_id", zzbs.zzbD().getSessionId()).toString());
            zzbs.zzbz();
            zzagz.zza(arrayList2, zzbs.zzbD().zzht());
        }
    }
}
