package com.google.android.gms.internal;

import java.io.OutputStream;

final class zzaav implements Runnable {
    private /* synthetic */ OutputStream zzTS;
    private /* synthetic */ byte[] zzTT;

    zzaav(zzaau zzaau, OutputStream outputStream, byte[] bArr) {
        this.zzTS = outputStream;
        this.zzTT = bArr;
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0038  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0032  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x003f  */
    public final void run() {
        /*
        r5 = this;
        r0 = 0;
        r1 = new java.io.DataOutputStream;	 Catch:{ IOException -> 0x001e, all -> 0x0019 }
        r2 = r5.zzTS;	 Catch:{ IOException -> 0x001e, all -> 0x0019 }
        r1.<init>(r2);	 Catch:{ IOException -> 0x001e, all -> 0x0019 }
        r0 = r5.zzTT;	 Catch:{ IOException -> 0x0017 }
        r0 = r0.length;	 Catch:{ IOException -> 0x0017 }
        r1.writeInt(r0);	 Catch:{ IOException -> 0x0017 }
        r0 = r5.zzTT;	 Catch:{ IOException -> 0x0017 }
        r1.write(r0);	 Catch:{ IOException -> 0x0017 }
        com.google.android.gms.common.util.zzn.closeQuietly(r1);
        return;
    L_0x0017:
        r0 = move-exception;
        goto L_0x0022;
    L_0x0019:
        r1 = move-exception;
        r4 = r1;
        r1 = r0;
        r0 = r4;
        goto L_0x003d;
    L_0x001e:
        r1 = move-exception;
        r4 = r1;
        r1 = r0;
        r0 = r4;
    L_0x0022:
        r2 = "Error transporting the ad response";
        com.google.android.gms.internal.zzajc.zzb(r2, r0);	 Catch:{ all -> 0x003c }
        r2 = com.google.android.gms.ads.internal.zzbs.zzbD();	 Catch:{ all -> 0x003c }
        r3 = "LargeParcelTeleporter.pipeData.1";
        r2.zza(r0, r3);	 Catch:{ all -> 0x003c }
        if (r1 != 0) goto L_0x0038;
    L_0x0032:
        r0 = r5.zzTS;
        com.google.android.gms.common.util.zzn.closeQuietly(r0);
        return;
    L_0x0038:
        com.google.android.gms.common.util.zzn.closeQuietly(r1);
        return;
    L_0x003c:
        r0 = move-exception;
    L_0x003d:
        if (r1 != 0) goto L_0x0041;
    L_0x003f:
        r1 = r5.zzTS;
    L_0x0041:
        com.google.android.gms.common.util.zzn.closeQuietly(r1);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaav.run():void");
    }
}
