package com.google.android.gms.internal;

import java.util.concurrent.ExecutionException;

public final class zzdl extends zzec {
    private static final Object zzrl = new Object();
    private static volatile zzbu zzrm;
    private zzau zzrn = null;

    public zzdl(zzdb zzdb, String str, String str2, zzax zzax, int i, int i2, zzau zzau) {
        super(zzdb, str, str2, zzax, i, 27);
        this.zzrn = zzau;
    }

    private final String zzU() {
        try {
            if (this.zzpJ.zzL() != null) {
                this.zzpJ.zzL().get();
            }
            zzax zzK = this.zzpJ.zzK();
            if (!(zzK == null || zzK.zzaT == null)) {
                return zzK.zzaT;
            }
        } catch (InterruptedException | ExecutionException unused) {
        }
        return null;
    }

    private static String zza(zzau zzau) {
        return (zzau == null || zzau.zzaR == null || zzdg.zzo(zzau.zzaR.zzaT)) ? null : zzau.zzaR.zzaT;
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x009b  */
    public final void zzT() throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        /*
        r9 = this;
        r0 = zzrm;
        r1 = 1;
        r2 = 0;
        if (r0 == 0) goto L_0x002b;
    L_0x0006:
        r0 = zzrm;
        r0 = r0.zzaT;
        r0 = com.google.android.gms.internal.zzdg.zzo(r0);
        if (r0 != 0) goto L_0x002b;
    L_0x0010:
        r0 = zzrm;
        r0 = r0.zzaT;
        r3 = "E";
        r0 = r0.equals(r3);
        if (r0 != 0) goto L_0x002b;
    L_0x001c:
        r0 = zzrm;
        r0 = r0.zzaT;
        r3 = "0000000000000000000000000000000000000000000000000000000000000000";
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x0029;
    L_0x0028:
        goto L_0x002b;
    L_0x0029:
        r0 = 0;
        goto L_0x002c;
    L_0x002b:
        r0 = 1;
    L_0x002c:
        if (r0 == 0) goto L_0x00f6;
    L_0x002e:
        r0 = zzrl;
        monitor-enter(r0);
        r3 = r9.zzrn;	 Catch:{ all -> 0x00f3 }
        r3 = zza(r3);	 Catch:{ all -> 0x00f3 }
        r3 = com.google.android.gms.internal.zzdg.zzo(r3);	 Catch:{ all -> 0x00f3 }
        r4 = 3;
        r5 = 2;
        if (r3 != 0) goto L_0x0041;
    L_0x003f:
        r4 = 4;
        goto L_0x009d;
    L_0x0041:
        r3 = r9.zzrn;	 Catch:{ all -> 0x00f3 }
        r6 = zza(r3);	 Catch:{ all -> 0x00f3 }
        r6 = com.google.android.gms.internal.zzdg.zzo(r6);	 Catch:{ all -> 0x00f3 }
        if (r6 == 0) goto L_0x005f;
    L_0x004d:
        if (r3 == 0) goto L_0x005f;
    L_0x004f:
        r6 = r3.zzaQ;	 Catch:{ all -> 0x00f3 }
        if (r6 == 0) goto L_0x005f;
    L_0x0053:
        r3 = r3.zzaQ;	 Catch:{ all -> 0x00f3 }
        r3 = r3.zzaS;	 Catch:{ all -> 0x00f3 }
        r3 = r3.intValue();	 Catch:{ all -> 0x00f3 }
        if (r3 != r4) goto L_0x005f;
    L_0x005d:
        r3 = 1;
        goto L_0x0060;
    L_0x005f:
        r3 = 0;
    L_0x0060:
        r3 = java.lang.Boolean.valueOf(r3);	 Catch:{ all -> 0x00f3 }
        r3 = r3.booleanValue();	 Catch:{ all -> 0x00f3 }
        if (r3 == 0) goto L_0x009c;
    L_0x006a:
        r3 = r9.zzpJ;	 Catch:{ all -> 0x00f3 }
        r3 = r3.zzJ();	 Catch:{ all -> 0x00f3 }
        if (r3 == 0) goto L_0x0098;
    L_0x0072:
        r3 = com.google.android.gms.internal.zzmo.zzFc;	 Catch:{ all -> 0x00f3 }
        r6 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ all -> 0x00f3 }
        r3 = r6.zzd(r3);	 Catch:{ all -> 0x00f3 }
        r3 = (java.lang.Boolean) r3;	 Catch:{ all -> 0x00f3 }
        r3 = r3.booleanValue();	 Catch:{ all -> 0x00f3 }
        if (r3 == 0) goto L_0x0098;
    L_0x0084:
        r3 = com.google.android.gms.internal.zzmo.zzFd;	 Catch:{ all -> 0x00f3 }
        r6 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ all -> 0x00f3 }
        r3 = r6.zzd(r3);	 Catch:{ all -> 0x00f3 }
        r3 = (java.lang.Boolean) r3;	 Catch:{ all -> 0x00f3 }
        r3 = r3.booleanValue();	 Catch:{ all -> 0x00f3 }
        if (r3 == 0) goto L_0x0098;
    L_0x0096:
        r3 = 1;
        goto L_0x0099;
    L_0x0098:
        r3 = 0;
    L_0x0099:
        if (r3 == 0) goto L_0x009c;
    L_0x009b:
        goto L_0x009d;
    L_0x009c:
        r4 = 2;
    L_0x009d:
        r3 = r9.zzrx;	 Catch:{ all -> 0x00f3 }
        r6 = 0;
        r7 = new java.lang.Object[r5];	 Catch:{ all -> 0x00f3 }
        r8 = r9.zzpJ;	 Catch:{ all -> 0x00f3 }
        r8 = r8.getContext();	 Catch:{ all -> 0x00f3 }
        r7[r2] = r8;	 Catch:{ all -> 0x00f3 }
        if (r4 != r5) goto L_0x00ad;
    L_0x00ac:
        r2 = 1;
    L_0x00ad:
        r2 = java.lang.Boolean.valueOf(r2);	 Catch:{ all -> 0x00f3 }
        r7[r1] = r2;	 Catch:{ all -> 0x00f3 }
        r1 = r3.invoke(r6, r7);	 Catch:{ all -> 0x00f3 }
        r1 = (java.lang.String) r1;	 Catch:{ all -> 0x00f3 }
        r2 = new com.google.android.gms.internal.zzbu;	 Catch:{ all -> 0x00f3 }
        r2.<init>(r1);	 Catch:{ all -> 0x00f3 }
        zzrm = r2;	 Catch:{ all -> 0x00f3 }
        r1 = r2.zzaT;	 Catch:{ all -> 0x00f3 }
        r1 = com.google.android.gms.internal.zzdg.zzo(r1);	 Catch:{ all -> 0x00f3 }
        if (r1 != 0) goto L_0x00d4;
    L_0x00c8:
        r1 = zzrm;	 Catch:{ all -> 0x00f3 }
        r1 = r1.zzaT;	 Catch:{ all -> 0x00f3 }
        r2 = "E";
        r1 = r1.equals(r2);	 Catch:{ all -> 0x00f3 }
        if (r1 == 0) goto L_0x00f1;
    L_0x00d4:
        switch(r4) {
            case 3: goto L_0x00e3;
            case 4: goto L_0x00d8;
            default: goto L_0x00d7;
        };	 Catch:{ all -> 0x00f3 }
    L_0x00d7:
        goto L_0x00f1;
    L_0x00d8:
        r1 = zzrm;	 Catch:{ all -> 0x00f3 }
        r2 = r9.zzrn;	 Catch:{ all -> 0x00f3 }
        r2 = r2.zzaR;	 Catch:{ all -> 0x00f3 }
        r2 = r2.zzaT;	 Catch:{ all -> 0x00f3 }
        r1.zzaT = r2;	 Catch:{ all -> 0x00f3 }
        goto L_0x00f1;
    L_0x00e3:
        r1 = r9.zzU();	 Catch:{ all -> 0x00f3 }
        r2 = com.google.android.gms.internal.zzdg.zzo(r1);	 Catch:{ all -> 0x00f3 }
        if (r2 != 0) goto L_0x00f1;
    L_0x00ed:
        r2 = zzrm;	 Catch:{ all -> 0x00f3 }
        r2.zzaT = r1;	 Catch:{ all -> 0x00f3 }
    L_0x00f1:
        monitor-exit(r0);	 Catch:{ all -> 0x00f3 }
        goto L_0x00f6;
    L_0x00f3:
        r1 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x00f3 }
        throw r1;
    L_0x00f6:
        r0 = r9.zzro;
        monitor-enter(r0);
        r1 = zzrm;	 Catch:{ all -> 0x012b }
        if (r1 == 0) goto L_0x0129;
    L_0x00fd:
        r1 = r9.zzro;	 Catch:{ all -> 0x012b }
        r2 = zzrm;	 Catch:{ all -> 0x012b }
        r2 = r2.zzaT;	 Catch:{ all -> 0x012b }
        r1.zzaT = r2;	 Catch:{ all -> 0x012b }
        r1 = r9.zzro;	 Catch:{ all -> 0x012b }
        r2 = zzrm;	 Catch:{ all -> 0x012b }
        r2 = r2.zzlO;	 Catch:{ all -> 0x012b }
        r2 = java.lang.Long.valueOf(r2);	 Catch:{ all -> 0x012b }
        r1.zzbx = r2;	 Catch:{ all -> 0x012b }
        r1 = r9.zzro;	 Catch:{ all -> 0x012b }
        r2 = zzrm;	 Catch:{ all -> 0x012b }
        r2 = r2.zzaV;	 Catch:{ all -> 0x012b }
        r1.zzaV = r2;	 Catch:{ all -> 0x012b }
        r1 = r9.zzro;	 Catch:{ all -> 0x012b }
        r2 = zzrm;	 Catch:{ all -> 0x012b }
        r2 = r2.zzaW;	 Catch:{ all -> 0x012b }
        r1.zzaW = r2;	 Catch:{ all -> 0x012b }
        r1 = r9.zzro;	 Catch:{ all -> 0x012b }
        r2 = zzrm;	 Catch:{ all -> 0x012b }
        r2 = r2.zzaX;	 Catch:{ all -> 0x012b }
        r1.zzaX = r2;	 Catch:{ all -> 0x012b }
    L_0x0129:
        monitor-exit(r0);	 Catch:{ all -> 0x012b }
        return;
    L_0x012b:
        r1 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x012b }
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzdl.zzT():void");
    }
}
