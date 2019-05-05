package com.google.android.gms.internal;

import java.lang.Thread.UncaughtExceptionHandler;

final class zzzj implements UncaughtExceptionHandler {
    private /* synthetic */ UncaughtExceptionHandler zzSj;
    private /* synthetic */ zzzi zzSk;

    zzzj(zzzi zzzi, UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.zzSk = zzzi;
        this.zzSj = uncaughtExceptionHandler;
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0011 */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:3:0x0007, code skipped:
            if (r2.zzSj != null) goto L_0x0009;
     */
    /* JADX WARNING: Missing block: B:4:0x0009, code skipped:
            r2.zzSj.uncaughtException(r3, r4);
     */
    /* JADX WARNING: Missing block: B:5:0x000e, code skipped:
            return;
     */
    /* JADX WARNING: Missing block: B:8:?, code skipped:
            com.google.android.gms.internal.zzajc.e("AdMob exception reporter failed reporting the exception.");
     */
    /* JADX WARNING: Missing block: B:10:0x0018, code skipped:
            if (r2.zzSj == null) goto L_0x001b;
     */
    /* JADX WARNING: Missing block: B:11:0x001b, code skipped:
            return;
     */
    /* JADX WARNING: Missing block: B:13:0x001e, code skipped:
            if (r2.zzSj != null) goto L_0x0020;
     */
    /* JADX WARNING: Missing block: B:14:0x0020, code skipped:
            r2.zzSj.uncaughtException(r3, r4);
     */
    public final void uncaughtException(java.lang.Thread r3, java.lang.Throwable r4) {
        /*
        r2 = this;
        r0 = r2.zzSk;	 Catch:{ Throwable -> 0x0011 }
        r0.zza(r3, r4);	 Catch:{ Throwable -> 0x0011 }
        r0 = r2.zzSj;
        if (r0 == 0) goto L_0x001b;
    L_0x0009:
        r0 = r2.zzSj;
        r0.uncaughtException(r3, r4);
        return;
    L_0x000f:
        r0 = move-exception;
        goto L_0x001c;
    L_0x0011:
        r0 = "AdMob exception reporter failed reporting the exception.";
        com.google.android.gms.internal.zzajc.e(r0);	 Catch:{ all -> 0x000f }
        r0 = r2.zzSj;
        if (r0 == 0) goto L_0x001b;
    L_0x001a:
        goto L_0x0009;
    L_0x001b:
        return;
    L_0x001c:
        r1 = r2.zzSj;
        if (r1 == 0) goto L_0x0025;
    L_0x0020:
        r1 = r2.zzSj;
        r1.uncaughtException(r3, r4);
    L_0x0025:
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzzj.uncaughtException(java.lang.Thread, java.lang.Throwable):void");
    }
}
