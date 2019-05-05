package com.google.android.gms.internal;

import android.content.Context;

public final class zzbgy {
    private static Context zzaKh;
    private static Boolean zzaKi;

    /* JADX WARNING: Missing exception handler attribute for start block: B:24:0x0056 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:19:0x003e */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:17|18|19|20) */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:22|23|24|25) */
    public static synchronized boolean zzaN(android.content.Context r5) {
        /*
        r0 = com.google.android.gms.internal.zzbgy.class;
        monitor-enter(r0);
        r1 = r5.getApplicationContext();	 Catch:{ all -> 0x0065 }
        r2 = zzaKh;	 Catch:{ all -> 0x0065 }
        if (r2 == 0) goto L_0x001b;
    L_0x000b:
        r2 = zzaKi;	 Catch:{ all -> 0x0065 }
        if (r2 == 0) goto L_0x001b;
    L_0x000f:
        r2 = zzaKh;	 Catch:{ all -> 0x0065 }
        if (r2 != r1) goto L_0x001b;
    L_0x0013:
        r5 = zzaKi;	 Catch:{ all -> 0x0065 }
        r5 = r5.booleanValue();	 Catch:{ all -> 0x0065 }
        monitor-exit(r0);
        return r5;
    L_0x001b:
        r2 = 0;
        zzaKi = r2;	 Catch:{ all -> 0x0065 }
        r2 = com.google.android.gms.common.util.zzq.isAtLeastO();	 Catch:{ all -> 0x0065 }
        r3 = 0;
        if (r2 == 0) goto L_0x0045;
    L_0x0025:
        r5 = android.content.pm.PackageManager.class;
        r2 = "isInstantApp";
        r4 = new java.lang.Class[r3];	 Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x003e, IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x003e, IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x003e }
        r5 = r5.getDeclaredMethod(r2, r4);	 Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x003e, IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x003e, IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x003e }
        r2 = r1.getPackageManager();	 Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x003e, IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x003e, IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x003e }
        r4 = new java.lang.Object[r3];	 Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x003e, IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x003e, IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x003e }
        r5 = r5.invoke(r2, r4);	 Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x003e, IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x003e, IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x003e }
        r5 = (java.lang.Boolean) r5;	 Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x003e, IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x003e, IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x003e }
        zzaKi = r5;	 Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x003e, IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x003e, IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x003e }
        goto L_0x005b;
    L_0x003e:
        r5 = java.lang.Boolean.valueOf(r3);	 Catch:{ all -> 0x0065 }
    L_0x0042:
        zzaKi = r5;	 Catch:{ all -> 0x0065 }
        goto L_0x005b;
    L_0x0045:
        r5 = r5.getClassLoader();	 Catch:{ ClassNotFoundException -> 0x0056 }
        r2 = "com.google.android.instantapps.supervisor.InstantAppsRuntime";
        r5.loadClass(r2);	 Catch:{ ClassNotFoundException -> 0x0056 }
        r5 = 1;
        r5 = java.lang.Boolean.valueOf(r5);	 Catch:{ ClassNotFoundException -> 0x0056 }
        zzaKi = r5;	 Catch:{ ClassNotFoundException -> 0x0056 }
        goto L_0x005b;
    L_0x0056:
        r5 = java.lang.Boolean.valueOf(r3);	 Catch:{ all -> 0x0065 }
        goto L_0x0042;
    L_0x005b:
        zzaKh = r1;	 Catch:{ all -> 0x0065 }
        r5 = zzaKi;	 Catch:{ all -> 0x0065 }
        r5 = r5.booleanValue();	 Catch:{ all -> 0x0065 }
        monitor-exit(r0);
        return r5;
    L_0x0065:
        r5 = move-exception;
        monitor-exit(r0);
        throw r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbgy.zzaN(android.content.Context):boolean");
    }
}
