package com.google.android.gms.internal;

import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.TreeMap;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

public final class zzad implements zzk {
    private static boolean DEBUG = zzab.DEBUG;
    private static int zzam = 3000;
    private static int zzan = 4096;
    private zzan zzao;
    private zzae zzap;

    public zzad(zzan zzan) {
        this(zzan, new zzae(zzan));
    }

    private zzad(zzan zzan, zzae zzae) {
        this.zzao = zzan;
        this.zzap = zzae;
    }

    private static Map<String, String> zza(Header[] headerArr) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (int i = 0; i < headerArr.length; i++) {
            treeMap.put(headerArr[i].getName(), headerArr[i].getValue());
        }
        return treeMap;
    }

    private static void zza(String str, zzp<?> zzp, zzaa zzaa) throws zzaa {
        zzx zzj = zzp.zzj();
        int zzi = zzp.zzi();
        try {
            zzj.zza(zzaa);
            zzp.zzb(String.format("%s-retry [timeout=%s]", new Object[]{str, Integer.valueOf(zzi)}));
        } catch (zzaa zzaa2) {
            zzp.zzb(String.format("%s-timeout-giveup [timeout=%s]", new Object[]{str, Integer.valueOf(zzi)}));
            throw zzaa2;
        }
    }

    private final byte[] zza(HttpEntity httpEntity) throws IOException, zzy {
        Throwable th;
        zzaq zzaq = new zzaq(this.zzap, (int) httpEntity.getContentLength());
        byte[] bArr = null;
        try {
            InputStream content = httpEntity.getContent();
            if (content == null) {
                throw new zzy();
            }
            byte[] zzb = this.zzap.zzb(1024);
            while (true) {
                try {
                    int read = content.read(zzb);
                    if (read == -1) {
                        break;
                    }
                    zzaq.write(zzb, 0, read);
                } catch (Throwable th2) {
                    th = th2;
                    bArr = zzb;
                    try {
                        httpEntity.consumeContent();
                    } catch (IOException unused) {
                        zzab.zza("Error occured when calling consumingContent", new Object[0]);
                    }
                    this.zzap.zza(bArr);
                    zzaq.close();
                    throw th;
                }
            }
            bArr = zzaq.toByteArray();
            try {
                httpEntity.consumeContent();
            } catch (IOException unused2) {
                zzab.zza("Error occured when calling consumingContent", new Object[0]);
            }
            this.zzap.zza(zzb);
            zzaq.close();
            return bArr;
        } catch (Throwable th3) {
            th = th3;
            httpEntity.consumeContent();
            this.zzap.zza(bArr);
            zzaq.close();
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:107:? A:{SYNTHETIC, ExcHandler: SocketTimeoutException (unused java.net.SocketTimeoutException), Splitter:B:2:0x000e} */
    /* JADX WARNING: Removed duplicated region for block: B:105:? A:{SYNTHETIC, ExcHandler: ConnectTimeoutException (unused org.apache.http.conn.ConnectTimeoutException), Splitter:B:2:0x000e} */
    /* JADX WARNING: Removed duplicated region for block: B:97:0x01a5 A:{ExcHandler: MalformedURLException (r0_9 'e' java.lang.Throwable), Splitter:B:2:0x000e} */
    /* JADX WARNING: Removed duplicated region for block: B:110:0x019f A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x0133  */
    /* JADX WARNING: Removed duplicated region for block: B:107:? A:{SYNTHETIC, ExcHandler: SocketTimeoutException (unused java.net.SocketTimeoutException), Splitter:B:2:0x000e} */
    /* JADX WARNING: Removed duplicated region for block: B:105:? A:{SYNTHETIC, ExcHandler: ConnectTimeoutException (unused org.apache.http.conn.ConnectTimeoutException), Splitter:B:2:0x000e} */
    /* JADX WARNING: Removed duplicated region for block: B:97:0x01a5 A:{ExcHandler: MalformedURLException (r0_9 'e' java.lang.Throwable), Splitter:B:2:0x000e} */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x0133  */
    /* JADX WARNING: Removed duplicated region for block: B:110:0x019f A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:107:? A:{SYNTHETIC, ExcHandler: SocketTimeoutException (unused java.net.SocketTimeoutException), Splitter:B:2:0x000e} */
    /* JADX WARNING: Removed duplicated region for block: B:105:? A:{SYNTHETIC, ExcHandler: ConnectTimeoutException (unused org.apache.http.conn.ConnectTimeoutException), Splitter:B:2:0x000e} */
    /* JADX WARNING: Removed duplicated region for block: B:97:0x01a5 A:{ExcHandler: MalformedURLException (r0_9 'e' java.lang.Throwable), Splitter:B:2:0x000e} */
    /* JADX WARNING: Removed duplicated region for block: B:110:0x019f A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x0133  */
    /* JADX WARNING: Removed duplicated region for block: B:107:? A:{SYNTHETIC, ExcHandler: SocketTimeoutException (unused java.net.SocketTimeoutException), Splitter:B:2:0x000e} */
    /* JADX WARNING: Removed duplicated region for block: B:105:? A:{SYNTHETIC, ExcHandler: ConnectTimeoutException (unused org.apache.http.conn.ConnectTimeoutException), Splitter:B:2:0x000e} */
    /* JADX WARNING: Removed duplicated region for block: B:97:0x01a5 A:{ExcHandler: MalformedURLException (r0_9 'e' java.lang.Throwable), Splitter:B:2:0x000e} */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x0133  */
    /* JADX WARNING: Removed duplicated region for block: B:110:0x019f A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:107:? A:{SYNTHETIC, ExcHandler: SocketTimeoutException (unused java.net.SocketTimeoutException), Splitter:B:2:0x000e} */
    /* JADX WARNING: Removed duplicated region for block: B:105:? A:{SYNTHETIC, ExcHandler: ConnectTimeoutException (unused org.apache.http.conn.ConnectTimeoutException), Splitter:B:2:0x000e} */
    /* JADX WARNING: Removed duplicated region for block: B:97:0x01a5 A:{ExcHandler: MalformedURLException (r0_9 'e' java.lang.Throwable), Splitter:B:2:0x000e} */
    /* JADX WARNING: Removed duplicated region for block: B:110:0x019f A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x0133  */
    /* JADX WARNING: Removed duplicated region for block: B:107:? A:{SYNTHETIC, ExcHandler: SocketTimeoutException (unused java.net.SocketTimeoutException), Splitter:B:2:0x000e} */
    /* JADX WARNING: Removed duplicated region for block: B:105:? A:{SYNTHETIC, ExcHandler: ConnectTimeoutException (unused org.apache.http.conn.ConnectTimeoutException), Splitter:B:2:0x000e} */
    /* JADX WARNING: Removed duplicated region for block: B:97:0x01a5 A:{ExcHandler: MalformedURLException (r0_9 'e' java.lang.Throwable), Splitter:B:2:0x000e} */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x0133  */
    /* JADX WARNING: Removed duplicated region for block: B:110:0x019f A:{SYNTHETIC} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:23:0x0091, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:24:0x0092, code skipped:
            r5 = r0;
            r13 = null;
            r14 = r12;
     */
    /* JADX WARNING: Missing block: B:38:0x00b8, code skipped:
            if (r6 > ((long) zzam)) goto L_0x00c0;
     */
    /* JADX WARNING: Missing block: B:39:0x00bb, code skipped:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:40:0x00bc, code skipped:
            r13 = r5;
            r14 = r12;
     */
    /* JADX WARNING: Missing block: B:61:0x011b, code skipped:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:62:0x011d, code skipped:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:63:0x011e, code skipped:
            r7 = r12;
     */
    /* JADX WARNING: Missing block: B:64:0x011f, code skipped:
            r13 = r5;
            r14 = r7;
     */
    /* JADX WARNING: Missing block: B:67:0x0128, code skipped:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:68:0x0129, code skipped:
            r14 = r5;
            r13 = null;
     */
    /* JADX WARNING: Missing block: B:69:0x012c, code skipped:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:70:0x012d, code skipped:
            r14 = r5;
            r10 = null;
            r13 = r10;
     */
    /* JADX WARNING: Missing block: B:71:0x0130, code skipped:
            r5 = r0;
     */
    /* JADX WARNING: Missing block: B:73:0x0133, code skipped:
            r5 = r10.getStatusLine().getStatusCode();
            com.google.android.gms.internal.zzab.zzc("Unexpected response code %d for %s", java.lang.Integer.valueOf(r5), r24.getUrl());
     */
    /* JADX WARNING: Missing block: B:74:0x0150, code skipped:
            if (r13 != null) goto L_0x0152;
     */
    /* JADX WARNING: Missing block: B:75:0x0152, code skipped:
            r11 = new com.google.android.gms.internal.zzn(r5, r13, r14, false, android.os.SystemClock.elapsedRealtime() - r3);
     */
    /* JADX WARNING: Missing block: B:76:0x0162, code skipped:
            if (r5 == 401) goto L_0x018b;
     */
    /* JADX WARNING: Missing block: B:80:0x016b, code skipped:
            if (r5 < com.lotecs.util.ErrorCode.ERROR_CODE_INVALID) goto L_0x0177;
     */
    /* JADX WARNING: Missing block: B:84:0x0176, code skipped:
            throw new com.google.android.gms.internal.zzf(r11);
     */
    /* JADX WARNING: Missing block: B:86:0x0179, code skipped:
            if (r5 < 500) goto L_0x0185;
     */
    /* JADX WARNING: Missing block: B:90:0x0184, code skipped:
            throw new com.google.android.gms.internal.zzy(r11);
     */
    /* JADX WARNING: Missing block: B:92:0x018a, code skipped:
            throw new com.google.android.gms.internal.zzy(r11);
     */
    /* JADX WARNING: Missing block: B:93:0x018b, code skipped:
            zza("auth", r2, new com.google.android.gms.internal.zza(r11));
     */
    /* JADX WARNING: Missing block: B:94:0x0197, code skipped:
            r5 = "network";
            r6 = new com.google.android.gms.internal.zzm();
     */
    /* JADX WARNING: Missing block: B:96:0x01a4, code skipped:
            throw new com.google.android.gms.internal.zzo(r5);
     */
    /* JADX WARNING: Missing block: B:97:0x01a5, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:98:0x01a6, code skipped:
            r3 = r0;
            r5 = "Bad URL ";
            r2 = java.lang.String.valueOf(r24.getUrl());
     */
    /* JADX WARNING: Missing block: B:99:0x01b7, code skipped:
            if (r2.length() != 0) goto L_0x01b9;
     */
    /* JADX WARNING: Missing block: B:100:0x01b9, code skipped:
            r2 = r5.concat(r2);
     */
    /* JADX WARNING: Missing block: B:101:0x01be, code skipped:
            r2 = new java.lang.String(r5);
     */
    /* JADX WARNING: Missing block: B:103:0x01c6, code skipped:
            throw new java.lang.RuntimeException(r2, r3);
     */
    /* JADX WARNING: Missing block: B:104:0x01c7, code skipped:
            r5 = "connection";
            r6 = new com.google.android.gms.internal.zzz();
     */
    /* JADX WARNING: Missing block: B:106:0x01cf, code skipped:
            r5 = "socket";
            r6 = new com.google.android.gms.internal.zzz();
     */
    /* JADX WARNING: Missing block: B:108:0x01d6, code skipped:
            zza(r5, r2, r6);
     */
    public final com.google.android.gms.internal.zzn zza(com.google.android.gms.internal.zzp<?> r24) throws com.google.android.gms.internal.zzaa {
        /*
        r23 = this;
        r1 = r23;
        r2 = r24;
        r3 = android.os.SystemClock.elapsedRealtime();
    L_0x0008:
        r5 = java.util.Collections.emptyMap();
        r8 = 0;
        r9 = 0;
        r10 = new java.util.HashMap;	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x012c }
        r10.<init>();	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x012c }
        r11 = r24.zze();	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x012c }
        if (r11 == 0) goto L_0x003c;
    L_0x0019:
        r12 = r11.zza;	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x012c }
        if (r12 == 0) goto L_0x0024;
    L_0x001d:
        r12 = "If-None-Match";
        r13 = r11.zza;	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x012c }
        r10.put(r12, r13);	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x012c }
    L_0x0024:
        r12 = r11.zzc;	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x012c }
        r14 = 0;
        r16 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1));
        if (r16 <= 0) goto L_0x003c;
    L_0x002c:
        r12 = new java.util.Date;	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x012c }
        r13 = r11.zzc;	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x012c }
        r12.<init>(r13);	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x012c }
        r11 = "If-Modified-Since";
        r12 = org.apache.http.impl.cookie.DateUtils.formatDate(r12);	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x012c }
        r10.put(r11, r12);	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x012c }
    L_0x003c:
        r11 = r1.zzao;	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x012c }
        r10 = r11.zza(r2, r10);	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x012c }
        r11 = r10.getStatusLine();	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x0128 }
        r13 = r11.getStatusCode();	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x0128 }
        r12 = r10.getAllHeaders();	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x0128 }
        r12 = zza(r12);	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x0128 }
        r5 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        if (r13 != r5) goto L_0x0097;
    L_0x0056:
        r5 = r24.zze();	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x0091 }
        if (r5 != 0) goto L_0x0072;
    L_0x005c:
        r5 = new com.google.android.gms.internal.zzn;	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x0091 }
        r15 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        r16 = 0;
        r18 = 1;
        r13 = android.os.SystemClock.elapsedRealtime();	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x0091 }
        r11 = 0;
        r19 = r13 - r3;
        r14 = r5;
        r17 = r12;
        r14.<init>(r15, r16, r17, r18, r19);	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x0091 }
        return r5;
    L_0x0072:
        r11 = r5.zzf;	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x0091 }
        r11.putAll(r12);	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x0091 }
        r11 = new com.google.android.gms.internal.zzn;	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x0091 }
        r14 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        r15 = r5.data;	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x0091 }
        r5 = r5.zzf;	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x0091 }
        r17 = 1;
        r18 = android.os.SystemClock.elapsedRealtime();	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x0091 }
        r13 = 0;
        r20 = r18 - r3;
        r13 = r11;
        r16 = r5;
        r18 = r20;
        r13.<init>(r14, r15, r16, r17, r18);	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x0091 }
        return r11;
    L_0x0091:
        r0 = move-exception;
        r5 = r0;
        r13 = r8;
        r14 = r12;
        goto L_0x0131;
    L_0x0097:
        r5 = r10.getEntity();	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x0122 }
        if (r5 == 0) goto L_0x00a6;
    L_0x009d:
        r5 = r10.getEntity();	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x0091 }
        r5 = r1.zza(r5);	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x0091 }
        goto L_0x00a8;
    L_0x00a6:
        r5 = new byte[r9];	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x0122 }
    L_0x00a8:
        r14 = android.os.SystemClock.elapsedRealtime();	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x011d }
        r8 = 0;
        r6 = r14 - r3;
        r8 = DEBUG;	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x011d }
        if (r8 != 0) goto L_0x00c0;
    L_0x00b3:
        r8 = zzam;	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x00bb }
        r14 = (long) r8;
        r8 = (r6 > r14 ? 1 : (r6 == r14 ? 0 : -1));
        if (r8 <= 0) goto L_0x00f8;
    L_0x00ba:
        goto L_0x00c0;
    L_0x00bb:
        r0 = move-exception;
        r13 = r5;
        r14 = r12;
        goto L_0x0130;
    L_0x00c0:
        r8 = "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]";
        r14 = 5;
        r14 = new java.lang.Object[r14];	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x011d }
        r14[r9] = r2;	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x011d }
        r6 = java.lang.Long.valueOf(r6);	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x011d }
        r7 = 1;
        r14[r7] = r6;	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x011d }
        if (r5 == 0) goto L_0x00d6;
    L_0x00d0:
        r6 = r5.length;	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x00bb }
        r6 = java.lang.Integer.valueOf(r6);	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x00bb }
        goto L_0x00d8;
    L_0x00d6:
        r6 = "null";
    L_0x00d8:
        r7 = 2;
        r14[r7] = r6;	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x011d }
        r6 = 3;
        r7 = r11.getStatusCode();	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x011d }
        r7 = java.lang.Integer.valueOf(r7);	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x011d }
        r14[r6] = r7;	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x011d }
        r6 = 4;
        r7 = r24.zzj();	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x011d }
        r7 = r7.zzb();	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x011d }
        r7 = java.lang.Integer.valueOf(r7);	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x011d }
        r14[r6] = r7;	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x011d }
        com.google.android.gms.internal.zzab.zzb(r8, r14);	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x011d }
    L_0x00f8:
        r6 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r13 < r6) goto L_0x0114;
    L_0x00fc:
        r6 = 299; // 0x12b float:4.19E-43 double:1.477E-321;
        if (r13 <= r6) goto L_0x0101;
    L_0x0100:
        goto L_0x0114;
    L_0x0101:
        r6 = new com.google.android.gms.internal.zzn;	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x011d }
        r16 = 0;
        r7 = android.os.SystemClock.elapsedRealtime();	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x011d }
        r11 = 0;
        r17 = r7 - r3;
        r7 = r12;
        r12 = r6;
        r14 = r5;
        r15 = r7;
        r12.<init>(r13, r14, r15, r16, r17);	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x011b }
        return r6;
    L_0x0114:
        r7 = r12;
        r6 = new java.io.IOException;	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x011b }
        r6.<init>();	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x011b }
        throw r6;	 Catch:{ SocketTimeoutException -> 0x01cf, ConnectTimeoutException -> 0x01c7, MalformedURLException -> 0x01a5, IOException -> 0x011b }
    L_0x011b:
        r0 = move-exception;
        goto L_0x011f;
    L_0x011d:
        r0 = move-exception;
        r7 = r12;
    L_0x011f:
        r13 = r5;
        r14 = r7;
        goto L_0x0130;
    L_0x0122:
        r0 = move-exception;
        r7 = r12;
        r5 = r0;
        r14 = r7;
        r13 = r8;
        goto L_0x0131;
    L_0x0128:
        r0 = move-exception;
        r14 = r5;
        r13 = r8;
        goto L_0x0130;
    L_0x012c:
        r0 = move-exception;
        r14 = r5;
        r10 = r8;
        r13 = r10;
    L_0x0130:
        r5 = r0;
    L_0x0131:
        if (r10 == 0) goto L_0x019f;
    L_0x0133:
        r5 = r10.getStatusLine();
        r5 = r5.getStatusCode();
        r6 = "Unexpected response code %d for %s";
        r7 = 2;
        r7 = new java.lang.Object[r7];
        r8 = java.lang.Integer.valueOf(r5);
        r7[r9] = r8;
        r8 = r24.getUrl();
        r9 = 1;
        r7[r9] = r8;
        com.google.android.gms.internal.zzab.zzc(r6, r7);
        if (r13 == 0) goto L_0x0197;
    L_0x0152:
        r6 = new com.google.android.gms.internal.zzn;
        r15 = 0;
        r7 = android.os.SystemClock.elapsedRealtime();
        r16 = r7 - r3;
        r11 = r6;
        r12 = r5;
        r11.<init>(r12, r13, r14, r15, r16);
        r7 = 401; // 0x191 float:5.62E-43 double:1.98E-321;
        if (r5 == r7) goto L_0x018b;
    L_0x0164:
        r7 = 403; // 0x193 float:5.65E-43 double:1.99E-321;
        if (r5 != r7) goto L_0x0169;
    L_0x0168:
        goto L_0x018b;
    L_0x0169:
        r2 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        if (r5 < r2) goto L_0x0177;
    L_0x016d:
        r2 = 499; // 0x1f3 float:6.99E-43 double:2.465E-321;
        if (r5 > r2) goto L_0x0177;
    L_0x0171:
        r2 = new com.google.android.gms.internal.zzf;
        r2.<init>(r6);
        throw r2;
    L_0x0177:
        r2 = 500; // 0x1f4 float:7.0E-43 double:2.47E-321;
        if (r5 < r2) goto L_0x0185;
    L_0x017b:
        r2 = 599; // 0x257 float:8.4E-43 double:2.96E-321;
        if (r5 > r2) goto L_0x0185;
    L_0x017f:
        r2 = new com.google.android.gms.internal.zzy;
        r2.<init>(r6);
        throw r2;
    L_0x0185:
        r2 = new com.google.android.gms.internal.zzy;
        r2.<init>(r6);
        throw r2;
    L_0x018b:
        r5 = "auth";
        r7 = new com.google.android.gms.internal.zza;
        r7.<init>(r6);
        zza(r5, r2, r7);
        goto L_0x0008;
    L_0x0197:
        r5 = "network";
        r6 = new com.google.android.gms.internal.zzm;
        r6.<init>();
        goto L_0x01d6;
    L_0x019f:
        r2 = new com.google.android.gms.internal.zzo;
        r2.<init>(r5);
        throw r2;
    L_0x01a5:
        r0 = move-exception;
        r3 = r0;
        r4 = new java.lang.RuntimeException;
        r5 = "Bad URL ";
        r2 = r24.getUrl();
        r2 = java.lang.String.valueOf(r2);
        r6 = r2.length();
        if (r6 == 0) goto L_0x01be;
    L_0x01b9:
        r2 = r5.concat(r2);
        goto L_0x01c3;
    L_0x01be:
        r2 = new java.lang.String;
        r2.<init>(r5);
    L_0x01c3:
        r4.<init>(r2, r3);
        throw r4;
    L_0x01c7:
        r5 = "connection";
        r6 = new com.google.android.gms.internal.zzz;
        r6.<init>();
        goto L_0x01d6;
    L_0x01cf:
        r5 = "socket";
        r6 = new com.google.android.gms.internal.zzz;
        r6.<init>();
    L_0x01d6:
        zza(r5, r2, r6);
        goto L_0x0008;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzad.zza(com.google.android.gms.internal.zzp):com.google.android.gms.internal.zzn");
    }
}
