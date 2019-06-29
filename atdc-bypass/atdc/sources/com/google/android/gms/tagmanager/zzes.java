package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.es;
import com.google.android.gms.internal.zzbq;

final class zzes implements Runnable {
    private final Context mContext;
    private volatile String zzbDU;
    private final String zzbDw;
    private final es zzbFT;
    private final String zzbFU;
    private zzdi<zzbq> zzbFV;
    private volatile zzal zzbFW;
    private volatile String zzbFX;

    private zzes(Context context, String str, es esVar, zzal zzal) {
        this.mContext = context;
        this.zzbFT = esVar;
        this.zzbDw = str;
        this.zzbFW = zzal;
        String valueOf = String.valueOf("/r?id=");
        str = String.valueOf(str);
        this.zzbFU = str.length() != 0 ? valueOf.concat(str) : new String(valueOf);
        this.zzbDU = this.zzbFU;
        this.zzbFX = null;
    }

    public zzes(Context context, String str, zzal zzal) {
        this(context, str, new es(), zzal);
    }

    /* JADX WARNING: Unknown top exception splitter block from list: {B:34:0x013e=Splitter:B:34:0x013e, B:58:0x020e=Splitter:B:58:0x020e} */
    /* JADX WARNING: Missing exception handler attribute for start block: B:58:0x020e */
    /* JADX WARNING: Missing exception handler attribute for start block: B:34:0x013e */
    public final void run() {
        /*
        r6 = this;
        r0 = r6.zzbFV;
        if (r0 != 0) goto L_0x000c;
    L_0x0004:
        r0 = new java.lang.IllegalStateException;
        r1 = "callback must be set before execute";
        r0.<init>(r1);
        throw r0;
    L_0x000c:
        r0 = r6.mContext;
        r1 = "connectivity";
        r0 = r0.getSystemService(r1);
        r0 = (android.net.ConnectivityManager) r0;
        r0 = r0.getActiveNetworkInfo();
        if (r0 == 0) goto L_0x0025;
    L_0x001c:
        r0 = r0.isConnected();
        if (r0 != 0) goto L_0x0023;
    L_0x0022:
        goto L_0x0025;
    L_0x0023:
        r0 = 1;
        goto L_0x002b;
    L_0x0025:
        r0 = "...no network connectivity";
        com.google.android.gms.tagmanager.zzdj.v(r0);
        r0 = 0;
    L_0x002b:
        if (r0 != 0) goto L_0x0035;
    L_0x002d:
        r0 = r6.zzbFV;
        r1 = com.google.android.gms.tagmanager.zzda.zzbFh;
        r0.zzbw(r1);
        return;
    L_0x0035:
        r0 = "Start loading resource from network ...";
        com.google.android.gms.tagmanager.zzdj.v(r0);
        r0 = r6.zzbFW;
        r0 = r0.zzAX();
        r0 = java.lang.String.valueOf(r0);
        r1 = r6.zzbDU;
        r2 = "&v=a65833898";
        r2 = java.lang.String.valueOf(r2);
        r3 = java.lang.String.valueOf(r0);
        r3 = r3.length();
        r4 = java.lang.String.valueOf(r1);
        r4 = r4.length();
        r3 = r3 + r4;
        r4 = java.lang.String.valueOf(r2);
        r4 = r4.length();
        r3 = r3 + r4;
        r4 = new java.lang.StringBuilder;
        r4.<init>(r3);
        r4.append(r0);
        r4.append(r1);
        r4.append(r2);
        r0 = r4.toString();
        r1 = r6.zzbFX;
        if (r1 == 0) goto L_0x00c2;
    L_0x007c:
        r1 = r6.zzbFX;
        r1 = r1.trim();
        r2 = "";
        r1 = r1.equals(r2);
        if (r1 != 0) goto L_0x00c2;
    L_0x008a:
        r0 = java.lang.String.valueOf(r0);
        r1 = "&pv=";
        r1 = java.lang.String.valueOf(r1);
        r2 = r6.zzbFX;
        r3 = java.lang.String.valueOf(r0);
        r3 = r3.length();
        r4 = java.lang.String.valueOf(r1);
        r4 = r4.length();
        r3 = r3 + r4;
        r4 = java.lang.String.valueOf(r2);
        r4 = r4.length();
        r3 = r3 + r4;
        r4 = new java.lang.StringBuilder;
        r4.<init>(r3);
        r4.append(r0);
        r4.append(r1);
        r4.append(r2);
        r0 = r4.toString();
    L_0x00c2:
        r1 = com.google.android.gms.tagmanager.zzei.zzBD();
        r1 = r1.zzBE();
        r2 = com.google.android.gms.tagmanager.zzei.zza.CONTAINER_DEBUG;
        r1 = r1.equals(r2);
        if (r1 == 0) goto L_0x00ed;
    L_0x00d2:
        r0 = java.lang.String.valueOf(r0);
        r1 = "&gtm_debug=x";
        r1 = java.lang.String.valueOf(r1);
        r2 = r1.length();
        if (r2 == 0) goto L_0x00e7;
    L_0x00e2:
        r0 = r0.concat(r1);
        goto L_0x00ed;
    L_0x00e7:
        r1 = new java.lang.String;
        r1.<init>(r0);
        r0 = r1;
    L_0x00ed:
        r1 = com.google.android.gms.internal.es.zzDF();
        r2 = 0;
        r3 = r1.zzfU(r0);	 Catch:{ FileNotFoundException -> 0x020e, et -> 0x013e, IOException -> 0x00fb }
        r2 = r3;
        goto L_0x015f;
    L_0x00f8:
        r0 = move-exception;
        goto L_0x024f;
    L_0x00fb:
        r2 = move-exception;
        r3 = r2.getMessage();	 Catch:{ all -> 0x00f8 }
        r3 = java.lang.String.valueOf(r3);	 Catch:{ all -> 0x00f8 }
        r4 = java.lang.String.valueOf(r0);	 Catch:{ all -> 0x00f8 }
        r4 = r4.length();	 Catch:{ all -> 0x00f8 }
        r4 = r4 + 40;
        r5 = java.lang.String.valueOf(r3);	 Catch:{ all -> 0x00f8 }
        r5 = r5.length();	 Catch:{ all -> 0x00f8 }
        r4 = r4 + r5;
        r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00f8 }
        r5.<init>(r4);	 Catch:{ all -> 0x00f8 }
        r4 = "Error when loading resources from url: ";
        r5.append(r4);	 Catch:{ all -> 0x00f8 }
        r5.append(r0);	 Catch:{ all -> 0x00f8 }
        r0 = " ";
        r5.append(r0);	 Catch:{ all -> 0x00f8 }
        r5.append(r3);	 Catch:{ all -> 0x00f8 }
        r0 = r5.toString();	 Catch:{ all -> 0x00f8 }
        com.google.android.gms.tagmanager.zzdj.zzc(r0, r2);	 Catch:{ all -> 0x00f8 }
        r0 = r6.zzbFV;	 Catch:{ all -> 0x00f8 }
        r2 = com.google.android.gms.tagmanager.zzda.zzbFi;	 Catch:{ all -> 0x00f8 }
        r0.zzbw(r2);	 Catch:{ all -> 0x00f8 }
        r1.close();
        return;
    L_0x013e:
        r3 = "Error when loading resource for url: ";
        r4 = java.lang.String.valueOf(r0);	 Catch:{ all -> 0x00f8 }
        r5 = r4.length();	 Catch:{ all -> 0x00f8 }
        if (r5 == 0) goto L_0x014f;
    L_0x014a:
        r3 = r3.concat(r4);	 Catch:{ all -> 0x00f8 }
        goto L_0x0155;
    L_0x014f:
        r4 = new java.lang.String;	 Catch:{ all -> 0x00f8 }
        r4.<init>(r3);	 Catch:{ all -> 0x00f8 }
        r3 = r4;
    L_0x0155:
        com.google.android.gms.tagmanager.zzdj.zzaT(r3);	 Catch:{ all -> 0x00f8 }
        r3 = r6.zzbFV;	 Catch:{ all -> 0x00f8 }
        r4 = com.google.android.gms.tagmanager.zzda.zzbFk;	 Catch:{ all -> 0x00f8 }
        r3.zzbw(r4);	 Catch:{ all -> 0x00f8 }
    L_0x015f:
        r3 = new java.io.ByteArrayOutputStream;	 Catch:{ IOException -> 0x01cb }
        r3.<init>();	 Catch:{ IOException -> 0x01cb }
        com.google.android.gms.internal.eg.zzb(r2, r3);	 Catch:{ IOException -> 0x01cb }
        r2 = r3.toByteArray();	 Catch:{ IOException -> 0x01cb }
        r3 = new com.google.android.gms.internal.zzbq;	 Catch:{ IOException -> 0x01cb }
        r3.<init>();	 Catch:{ IOException -> 0x01cb }
        r2 = com.google.android.gms.internal.adp.zza(r3, r2);	 Catch:{ IOException -> 0x01cb }
        r2 = (com.google.android.gms.internal.zzbq) r2;	 Catch:{ IOException -> 0x01cb }
        r3 = java.lang.String.valueOf(r2);	 Catch:{ IOException -> 0x01cb }
        r4 = java.lang.String.valueOf(r3);	 Catch:{ IOException -> 0x01cb }
        r4 = r4.length();	 Catch:{ IOException -> 0x01cb }
        r4 = r4 + 43;
        r5 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x01cb }
        r5.<init>(r4);	 Catch:{ IOException -> 0x01cb }
        r4 = "Successfully loaded supplemented resource: ";
        r5.append(r4);	 Catch:{ IOException -> 0x01cb }
        r5.append(r3);	 Catch:{ IOException -> 0x01cb }
        r3 = r5.toString();	 Catch:{ IOException -> 0x01cb }
        com.google.android.gms.tagmanager.zzdj.v(r3);	 Catch:{ IOException -> 0x01cb }
        r3 = r2.zzlB;	 Catch:{ IOException -> 0x01cb }
        if (r3 != 0) goto L_0x01bd;
    L_0x019c:
        r3 = r2.zzlA;	 Catch:{ IOException -> 0x01cb }
        r3 = r3.length;	 Catch:{ IOException -> 0x01cb }
        if (r3 != 0) goto L_0x01bd;
    L_0x01a1:
        r3 = "No change for container: ";
        r4 = r6.zzbDw;	 Catch:{ IOException -> 0x01cb }
        r4 = java.lang.String.valueOf(r4);	 Catch:{ IOException -> 0x01cb }
        r5 = r4.length();	 Catch:{ IOException -> 0x01cb }
        if (r5 == 0) goto L_0x01b4;
    L_0x01af:
        r3 = r3.concat(r4);	 Catch:{ IOException -> 0x01cb }
        goto L_0x01ba;
    L_0x01b4:
        r4 = new java.lang.String;	 Catch:{ IOException -> 0x01cb }
        r4.<init>(r3);	 Catch:{ IOException -> 0x01cb }
        r3 = r4;
    L_0x01ba:
        com.google.android.gms.tagmanager.zzdj.v(r3);	 Catch:{ IOException -> 0x01cb }
    L_0x01bd:
        r3 = r6.zzbFV;	 Catch:{ IOException -> 0x01cb }
        r3.onSuccess(r2);	 Catch:{ IOException -> 0x01cb }
        r1.close();
        r0 = "Load resource from network finished.";
        com.google.android.gms.tagmanager.zzdj.v(r0);
        return;
    L_0x01cb:
        r2 = move-exception;
        r3 = r2.getMessage();	 Catch:{ all -> 0x00f8 }
        r3 = java.lang.String.valueOf(r3);	 Catch:{ all -> 0x00f8 }
        r4 = java.lang.String.valueOf(r0);	 Catch:{ all -> 0x00f8 }
        r4 = r4.length();	 Catch:{ all -> 0x00f8 }
        r4 = r4 + 51;
        r5 = java.lang.String.valueOf(r3);	 Catch:{ all -> 0x00f8 }
        r5 = r5.length();	 Catch:{ all -> 0x00f8 }
        r4 = r4 + r5;
        r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00f8 }
        r5.<init>(r4);	 Catch:{ all -> 0x00f8 }
        r4 = "Error when parsing downloaded resources from url: ";
        r5.append(r4);	 Catch:{ all -> 0x00f8 }
        r5.append(r0);	 Catch:{ all -> 0x00f8 }
        r0 = " ";
        r5.append(r0);	 Catch:{ all -> 0x00f8 }
        r5.append(r3);	 Catch:{ all -> 0x00f8 }
        r0 = r5.toString();	 Catch:{ all -> 0x00f8 }
        com.google.android.gms.tagmanager.zzdj.zzc(r0, r2);	 Catch:{ all -> 0x00f8 }
        r0 = r6.zzbFV;	 Catch:{ all -> 0x00f8 }
        r2 = com.google.android.gms.tagmanager.zzda.zzbFj;	 Catch:{ all -> 0x00f8 }
        r0.zzbw(r2);	 Catch:{ all -> 0x00f8 }
        r1.close();
        return;
    L_0x020e:
        r2 = r6.zzbDw;	 Catch:{ all -> 0x00f8 }
        r3 = java.lang.String.valueOf(r0);	 Catch:{ all -> 0x00f8 }
        r3 = r3.length();	 Catch:{ all -> 0x00f8 }
        r3 = r3 + 79;
        r4 = java.lang.String.valueOf(r2);	 Catch:{ all -> 0x00f8 }
        r4 = r4.length();	 Catch:{ all -> 0x00f8 }
        r3 = r3 + r4;
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00f8 }
        r4.<init>(r3);	 Catch:{ all -> 0x00f8 }
        r3 = "No data is retrieved from the given url: ";
        r4.append(r3);	 Catch:{ all -> 0x00f8 }
        r4.append(r0);	 Catch:{ all -> 0x00f8 }
        r0 = ". Make sure container_id: ";
        r4.append(r0);	 Catch:{ all -> 0x00f8 }
        r4.append(r2);	 Catch:{ all -> 0x00f8 }
        r0 = " is correct.";
        r4.append(r0);	 Catch:{ all -> 0x00f8 }
        r0 = r4.toString();	 Catch:{ all -> 0x00f8 }
        com.google.android.gms.tagmanager.zzdj.zzaT(r0);	 Catch:{ all -> 0x00f8 }
        r0 = r6.zzbFV;	 Catch:{ all -> 0x00f8 }
        r2 = com.google.android.gms.tagmanager.zzda.zzbFj;	 Catch:{ all -> 0x00f8 }
        r0.zzbw(r2);	 Catch:{ all -> 0x00f8 }
        r1.close();
        return;
    L_0x024f:
        r1.close();
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzes.run():void");
    }

    /* Access modifiers changed, original: final */
    public final void zza(zzdi<zzbq> zzdi) {
        this.zzbFV = zzdi;
    }

    /* Access modifiers changed, original: final */
    public final void zzfb(String str) {
        if (str == null) {
            str = this.zzbFU;
        } else {
            String str2 = "Setting CTFE URL path: ";
            String valueOf = String.valueOf(str);
            zzdj.zzaC(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        }
        this.zzbDU = str;
    }

    /* Access modifiers changed, original: final */
    public final void zzfr(String str) {
        String str2 = "Setting previous container version: ";
        String valueOf = String.valueOf(str);
        zzdj.zzaC(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        this.zzbFX = str;
    }
}
