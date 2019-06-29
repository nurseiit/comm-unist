package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.js.zzl;
import com.google.android.gms.ads.internal.zzbs;
import java.util.List;
import java.util.Map;

@zzzn
public final class zzabm extends zzaan {
    private static zzabm zzUx;
    private static final Object zzuF = new Object();
    private final Context mContext;
    private final zzl zzLG;
    private final zzabl zzUy;
    private final zzmb zzUz;

    private zzabm(Context context, zzmb zzmb, zzabl zzabl) {
        this(context, zzmb, zzabl, zzbs.zzbO().zzb(context, new zzaje(11020208, 11020208, true)).zzff());
    }

    private zzabm(Context context, zzmb zzmb, zzabl zzabl, zzl zzl) {
        this.mContext = context;
        this.zzUy = zzabl;
        this.zzUz = zzmb;
        this.zzLG = zzl;
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:88:0x02c9 */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:88|89|90|91) */
    /* JADX WARNING: Missing block: B:89:?, code skipped:
            r1 = new com.google.android.gms.internal.zzaai(0);
     */
    /* JADX WARNING: Missing block: B:90:0x02cf, code skipped:
            com.google.android.gms.internal.zzagz.zzZr.post(new com.google.android.gms.internal.zzabq(r10, r9, r15, r11));
     */
    /* JADX WARNING: Missing block: B:91:0x02d9, code skipped:
            return r1;
     */
    private static com.google.android.gms.internal.zzaai zza(android.content.Context r21, com.google.android.gms.ads.internal.js.zzl r22, com.google.android.gms.internal.zzmb r23, com.google.android.gms.internal.zzabl r24, com.google.android.gms.internal.zzaae r25) {
        /*
        r9 = r21;
        r10 = r24;
        r11 = r25;
        r1 = "Starting ad request from service using: AFMA_getAd";
        com.google.android.gms.internal.zzajc.zzaC(r1);
        r12 = new com.google.android.gms.internal.zznb;
        r1 = com.google.android.gms.internal.zzmo.zzCQ;
        r2 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r1 = r2.zzd(r1);
        r1 = (java.lang.Boolean) r1;
        r1 = r1.booleanValue();
        r2 = "load_ad";
        r3 = r11.zzvX;
        r3 = r3.zzAs;
        r12.<init>(r1, r2, r3);
        r1 = r11.versionCode;
        r13 = 1;
        r14 = 0;
        r2 = 10;
        if (r1 <= r2) goto L_0x0045;
    L_0x002e:
        r1 = r11.zzSP;
        r3 = -1;
        r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1));
        if (r5 == 0) goto L_0x0045;
    L_0x0036:
        r1 = r11.zzSP;
        r1 = r12.zzc(r1);
        r2 = new java.lang.String[r13];
        r3 = "cts";
        r2[r14] = r3;
        r12.zza(r1, r2);
    L_0x0045:
        r15 = r12.zzdS();
        r1 = r10.zzUv;
        r1 = r1.zzj(r9);
        r2 = r10.zzUu;
        r2 = r2.zzo(r9);
        r3 = r10.zzUp;
        r4 = r11.zzSA;
        r4 = r4.packageName;
        r3 = r3.zzaD(r4);
        r4 = r10.zzUw;
        r4 = r4.zze(r11);
        r5 = com.google.android.gms.ads.internal.zzbs.zzbI();
        r5 = r5.zzn(r9);
        r6 = new com.google.android.gms.internal.zzajh;
        r8 = 0;
        r6.<init>(r8);
        r7 = r11.zzSz;
        r7 = r7.extras;
        if (r7 == 0) goto L_0x0083;
    L_0x0079:
        r13 = "_ad";
        r7 = r7.getString(r13);
        if (r7 == 0) goto L_0x0083;
    L_0x0081:
        r7 = 1;
        goto L_0x0084;
    L_0x0083:
        r7 = 0;
    L_0x0084:
        r13 = r11.zzSV;
        if (r13 == 0) goto L_0x0092;
    L_0x0088:
        if (r7 != 0) goto L_0x0092;
    L_0x008a:
        r6 = r10.zzUs;
        r7 = r11.applicationInfo;
        r6 = r6.zza(r7);
    L_0x0092:
        r7 = new com.google.android.gms.internal.zzajh;
        r7.<init>(r8);
        r13 = com.google.android.gms.internal.zzmo.zzDM;
        r14 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r13 = r14.zzd(r13);
        r13 = (java.lang.Boolean) r13;
        r13 = r13.booleanValue();
        if (r13 == 0) goto L_0x00af;
    L_0x00a9:
        r7 = r10.zzUw;
        r7 = r7.zzz(r9);
    L_0x00af:
        r13 = r11.versionCode;
        r14 = 4;
        if (r13 < r14) goto L_0x00bb;
    L_0x00b4:
        r13 = r11.zzSG;
        if (r13 == 0) goto L_0x00bb;
    L_0x00b8:
        r13 = r11.zzSG;
        goto L_0x00bc;
    L_0x00bb:
        r13 = r8;
    L_0x00bc:
        r14 = com.google.android.gms.internal.zzmo.zzDg;
        r8 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r8 = r8.zzd(r14);
        r8 = (java.lang.Boolean) r8;
        r8.booleanValue();
        com.google.android.gms.ads.internal.zzbs.zzbz();
        r8 = r21.getPackageName();
        r14 = "android.permission.ACCESS_NETWORK_STATE";
        r8 = com.google.android.gms.internal.zzagz.zzc(r9, r8, r14);
        if (r8 == 0) goto L_0x00ed;
    L_0x00da:
        r8 = "connectivity";
        r8 = r9.getSystemService(r8);
        r8 = (android.net.ConnectivityManager) r8;
        r8 = r8.getActiveNetworkInfo();
        if (r8 != 0) goto L_0x00ed;
    L_0x00e8:
        r8 = "Device is offline.";
        com.google.android.gms.internal.zzajc.zzaC(r8);
    L_0x00ed:
        r8 = r11.versionCode;
        r14 = 7;
        if (r8 < r14) goto L_0x00f5;
    L_0x00f2:
        r8 = r11.zzSM;
        goto L_0x00fd;
    L_0x00f5:
        r8 = java.util.UUID.randomUUID();
        r8 = r8.toString();
    L_0x00fd:
        r14 = new com.google.android.gms.internal.zzabu;
        r16 = r12;
        r12 = r11.applicationInfo;
        r12 = r12.packageName;
        r14.<init>(r8, r12);
        r12 = r11.zzSz;
        r12 = r12.extras;
        if (r12 == 0) goto L_0x0121;
    L_0x010e:
        r12 = r11.zzSz;
        r12 = r12.extras;
        r17 = r14;
        r14 = "_ad";
        r12 = r12.getString(r14);
        if (r12 == 0) goto L_0x0123;
    L_0x011c:
        r1 = com.google.android.gms.internal.zzabt.zza(r9, r11, r12);
        return r1;
    L_0x0121:
        r17 = r14;
    L_0x0123:
        r12 = r10.zzUq;
        r12 = r12.zza(r11);
        r14 = com.google.android.gms.internal.zzmo.zzGb;
        r18 = r15;
        r15 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r14 = r15.zzd(r14);
        r14 = (java.lang.Long) r14;
        r14 = r14.longValue();
        r19 = r8;
        r8 = java.util.concurrent.TimeUnit.MILLISECONDS;
        r9 = 0;
        r1 = com.google.android.gms.internal.zzaji.zza(r1, r9, r14, r8);
        r1 = (android.os.Bundle) r1;
        r8 = com.google.android.gms.internal.zzmo.zzEF;
        r14 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r8 = r14.zzd(r8);
        r8 = (java.lang.Long) r8;
        r14 = r8.longValue();
        r8 = java.util.concurrent.TimeUnit.MILLISECONDS;
        r2 = com.google.android.gms.internal.zzaji.zza(r2, r9, r14, r8);
        r2 = (com.google.android.gms.internal.zzacn) r2;
        r8 = com.google.android.gms.internal.zzmo.zzFK;
        r14 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r8 = r14.zzd(r8);
        r8 = (java.lang.Long) r8;
        r14 = r8.longValue();
        r8 = java.util.concurrent.TimeUnit.MILLISECONDS;
        r6 = com.google.android.gms.internal.zzaji.zza(r6, r9, r14, r8);
        r6 = (android.location.Location) r6;
        r8 = com.google.android.gms.internal.zzmo.zzDN;
        r14 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r8 = r14.zzd(r8);
        r8 = (java.lang.Long) r8;
        r14 = r8.longValue();
        r8 = java.util.concurrent.TimeUnit.MILLISECONDS;
        r7 = com.google.android.gms.internal.zzaji.zza(r7, r9, r14, r8);
        r7 = (com.google.android.gms.ads.identifier.AdvertisingIdClient.Info) r7;
        r4 = com.google.android.gms.internal.zzaji.zza(r4, r9);
        r4 = (java.lang.String) r4;
        r3 = com.google.android.gms.internal.zzaji.zza(r3, r9);
        r8 = r3;
        r8 = (java.lang.String) r8;
        r3 = com.google.android.gms.internal.zzaji.zza(r5, r9);
        r3 = (com.google.android.gms.internal.zzacb) r3;
        if (r3 != 0) goto L_0x01af;
    L_0x01a3:
        r1 = "Error fetching device info. This is not recoverable.";
        com.google.android.gms.internal.zzajc.zzaT(r1);
        r1 = new com.google.android.gms.internal.zzaai;
        r2 = 0;
        r1.<init>(r2);
        return r1;
    L_0x01af:
        r5 = new com.google.android.gms.internal.zzabk;
        r5.<init>();
        r5.zzUj = r11;
        r5.zzUk = r3;
        r5.zzUh = r2;
        r5.zzzV = r6;
        r5.zzUg = r1;
        r5.zzSB = r4;
        r5.zzqi = r7;
        if (r12 != 0) goto L_0x01c9;
    L_0x01c4:
        r1 = r5.zzSN;
        r1.clear();
    L_0x01c9:
        r5.zzSN = r12;
        r5.zzSG = r13;
        r5.zzUi = r8;
        r1 = r10.zzUo;
        r12 = r9;
        r9 = r21;
        r1 = r1.zzf(r9);
        r5.zzUl = r1;
        r1 = r10.zzUm;
        r5.zzUm = r1;
        r1 = com.google.android.gms.internal.zzabt.zza(r9, r5);
        if (r1 != 0) goto L_0x01eb;
    L_0x01e4:
        r1 = new com.google.android.gms.internal.zzaai;
        r2 = 0;
        r1.<init>(r2);
        return r1;
    L_0x01eb:
        r2 = r11.versionCode;
        r3 = 7;
        if (r2 >= r3) goto L_0x01f7;
    L_0x01f0:
        r2 = "request_id";
        r3 = r19;
        r1.put(r2, r3);	 Catch:{ JSONException -> 0x01f7 }
    L_0x01f7:
        r7 = r1.toString();
        r1 = 1;
        r2 = new java.lang.String[r1];
        r1 = "arc";
        r3 = 0;
        r2[r3] = r1;
        r13 = r16;
        r14 = r18;
        r13.zza(r14, r2);
        r6 = r13.zzdS();
        r1 = com.google.android.gms.internal.zzagz.zzZr;
        r15 = new com.google.android.gms.internal.zzabn;
        r2 = r15;
        r3 = r22;
        r4 = r17;
        r5 = r13;
        r2.<init>(r3, r4, r5, r6, r7);
        r1.post(r15);
        r15 = r17;
        r1 = r15.zzgG();	 Catch:{ Exception -> 0x02c9 }
        r2 = 10;
        r4 = java.util.concurrent.TimeUnit.SECONDS;	 Catch:{ Exception -> 0x02c9 }
        r1 = r1.get(r2, r4);	 Catch:{ Exception -> 0x02c9 }
        r6 = r1;
        r6 = (com.google.android.gms.internal.zzaca) r6;	 Catch:{ Exception -> 0x02c9 }
        if (r6 != 0) goto L_0x0242;
    L_0x0231:
        r1 = new com.google.android.gms.internal.zzaai;	 Catch:{ all -> 0x02c6 }
        r2 = 0;
        r1.<init>(r2);	 Catch:{ all -> 0x02c6 }
        r2 = com.google.android.gms.internal.zzagz.zzZr;
        r3 = new com.google.android.gms.internal.zzabq;
        r3.<init>(r10, r9, r15, r11);
        r2.post(r3);
        return r1;
    L_0x0242:
        r1 = r6.getErrorCode();	 Catch:{ all -> 0x02c6 }
        r2 = -2;
        if (r1 == r2) goto L_0x025d;
    L_0x0249:
        r1 = new com.google.android.gms.internal.zzaai;	 Catch:{ all -> 0x02c6 }
        r2 = r6.getErrorCode();	 Catch:{ all -> 0x02c6 }
        r1.<init>(r2);	 Catch:{ all -> 0x02c6 }
        r2 = com.google.android.gms.internal.zzagz.zzZr;
        r3 = new com.google.android.gms.internal.zzabq;
        r3.<init>(r10, r9, r15, r11);
        r2.post(r3);
        return r1;
    L_0x025d:
        r1 = r13.zzdW();	 Catch:{ all -> 0x02c6 }
        if (r1 == 0) goto L_0x0272;
    L_0x0263:
        r1 = r13.zzdW();	 Catch:{ all -> 0x02c6 }
        r2 = 1;
        r3 = new java.lang.String[r2];	 Catch:{ all -> 0x02c6 }
        r2 = "rur";
        r4 = 0;
        r3[r4] = r2;	 Catch:{ all -> 0x02c6 }
        r13.zza(r1, r3);	 Catch:{ all -> 0x02c6 }
    L_0x0272:
        r1 = r6.zzgL();	 Catch:{ all -> 0x02c6 }
        r1 = android.text.TextUtils.isEmpty(r1);	 Catch:{ all -> 0x02c6 }
        if (r1 != 0) goto L_0x0285;
    L_0x027c:
        r1 = r6.zzgL();	 Catch:{ all -> 0x02c6 }
        r1 = com.google.android.gms.internal.zzabt.zza(r9, r11, r1);	 Catch:{ all -> 0x02c6 }
        r12 = r1;
    L_0x0285:
        if (r12 != 0) goto L_0x02a2;
    L_0x0287:
        r1 = r6.getUrl();	 Catch:{ all -> 0x02c6 }
        r1 = android.text.TextUtils.isEmpty(r1);	 Catch:{ all -> 0x02c6 }
        if (r1 != 0) goto L_0x02a2;
    L_0x0291:
        r1 = r11.zzvT;	 Catch:{ all -> 0x02c6 }
        r3 = r1.zzaP;	 Catch:{ all -> 0x02c6 }
        r4 = r6.getUrl();	 Catch:{ all -> 0x02c6 }
        r1 = r11;
        r2 = r9;
        r5 = r8;
        r7 = r13;
        r8 = r10;
        r12 = zza(r1, r2, r3, r4, r5, r6, r7, r8);	 Catch:{ all -> 0x02c6 }
    L_0x02a2:
        if (r12 != 0) goto L_0x02aa;
    L_0x02a4:
        r12 = new com.google.android.gms.internal.zzaai;	 Catch:{ all -> 0x02c6 }
        r1 = 0;
        r12.<init>(r1);	 Catch:{ all -> 0x02c6 }
    L_0x02aa:
        r1 = 1;
        r1 = new java.lang.String[r1];	 Catch:{ all -> 0x02c6 }
        r2 = "tts";
        r3 = 0;
        r1[r3] = r2;	 Catch:{ all -> 0x02c6 }
        r13.zza(r14, r1);	 Catch:{ all -> 0x02c6 }
        r1 = r13.zzdU();	 Catch:{ all -> 0x02c6 }
        r12.zzTB = r1;	 Catch:{ all -> 0x02c6 }
        r1 = com.google.android.gms.internal.zzagz.zzZr;
        r2 = new com.google.android.gms.internal.zzabq;
        r2.<init>(r10, r9, r15, r11);
        r1.post(r2);
        return r12;
    L_0x02c6:
        r0 = move-exception;
        r1 = r0;
        goto L_0x02da;
    L_0x02c9:
        r1 = new com.google.android.gms.internal.zzaai;	 Catch:{ all -> 0x02c6 }
        r2 = 0;
        r1.<init>(r2);	 Catch:{ all -> 0x02c6 }
        r2 = com.google.android.gms.internal.zzagz.zzZr;
        r3 = new com.google.android.gms.internal.zzabq;
        r3.<init>(r10, r9, r15, r11);
        r2.post(r3);
        return r1;
    L_0x02da:
        r2 = com.google.android.gms.internal.zzagz.zzZr;
        r3 = new com.google.android.gms.internal.zzabq;
        r3.<init>(r10, r9, r15, r11);
        r2.post(r3);
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzabm.zza(android.content.Context, com.google.android.gms.ads.internal.js.zzl, com.google.android.gms.internal.zzmb, com.google.android.gms.internal.zzabl, com.google.android.gms.internal.zzaae):com.google.android.gms.internal.zzaai");
    }

    /* JADX WARNING: Missing block: B:41:0x00bf, code skipped:
            r6 = r6.toString();
     */
    /* JADX WARNING: Missing block: B:43:?, code skipped:
            r9 = new java.io.InputStreamReader(r11.getInputStream());
     */
    /* JADX WARNING: Missing block: B:45:?, code skipped:
            com.google.android.gms.ads.internal.zzbs.zzbz();
            r10 = com.google.android.gms.internal.zzagz.zza((java.io.InputStreamReader) r9);
     */
    /* JADX WARNING: Missing block: B:47:?, code skipped:
            com.google.android.gms.common.util.zzn.closeQuietly(r9);
            zza(r6, r3, r10, r1);
            r5.zza(r6, r3, r10);
     */
    /* JADX WARNING: Missing block: B:48:0x00dc, code skipped:
            if (r2 == null) goto L_0x00e9;
     */
    /* JADX WARNING: Missing block: B:49:0x00de, code skipped:
            r2.zza(r4, "ufe");
     */
    /* JADX WARNING: Missing block: B:50:0x00e9, code skipped:
            r1 = r5.zze(r7);
     */
    /* JADX WARNING: Missing block: B:52:?, code skipped:
            r11.disconnect();
     */
    /* JADX WARNING: Missing block: B:53:0x00f0, code skipped:
            return r1;
     */
    /* JADX WARNING: Missing block: B:54:0x00f1, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:55:0x00f2, code skipped:
            r1 = r0;
     */
    /* JADX WARNING: Missing block: B:56:0x00f4, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:57:0x00f5, code skipped:
            r1 = r0;
            r9 = null;
     */
    /* JADX WARNING: Missing block: B:59:?, code skipped:
            com.google.android.gms.common.util.zzn.closeQuietly(r9);
     */
    /* JADX WARNING: Missing block: B:60:0x00fa, code skipped:
            throw r1;
     */
    public static com.google.android.gms.internal.zzaai zza(com.google.android.gms.internal.zzaae r18, android.content.Context r19, java.lang.String r20, java.lang.String r21, java.lang.String r22, com.google.android.gms.internal.zzaca r23, com.google.android.gms.internal.zznb r24, com.google.android.gms.internal.zzabl r25) {
        /*
        r1 = r18;
        r2 = r24;
        if (r2 == 0) goto L_0x000b;
    L_0x0006:
        r4 = r24.zzdS();
        goto L_0x000c;
    L_0x000b:
        r4 = 0;
    L_0x000c:
        r5 = new com.google.android.gms.internal.zzaby;	 Catch:{ IOException -> 0x017d }
        r6 = r23.zzgI();	 Catch:{ IOException -> 0x017d }
        r5.<init>(r1, r6);	 Catch:{ IOException -> 0x017d }
        r6 = "AdRequestServiceImpl: Sending request: ";
        r7 = java.lang.String.valueOf(r21);	 Catch:{ IOException -> 0x017d }
        r8 = r7.length();	 Catch:{ IOException -> 0x017d }
        if (r8 == 0) goto L_0x0026;
    L_0x0021:
        r6 = r6.concat(r7);	 Catch:{ IOException -> 0x017d }
        goto L_0x002c;
    L_0x0026:
        r7 = new java.lang.String;	 Catch:{ IOException -> 0x017d }
        r7.<init>(r6);	 Catch:{ IOException -> 0x017d }
        r6 = r7;
    L_0x002c:
        com.google.android.gms.internal.zzajc.zzaC(r6);	 Catch:{ IOException -> 0x017d }
        r6 = new java.net.URL;	 Catch:{ IOException -> 0x017d }
        r7 = r21;
        r6.<init>(r7);	 Catch:{ IOException -> 0x017d }
        r7 = com.google.android.gms.ads.internal.zzbs.zzbF();	 Catch:{ IOException -> 0x017d }
        r7 = r7.elapsedRealtime();	 Catch:{ IOException -> 0x017d }
        r9 = 0;
        r10 = 0;
    L_0x0040:
        r11 = r6.openConnection();	 Catch:{ IOException -> 0x017d }
        r11 = (java.net.HttpURLConnection) r11;	 Catch:{ IOException -> 0x017d }
        r12 = com.google.android.gms.ads.internal.zzbs.zzbz();	 Catch:{ all -> 0x0177 }
        r13 = r19;
        r14 = r20;
        r12.zza(r13, r14, r9, r11);	 Catch:{ all -> 0x0177 }
        r12 = android.text.TextUtils.isEmpty(r22);	 Catch:{ all -> 0x0177 }
        if (r12 != 0) goto L_0x0065;
    L_0x0057:
        r12 = r23.zzgK();	 Catch:{ all -> 0x0177 }
        if (r12 == 0) goto L_0x0065;
    L_0x005d:
        r12 = "x-afma-drt-cookie";
        r15 = r22;
        r11.addRequestProperty(r12, r15);	 Catch:{ all -> 0x0177 }
        goto L_0x0067;
    L_0x0065:
        r15 = r22;
    L_0x0067:
        r12 = r1.zzSW;	 Catch:{ all -> 0x0177 }
        r16 = android.text.TextUtils.isEmpty(r12);	 Catch:{ all -> 0x0177 }
        if (r16 != 0) goto L_0x0079;
    L_0x006f:
        r3 = "Sending webview cookie in ad request header.";
        com.google.android.gms.internal.zzajc.zzaC(r3);	 Catch:{ all -> 0x0177 }
        r3 = "Cookie";
        r11.addRequestProperty(r3, r12);	 Catch:{ all -> 0x0177 }
    L_0x0079:
        r3 = 1;
        if (r23 == 0) goto L_0x00af;
    L_0x007c:
        r9 = r23.zzgJ();	 Catch:{ all -> 0x0177 }
        r9 = android.text.TextUtils.isEmpty(r9);	 Catch:{ all -> 0x0177 }
        if (r9 != 0) goto L_0x00af;
    L_0x0086:
        r11.setDoOutput(r3);	 Catch:{ all -> 0x0177 }
        r9 = r23.zzgJ();	 Catch:{ all -> 0x0177 }
        r9 = r9.getBytes();	 Catch:{ all -> 0x0177 }
        r3 = r9.length;	 Catch:{ all -> 0x0177 }
        r11.setFixedLengthStreamingMode(r3);	 Catch:{ all -> 0x0177 }
        r3 = new java.io.BufferedOutputStream;	 Catch:{ all -> 0x00a8 }
        r1 = r11.getOutputStream();	 Catch:{ all -> 0x00a8 }
        r3.<init>(r1);	 Catch:{ all -> 0x00a8 }
        r3.write(r9);	 Catch:{ all -> 0x00a5 }
        com.google.android.gms.common.util.zzn.closeQuietly(r3);	 Catch:{ all -> 0x0177 }
        goto L_0x00af;
    L_0x00a5:
        r0 = move-exception;
        r1 = r0;
        goto L_0x00ab;
    L_0x00a8:
        r0 = move-exception;
        r1 = r0;
        r3 = 0;
    L_0x00ab:
        com.google.android.gms.common.util.zzn.closeQuietly(r3);	 Catch:{ all -> 0x0177 }
        throw r1;	 Catch:{ all -> 0x0177 }
    L_0x00af:
        r1 = r11.getResponseCode();	 Catch:{ all -> 0x0177 }
        r3 = r11.getHeaderFields();	 Catch:{ all -> 0x0177 }
        r9 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        r12 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
        if (r1 < r9) goto L_0x00fb;
    L_0x00bd:
        if (r1 >= r12) goto L_0x00fb;
    L_0x00bf:
        r6 = r6.toString();	 Catch:{ all -> 0x0177 }
        r9 = new java.io.InputStreamReader;	 Catch:{ all -> 0x00f4 }
        r10 = r11.getInputStream();	 Catch:{ all -> 0x00f4 }
        r9.<init>(r10);	 Catch:{ all -> 0x00f4 }
        com.google.android.gms.ads.internal.zzbs.zzbz();	 Catch:{ all -> 0x00f1 }
        r10 = com.google.android.gms.internal.zzagz.zza(r9);	 Catch:{ all -> 0x00f1 }
        com.google.android.gms.common.util.zzn.closeQuietly(r9);	 Catch:{ all -> 0x0177 }
        zza(r6, r3, r10, r1);	 Catch:{ all -> 0x0177 }
        r5.zza(r6, r3, r10);	 Catch:{ all -> 0x0177 }
        if (r2 == 0) goto L_0x00e9;
    L_0x00de:
        r1 = 1;
        r1 = new java.lang.String[r1];	 Catch:{ all -> 0x0177 }
        r3 = "ufe";
        r6 = 0;
        r1[r6] = r3;	 Catch:{ all -> 0x0177 }
        r2.zza(r4, r1);	 Catch:{ all -> 0x0177 }
    L_0x00e9:
        r1 = r5.zze(r7);	 Catch:{ all -> 0x0177 }
        r11.disconnect();	 Catch:{ IOException -> 0x017d }
        return r1;
    L_0x00f1:
        r0 = move-exception;
        r1 = r0;
        goto L_0x00f7;
    L_0x00f4:
        r0 = move-exception;
        r1 = r0;
        r9 = 0;
    L_0x00f7:
        com.google.android.gms.common.util.zzn.closeQuietly(r9);	 Catch:{ all -> 0x0177 }
        throw r1;	 Catch:{ all -> 0x0177 }
    L_0x00fb:
        r6 = r6.toString();	 Catch:{ all -> 0x0177 }
        r9 = 0;
        zza(r6, r3, r9, r1);	 Catch:{ all -> 0x0177 }
        if (r1 < r12) goto L_0x0157;
    L_0x0105:
        r6 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        if (r1 >= r6) goto L_0x0157;
    L_0x0109:
        r1 = "Location";
        r1 = r11.getHeaderField(r1);	 Catch:{ all -> 0x0177 }
        r6 = android.text.TextUtils.isEmpty(r1);	 Catch:{ all -> 0x0177 }
        if (r6 == 0) goto L_0x0124;
    L_0x0115:
        r1 = "No location header to follow redirect.";
        com.google.android.gms.internal.zzajc.zzaT(r1);	 Catch:{ all -> 0x0177 }
        r1 = new com.google.android.gms.internal.zzaai;	 Catch:{ all -> 0x0177 }
        r2 = 0;
        r1.<init>(r2);	 Catch:{ all -> 0x0177 }
        r11.disconnect();	 Catch:{ IOException -> 0x017d }
        return r1;
    L_0x0124:
        r6 = new java.net.URL;	 Catch:{ all -> 0x0177 }
        r6.<init>(r1);	 Catch:{ all -> 0x0177 }
        r1 = 1;
        r10 = r10 + r1;
        r1 = com.google.android.gms.internal.zzmo.zzGG;	 Catch:{ all -> 0x0177 }
        r12 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ all -> 0x0177 }
        r1 = r12.zzd(r1);	 Catch:{ all -> 0x0177 }
        r1 = (java.lang.Integer) r1;	 Catch:{ all -> 0x0177 }
        r1 = r1.intValue();	 Catch:{ all -> 0x0177 }
        if (r10 <= r1) goto L_0x014c;
    L_0x013d:
        r1 = "Too many redirects.";
        com.google.android.gms.internal.zzajc.zzaT(r1);	 Catch:{ all -> 0x0177 }
        r1 = new com.google.android.gms.internal.zzaai;	 Catch:{ all -> 0x0177 }
        r2 = 0;
        r1.<init>(r2);	 Catch:{ all -> 0x0177 }
        r11.disconnect();	 Catch:{ IOException -> 0x017d }
        return r1;
    L_0x014c:
        r5.zzh(r3);	 Catch:{ all -> 0x0177 }
        r11.disconnect();	 Catch:{ IOException -> 0x017d }
        r1 = r18;
        r9 = 0;
        goto L_0x0040;
    L_0x0157:
        r2 = 46;
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0177 }
        r3.<init>(r2);	 Catch:{ all -> 0x0177 }
        r2 = "Received error HTTP response code: ";
        r3.append(r2);	 Catch:{ all -> 0x0177 }
        r3.append(r1);	 Catch:{ all -> 0x0177 }
        r1 = r3.toString();	 Catch:{ all -> 0x0177 }
        com.google.android.gms.internal.zzajc.zzaT(r1);	 Catch:{ all -> 0x0177 }
        r1 = new com.google.android.gms.internal.zzaai;	 Catch:{ all -> 0x0177 }
        r2 = 0;
        r1.<init>(r2);	 Catch:{ all -> 0x0177 }
        r11.disconnect();	 Catch:{ IOException -> 0x017d }
        return r1;
    L_0x0177:
        r0 = move-exception;
        r1 = r0;
        r11.disconnect();	 Catch:{ IOException -> 0x017d }
        throw r1;	 Catch:{ IOException -> 0x017d }
    L_0x017d:
        r0 = move-exception;
        r1 = r0;
        r2 = "Error while connecting to ad server: ";
        r1 = r1.getMessage();
        r1 = java.lang.String.valueOf(r1);
        r3 = r1.length();
        if (r3 == 0) goto L_0x0194;
    L_0x018f:
        r1 = r2.concat(r1);
        goto L_0x0199;
    L_0x0194:
        r1 = new java.lang.String;
        r1.<init>(r2);
    L_0x0199:
        com.google.android.gms.internal.zzajc.zzaT(r1);
        r1 = new com.google.android.gms.internal.zzaai;
        r2 = 2;
        r1.<init>(r2);
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzabm.zza(com.google.android.gms.internal.zzaae, android.content.Context, java.lang.String, java.lang.String, java.lang.String, com.google.android.gms.internal.zzaca, com.google.android.gms.internal.zznb, com.google.android.gms.internal.zzabl):com.google.android.gms.internal.zzaai");
    }

    public static zzabm zza(Context context, zzmb zzmb, zzabl zzabl) {
        zzabm zzabm;
        synchronized (zzuF) {
            if (zzUx == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                zzmo.initialize(context);
                zzUx = new zzabm(context, zzmb, zzabl);
            }
            zzabm = zzUx;
        }
        return zzabm;
    }

    private static void zza(String str, Map<String, List<String>> map, String str2, int i) {
        if (zzajc.zzz(2)) {
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 39);
            stringBuilder.append("Http Response: {\n  URL:\n    ");
            stringBuilder.append(str);
            stringBuilder.append("\n  Headers:");
            zzafr.v(stringBuilder.toString());
            if (map != null) {
                for (String str3 : map.keySet()) {
                    StringBuilder stringBuilder2 = new StringBuilder(String.valueOf(str3).length() + 5);
                    stringBuilder2.append("    ");
                    stringBuilder2.append(str3);
                    stringBuilder2.append(":");
                    zzafr.v(stringBuilder2.toString());
                    for (String valueOf : (List) map.get(str3)) {
                        String str4 = "      ";
                        String valueOf2 = String.valueOf(valueOf2);
                        zzafr.v(valueOf2.length() != 0 ? str4.concat(valueOf2) : new String(str4));
                    }
                }
            }
            zzafr.v("  Body:");
            if (str2 != null) {
                int i2 = 0;
                while (i2 < Math.min(str2.length(), 100000)) {
                    int i3 = i2 + 1000;
                    zzafr.v(str2.substring(i2, Math.min(str2.length(), i3)));
                    i2 = i3;
                }
            } else {
                zzafr.v("    null");
            }
            StringBuilder stringBuilder3 = new StringBuilder(34);
            stringBuilder3.append("  Response Code:\n    ");
            stringBuilder3.append(i);
            stringBuilder3.append("\n}");
            zzafr.v(stringBuilder3.toString());
        }
    }

    public final void zza(zzaae zzaae, zzaap zzaap) {
        zzbs.zzbD().zzd(this.mContext, zzaae.zzvT);
        zzajm zza = zzagt.zza(new zzabr(this, zzaae, zzaap));
        zzbs.zzbP().zzie();
        zzbs.zzbP().getHandler().postDelayed(new zzabs(this, zza), 60000);
    }

    public final void zza(zzaax zzaax, zzaas zzaas) {
        zzafr.v("Nonagon code path entered in octagon");
        throw new IllegalArgumentException();
    }

    public final zzaai zzc(zzaae zzaae) {
        return zza(this.mContext, this.zzLG, this.zzUz, this.zzUy, zzaae);
    }
}
