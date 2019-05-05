package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.zzbo;

public final class cy implements Runnable {
    private final Context mContext;
    private final cc zzbKT;
    private final cx zzbKU;
    private final cu zzbKV;
    private final cl zzbKt;

    public cy(Context context, cl clVar, cc ccVar) {
        this(context, clVar, ccVar, new cx(), new cu());
    }

    private cy(Context context, cl clVar, cc ccVar, cx cxVar, cu cuVar) {
        this.mContext = (Context) zzbo.zzu(context);
        this.zzbKT = (cc) zzbo.zzu(ccVar);
        this.zzbKt = clVar;
        this.zzbKU = cxVar;
        this.zzbKV = cuVar;
    }

    private final boolean zzbv(String str) {
        return this.mContext.getPackageManager().checkPermission(str, this.mContext.getPackageName()) == 0;
    }

    /* JADX WARNING: Unknown top exception splitter block from list: {B:48:0x0132=Splitter:B:48:0x0132, B:33:0x00bc=Splitter:B:33:0x00bc} */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0043  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x003d  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x003d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0043  */
    /* JADX WARNING: Missing exception handler attribute for start block: B:48:0x0132 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:33:0x00bc */
    public final void run() {
        /*
        r8 = this;
        r0 = "android.permission.INTERNET";
        r0 = r8.zzbv(r0);
        r1 = 1;
        r2 = 0;
        if (r0 != 0) goto L_0x0011;
    L_0x000a:
        r0 = "Missing android.permission.INTERNET. Please add the following declaration to your AndroidManifest.xml: <uses-permission android:name=\"android.permission.INTERNET\" />";
    L_0x000c:
        com.google.android.gms.internal.zzcvk.e(r0);
    L_0x000f:
        r0 = 0;
        goto L_0x003b;
    L_0x0011:
        r0 = "android.permission.ACCESS_NETWORK_STATE";
        r0 = r8.zzbv(r0);
        if (r0 != 0) goto L_0x001c;
    L_0x0019:
        r0 = "Missing android.permission.ACCESS_NETWORK_STATE. Please add the following declaration to your AndroidManifest.xml: <uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />";
        goto L_0x000c;
    L_0x001c:
        r0 = r8.mContext;
        r3 = "connectivity";
        r0 = r0.getSystemService(r3);
        r0 = (android.net.ConnectivityManager) r0;
        r0 = r0.getActiveNetworkInfo();
        if (r0 == 0) goto L_0x0035;
    L_0x002c:
        r0 = r0.isConnected();
        if (r0 != 0) goto L_0x0033;
    L_0x0032:
        goto L_0x0035;
    L_0x0033:
        r0 = 1;
        goto L_0x003b;
    L_0x0035:
        r0 = "No network connectivity - Offline";
        com.google.android.gms.internal.zzcvk.zzaT(r0);
        goto L_0x000f;
    L_0x003b:
        if (r0 != 0) goto L_0x0043;
    L_0x003d:
        r0 = r8.zzbKT;
        r0.zzk(r2, r2);
        return;
    L_0x0043:
        r0 = "Starting to load resource from Network.";
        com.google.android.gms.internal.zzcvk.v(r0);
        r0 = new com.google.android.gms.internal.cv;
        r0.<init>();
        r3 = 0;
        r4 = r8.zzbKV;	 Catch:{ all -> 0x0155 }
        r5 = r8.zzbKt;	 Catch:{ all -> 0x0155 }
        r5 = r5.zzCP();	 Catch:{ all -> 0x0155 }
        r4 = r4.zzb(r5);	 Catch:{ all -> 0x0155 }
        r5 = "Loading resource from ";
        r6 = java.lang.String.valueOf(r4);	 Catch:{ all -> 0x0155 }
        r7 = r6.length();	 Catch:{ all -> 0x0155 }
        if (r7 == 0) goto L_0x006b;
    L_0x0066:
        r5 = r5.concat(r6);	 Catch:{ all -> 0x0155 }
        goto L_0x0071;
    L_0x006b:
        r6 = new java.lang.String;	 Catch:{ all -> 0x0155 }
        r6.<init>(r5);	 Catch:{ all -> 0x0155 }
        r5 = r6;
    L_0x0071:
        com.google.android.gms.internal.zzcvk.v(r5);	 Catch:{ all -> 0x0155 }
        r5 = 2;
        r6 = r0.zzfU(r4);	 Catch:{ FileNotFoundException -> 0x0132, da -> 0x00bc, IOException -> 0x007b }
        r3 = r6;
        goto L_0x00dc;
    L_0x007b:
        r3 = move-exception;
        r5 = r3.getMessage();	 Catch:{ all -> 0x0155 }
        r5 = java.lang.String.valueOf(r5);	 Catch:{ all -> 0x0155 }
        r6 = java.lang.String.valueOf(r4);	 Catch:{ all -> 0x0155 }
        r6 = r6.length();	 Catch:{ all -> 0x0155 }
        r6 = r6 + 54;
        r7 = java.lang.String.valueOf(r5);	 Catch:{ all -> 0x0155 }
        r7 = r7.length();	 Catch:{ all -> 0x0155 }
        r6 = r6 + r7;
        r7 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0155 }
        r7.<init>(r6);	 Catch:{ all -> 0x0155 }
        r6 = "NetworkLoader: Error when loading resource from url: ";
        r7.append(r6);	 Catch:{ all -> 0x0155 }
        r7.append(r4);	 Catch:{ all -> 0x0155 }
        r4 = " ";
        r7.append(r4);	 Catch:{ all -> 0x0155 }
        r7.append(r5);	 Catch:{ all -> 0x0155 }
        r4 = r7.toString();	 Catch:{ all -> 0x0155 }
        com.google.android.gms.internal.zzcvk.zzb(r4, r3);	 Catch:{ all -> 0x0155 }
        r3 = r8.zzbKT;	 Catch:{ all -> 0x0155 }
        r3.zzk(r1, r2);	 Catch:{ all -> 0x0155 }
        r0.close();
        return;
    L_0x00bc:
        r1 = "NetworkLoader: Error when loading resource for url: ";
        r6 = java.lang.String.valueOf(r4);	 Catch:{ all -> 0x0155 }
        r7 = r6.length();	 Catch:{ all -> 0x0155 }
        if (r7 == 0) goto L_0x00cd;
    L_0x00c8:
        r1 = r1.concat(r6);	 Catch:{ all -> 0x0155 }
        goto L_0x00d3;
    L_0x00cd:
        r6 = new java.lang.String;	 Catch:{ all -> 0x0155 }
        r6.<init>(r1);	 Catch:{ all -> 0x0155 }
        r1 = r6;
    L_0x00d3:
        com.google.android.gms.internal.zzcvk.e(r1);	 Catch:{ all -> 0x0155 }
        r1 = r8.zzbKT;	 Catch:{ all -> 0x0155 }
        r6 = 3;
        r1.zzk(r6, r2);	 Catch:{ all -> 0x0155 }
    L_0x00dc:
        r1 = new java.io.ByteArrayOutputStream;	 Catch:{ IOException -> 0x00f1 }
        r1.<init>();	 Catch:{ IOException -> 0x00f1 }
        com.google.android.gms.common.util.zzn.zza(r3, r1, r2);	 Catch:{ IOException -> 0x00f1 }
        r3 = r8.zzbKT;	 Catch:{ IOException -> 0x00f1 }
        r1 = r1.toByteArray();	 Catch:{ IOException -> 0x00f1 }
        r3.zzv(r1);	 Catch:{ IOException -> 0x00f1 }
        r0.close();
        return;
    L_0x00f1:
        r1 = move-exception;
        r3 = r1.getMessage();	 Catch:{ all -> 0x0155 }
        r3 = java.lang.String.valueOf(r3);	 Catch:{ all -> 0x0155 }
        r6 = java.lang.String.valueOf(r4);	 Catch:{ all -> 0x0155 }
        r6 = r6.length();	 Catch:{ all -> 0x0155 }
        r6 = r6 + 66;
        r7 = java.lang.String.valueOf(r3);	 Catch:{ all -> 0x0155 }
        r7 = r7.length();	 Catch:{ all -> 0x0155 }
        r6 = r6 + r7;
        r7 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0155 }
        r7.<init>(r6);	 Catch:{ all -> 0x0155 }
        r6 = "NetworkLoader: Error when parsing downloaded resources from url: ";
        r7.append(r6);	 Catch:{ all -> 0x0155 }
        r7.append(r4);	 Catch:{ all -> 0x0155 }
        r4 = " ";
        r7.append(r4);	 Catch:{ all -> 0x0155 }
        r7.append(r3);	 Catch:{ all -> 0x0155 }
        r3 = r7.toString();	 Catch:{ all -> 0x0155 }
        com.google.android.gms.internal.zzcvk.zzb(r3, r1);	 Catch:{ all -> 0x0155 }
        r1 = r8.zzbKT;	 Catch:{ all -> 0x0155 }
        r1.zzk(r5, r2);	 Catch:{ all -> 0x0155 }
        r0.close();
        return;
    L_0x0132:
        r1 = "NetworkLoader: No data was retrieved from the given url: ";
        r3 = java.lang.String.valueOf(r4);	 Catch:{ all -> 0x0155 }
        r4 = r3.length();	 Catch:{ all -> 0x0155 }
        if (r4 == 0) goto L_0x0143;
    L_0x013e:
        r1 = r1.concat(r3);	 Catch:{ all -> 0x0155 }
        goto L_0x0149;
    L_0x0143:
        r3 = new java.lang.String;	 Catch:{ all -> 0x0155 }
        r3.<init>(r1);	 Catch:{ all -> 0x0155 }
        r1 = r3;
    L_0x0149:
        com.google.android.gms.internal.zzcvk.e(r1);	 Catch:{ all -> 0x0155 }
        r1 = r8.zzbKT;	 Catch:{ all -> 0x0155 }
        r1.zzk(r5, r2);	 Catch:{ all -> 0x0155 }
        r0.close();
        return;
    L_0x0155:
        r1 = move-exception;
        r0.close();
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cy.run():void");
    }
}
