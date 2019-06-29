package com.google.android.gms.internal;

import android.support.annotation.WorkerThread;
import com.google.android.gms.common.internal.zzbo;
import java.net.URL;
import java.util.Map;

@WorkerThread
final class zzcft implements Runnable {
    private final String mPackageName;
    private final URL zzJu;
    private final byte[] zzaKA;
    private final zzcfr zzbrd;
    private final Map<String, String> zzbre;
    private /* synthetic */ zzcfp zzbrf;

    public zzcft(zzcfp zzcfp, String str, URL url, byte[] bArr, Map<String, String> map, zzcfr zzcfr) {
        this.zzbrf = zzcfp;
        zzbo.zzcF(str);
        zzbo.zzu(url);
        zzbo.zzu(zzcfr);
        this.zzJu = url;
        this.zzaKA = bArr;
        this.zzbrd = zzcfr;
        this.mPackageName = str;
        this.zzbre = map;
    }

    /* JADX WARNING: Removed duplicated region for block: B:52:0x00f4 A:{SYNTHETIC, Splitter:B:52:0x00f4} */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0110  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x0131 A:{SYNTHETIC, Splitter:B:63:0x0131} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x014d  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00f4 A:{SYNTHETIC, Splitter:B:52:0x00f4} */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0110  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x0131 A:{SYNTHETIC, Splitter:B:63:0x0131} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x014d  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00f4 A:{SYNTHETIC, Splitter:B:52:0x00f4} */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0110  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x0131 A:{SYNTHETIC, Splitter:B:63:0x0131} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x014d  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00f4 A:{SYNTHETIC, Splitter:B:52:0x00f4} */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0110  */
    public final void run() {
        /*
        r12 = this;
        r0 = r12.zzbrf;
        r0.zzwq();
        r0 = 0;
        r1 = 0;
        r2 = r12.zzJu;	 Catch:{ IOException -> 0x012a, all -> 0x00ed }
        r2 = r2.openConnection();	 Catch:{ IOException -> 0x012a, all -> 0x00ed }
        r3 = r2 instanceof java.net.HttpURLConnection;	 Catch:{ IOException -> 0x012a, all -> 0x00ed }
        if (r3 != 0) goto L_0x0019;
    L_0x0011:
        r2 = new java.io.IOException;	 Catch:{ IOException -> 0x012a, all -> 0x00ed }
        r3 = "Failed to obtain HTTP connection";
        r2.<init>(r3);	 Catch:{ IOException -> 0x012a, all -> 0x00ed }
        throw r2;	 Catch:{ IOException -> 0x012a, all -> 0x00ed }
    L_0x0019:
        r2 = (java.net.HttpURLConnection) r2;	 Catch:{ IOException -> 0x012a, all -> 0x00ed }
        r2.setDefaultUseCaches(r0);	 Catch:{ IOException -> 0x012a, all -> 0x00ed }
        com.google.android.gms.internal.zzcem.zzxz();	 Catch:{ IOException -> 0x012a, all -> 0x00ed }
        r3 = 60000; // 0xea60 float:8.4078E-41 double:2.9644E-319;
        r2.setConnectTimeout(r3);	 Catch:{ IOException -> 0x012a, all -> 0x00ed }
        com.google.android.gms.internal.zzcem.zzxA();	 Catch:{ IOException -> 0x012a, all -> 0x00ed }
        r3 = 61000; // 0xee48 float:8.5479E-41 double:3.0138E-319;
        r2.setReadTimeout(r3);	 Catch:{ IOException -> 0x012a, all -> 0x00ed }
        r2.setInstanceFollowRedirects(r0);	 Catch:{ IOException -> 0x012a, all -> 0x00ed }
        r3 = 1;
        r2.setDoInput(r3);	 Catch:{ IOException -> 0x012a, all -> 0x00ed }
        r4 = r12.zzbre;	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        if (r4 == 0) goto L_0x0061;
    L_0x003b:
        r4 = r12.zzbre;	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        r4 = r4.entrySet();	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        r4 = r4.iterator();	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
    L_0x0045:
        r5 = r4.hasNext();	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        if (r5 == 0) goto L_0x0061;
    L_0x004b:
        r5 = r4.next();	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        r5 = (java.util.Map.Entry) r5;	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        r6 = r5.getKey();	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        r6 = (java.lang.String) r6;	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        r5 = r5.getValue();	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        r5 = (java.lang.String) r5;	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        r2.addRequestProperty(r6, r5);	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        goto L_0x0045;
    L_0x0061:
        r4 = r12.zzaKA;	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        if (r4 == 0) goto L_0x00ab;
    L_0x0065:
        r4 = r12.zzbrf;	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        r4 = r4.zzwB();	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        r5 = r12.zzaKA;	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        r4 = r4.zzl(r5);	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        r5 = r12.zzbrf;	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        r5 = r5.zzwF();	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        r5 = r5.zzyD();	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        r6 = "Uploading data. size";
        r7 = r4.length;	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        r7 = java.lang.Integer.valueOf(r7);	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        r5.zzj(r6, r7);	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        r2.setDoOutput(r3);	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        r3 = "Content-Encoding";
        r5 = "gzip";
        r2.addRequestProperty(r3, r5);	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        r3 = r4.length;	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        r2.setFixedLengthStreamingMode(r3);	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        r2.connect();	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        r3 = r2.getOutputStream();	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        r3.write(r4);	 Catch:{ IOException -> 0x00a6, all -> 0x00a1 }
        r3.close();	 Catch:{ IOException -> 0x00a6, all -> 0x00a1 }
        goto L_0x00ab;
    L_0x00a1:
        r4 = move-exception;
        r10 = r1;
        r1 = r3;
        r3 = r4;
        goto L_0x00e6;
    L_0x00a6:
        r4 = move-exception;
        r9 = r1;
        r1 = r3;
        r7 = r4;
        goto L_0x00eb;
    L_0x00ab:
        r7 = r2.getResponseCode();	 Catch:{ IOException -> 0x00e8, all -> 0x00e4 }
        r10 = r2.getHeaderFields();	 Catch:{ IOException -> 0x00df, all -> 0x00db }
        r0 = r12.zzbrf;	 Catch:{ IOException -> 0x00d7, all -> 0x00d4 }
        r9 = com.google.android.gms.internal.zzcfp.zzc(r2);	 Catch:{ IOException -> 0x00d7, all -> 0x00d4 }
        if (r2 == 0) goto L_0x00be;
    L_0x00bb:
        r2.disconnect();
    L_0x00be:
        r0 = r12.zzbrf;
        r0 = r0.zzwE();
        r1 = new com.google.android.gms.internal.zzcfs;
        r5 = r12.mPackageName;
        r6 = r12.zzbrd;
        r8 = 0;
        r11 = 0;
        r4 = r1;
        r4.<init>(r5, r6, r7, r8, r9, r10);
    L_0x00d0:
        r0.zzj(r1);
        return;
    L_0x00d4:
        r0 = move-exception;
        r3 = r0;
        goto L_0x00f2;
    L_0x00d7:
        r0 = move-exception;
        r6 = r7;
        r9 = r10;
        goto L_0x00e2;
    L_0x00db:
        r0 = move-exception;
        r3 = r0;
        r10 = r1;
        goto L_0x00f2;
    L_0x00df:
        r0 = move-exception;
        r9 = r1;
        r6 = r7;
    L_0x00e2:
        r7 = r0;
        goto L_0x012f;
    L_0x00e4:
        r3 = move-exception;
        r10 = r1;
    L_0x00e6:
        r7 = 0;
        goto L_0x00f2;
    L_0x00e8:
        r3 = move-exception;
        r9 = r1;
        r7 = r3;
    L_0x00eb:
        r6 = 0;
        goto L_0x012f;
    L_0x00ed:
        r2 = move-exception;
        r10 = r1;
        r3 = r2;
        r7 = 0;
        r2 = r10;
    L_0x00f2:
        if (r1 == 0) goto L_0x010e;
    L_0x00f4:
        r1.close();	 Catch:{ IOException -> 0x00f8 }
        goto L_0x010e;
    L_0x00f8:
        r0 = move-exception;
        r1 = r12.zzbrf;
        r1 = r1.zzwF();
        r1 = r1.zzyx();
        r4 = "Error closing HTTP compressed POST connection output stream. appId";
        r5 = r12.mPackageName;
        r5 = com.google.android.gms.internal.zzcfl.zzdZ(r5);
        r1.zze(r4, r5, r0);
    L_0x010e:
        if (r2 == 0) goto L_0x0113;
    L_0x0110:
        r2.disconnect();
    L_0x0113:
        r0 = r12.zzbrf;
        r0 = r0.zzwE();
        r1 = new com.google.android.gms.internal.zzcfs;
        r5 = r12.mPackageName;
        r6 = r12.zzbrd;
        r8 = 0;
        r9 = 0;
        r11 = 0;
        r4 = r1;
        r4.<init>(r5, r6, r7, r8, r9, r10);
        r0.zzj(r1);
        throw r3;
    L_0x012a:
        r2 = move-exception;
        r9 = r1;
        r7 = r2;
        r6 = 0;
        r2 = r9;
    L_0x012f:
        if (r1 == 0) goto L_0x014b;
    L_0x0131:
        r1.close();	 Catch:{ IOException -> 0x0135 }
        goto L_0x014b;
    L_0x0135:
        r0 = move-exception;
        r1 = r12.zzbrf;
        r1 = r1.zzwF();
        r1 = r1.zzyx();
        r3 = "Error closing HTTP compressed POST connection output stream. appId";
        r4 = r12.mPackageName;
        r4 = com.google.android.gms.internal.zzcfl.zzdZ(r4);
        r1.zze(r3, r4, r0);
    L_0x014b:
        if (r2 == 0) goto L_0x0150;
    L_0x014d:
        r2.disconnect();
    L_0x0150:
        r0 = r12.zzbrf;
        r0 = r0.zzwE();
        r1 = new com.google.android.gms.internal.zzcfs;
        r4 = r12.mPackageName;
        r5 = r12.zzbrd;
        r8 = 0;
        r10 = 0;
        r3 = r1;
        r3.<init>(r4, r5, r6, r7, r8, r9);
        goto L_0x00d0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcft.run():void");
    }
}
