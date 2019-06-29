package com.google.android.gms.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Locale;

final class zzcwj implements zzcus {
    private final Context mContext;
    private final String zzJP;
    private final zzcwm zzbJc;
    private final zzcwl zzbJd;

    zzcwj(Context context, zzcwl zzcwl) {
        this(new zzcwk(), context, zzcwl);
    }

    private zzcwj(zzcwm zzcwm, Context context, zzcwl zzcwl) {
        this.zzbJc = zzcwm;
        this.mContext = context.getApplicationContext();
        this.zzbJd = zzcwl;
        String str = "GoogleTagManager";
        String str2 = "5.05";
        String str3 = VERSION.RELEASE;
        Locale locale = Locale.getDefault();
        String str4 = null;
        if (!(locale == null || locale.getLanguage() == null || locale.getLanguage().length() == 0)) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(locale.getLanguage().toLowerCase());
            if (!(locale.getCountry() == null || locale.getCountry().length() == 0)) {
                stringBuilder.append("-");
                stringBuilder.append(locale.getCountry().toLowerCase());
            }
            str4 = stringBuilder.toString();
        }
        String str5 = Build.MODEL;
        String str6 = Build.ID;
        this.zzJP = String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", new Object[]{str, str2, str3, str4, str5, str6});
    }

    private static URL zzd(zzcuw zzcuw) {
        try {
            return new URL(zzcuw.zzBo());
        } catch (MalformedURLException unused) {
            zzcvk.e("Error trying to parse the GTM url.");
            return null;
        }
    }

    public final boolean zzBf() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.mContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        zzcvk.v("...no network connectivity");
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:56:0x0114 A:{Catch:{ all -> 0x01c8, all -> 0x0047 }} */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x013e A:{Catch:{ all -> 0x01c8, all -> 0x0047 }} */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0115 A:{Catch:{ all -> 0x01c8, all -> 0x0047 }} */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x01d4 A:{Catch:{ all -> 0x01c8, all -> 0x0047 }} */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x015a A:{Catch:{ all -> 0x01c8, all -> 0x0047 }} */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x0217 A:{SYNTHETIC, Splitter:B:90:0x0217} */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x0114 A:{Catch:{ all -> 0x01c8, all -> 0x0047 }} */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x013e A:{Catch:{ all -> 0x01c8, all -> 0x0047 }} */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0115 A:{Catch:{ all -> 0x01c8, all -> 0x0047 }} */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x015a A:{Catch:{ all -> 0x01c8, all -> 0x0047 }} */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x01d4 A:{Catch:{ all -> 0x01c8, all -> 0x0047 }} */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x0217 A:{SYNTHETIC, Splitter:B:90:0x0217} */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x0114 A:{Catch:{ all -> 0x01c8, all -> 0x0047 }} */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x013e A:{Catch:{ all -> 0x01c8, all -> 0x0047 }} */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0115 A:{Catch:{ all -> 0x01c8, all -> 0x0047 }} */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x01d4 A:{Catch:{ all -> 0x01c8, all -> 0x0047 }} */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x015a A:{Catch:{ all -> 0x01c8, all -> 0x0047 }} */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x0217 A:{SYNTHETIC, Splitter:B:90:0x0217} */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x0114 A:{Catch:{ all -> 0x01c8, all -> 0x0047 }} */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x013e A:{Catch:{ all -> 0x01c8, all -> 0x0047 }} */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0115 A:{Catch:{ all -> 0x01c8, all -> 0x0047 }} */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x015a A:{Catch:{ all -> 0x01c8, all -> 0x0047 }} */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x01d4 A:{Catch:{ all -> 0x01c8, all -> 0x0047 }} */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x0217 A:{SYNTHETIC, Splitter:B:90:0x0217} */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x01d0 A:{Catch:{ all -> 0x01c8, all -> 0x0047 }} */
    /* JADX WARNING: Removed duplicated region for block: B:107:0x0228 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0222 A:{SYNTHETIC, Splitter:B:95:0x0222} */
    public final void zzK(java.util.List<com.google.android.gms.internal.zzcuw> r18) {
        /*
        r17 = this;
        r1 = r17;
        r2 = r18.size();
        r3 = 40;
        r2 = java.lang.Math.min(r2, r3);
        r3 = 0;
        r4 = 1;
        r5 = 0;
        r6 = 1;
    L_0x0010:
        if (r5 >= r2) goto L_0x027f;
    L_0x0012:
        r7 = r18;
        r8 = r7.get(r5);
        r8 = (com.google.android.gms.internal.zzcuw) r8;
        r9 = zzd(r8);
        r10 = r8.zzCo();
        r11 = r8.zzCp();
        r12 = r8.zzCq();
        if (r9 != 0) goto L_0x0038;
    L_0x002c:
        r9 = "No destination: discarding hit.";
        com.google.android.gms.internal.zzcvk.zzaT(r9);
        r9 = r1.zzbJd;
        r9.zzb(r8);
        goto L_0x027b;
    L_0x0038:
        r13 = r1.zzbJc;	 Catch:{ IOException -> 0x022c }
        r13 = r13.zzc(r9);	 Catch:{ IOException -> 0x022c }
        if (r6 == 0) goto L_0x004d;
    L_0x0040:
        r15 = r1.mContext;	 Catch:{ all -> 0x0047 }
        com.google.android.gms.internal.zzcvm.zzbt(r15);	 Catch:{ all -> 0x0047 }
        r6 = 0;
        goto L_0x004d;
    L_0x0047:
        r0 = move-exception;
        r10 = r6;
        r14 = 0;
    L_0x004a:
        r6 = r0;
        goto L_0x0220;
    L_0x004d:
        r15 = "User-Agent";
        r14 = r1.zzJP;	 Catch:{ all -> 0x0047 }
        r13.setRequestProperty(r15, r14);	 Catch:{ all -> 0x0047 }
        if (r11 == 0) goto L_0x007a;
    L_0x0056:
        r11 = r11.entrySet();	 Catch:{ all -> 0x0047 }
        r11 = r11.iterator();	 Catch:{ all -> 0x0047 }
    L_0x005e:
        r14 = r11.hasNext();	 Catch:{ all -> 0x0047 }
        if (r14 == 0) goto L_0x007a;
    L_0x0064:
        r14 = r11.next();	 Catch:{ all -> 0x0047 }
        r14 = (java.util.Map.Entry) r14;	 Catch:{ all -> 0x0047 }
        r15 = r14.getKey();	 Catch:{ all -> 0x0047 }
        r15 = (java.lang.String) r15;	 Catch:{ all -> 0x0047 }
        r14 = r14.getValue();	 Catch:{ all -> 0x0047 }
        r14 = (java.lang.String) r14;	 Catch:{ all -> 0x0047 }
        r13.setRequestProperty(r15, r14);	 Catch:{ all -> 0x0047 }
        goto L_0x005e;
    L_0x007a:
        if (r10 != 0) goto L_0x009b;
    L_0x007c:
        r10 = "Hit %d retrieved from the store has null HTTP method.";
        r11 = new java.lang.Object[r4];	 Catch:{ all -> 0x0047 }
        r14 = r8.zzBm();	 Catch:{ all -> 0x0047 }
        r12 = java.lang.Long.valueOf(r14);	 Catch:{ all -> 0x0047 }
        r11[r3] = r12;	 Catch:{ all -> 0x0047 }
        r10 = java.lang.String.format(r10, r11);	 Catch:{ all -> 0x0047 }
        com.google.android.gms.internal.zzcvk.zzaT(r10);	 Catch:{ all -> 0x0047 }
        r10 = r1.zzbJd;	 Catch:{ all -> 0x0047 }
        r10.zzb(r8);	 Catch:{ all -> 0x0047 }
    L_0x0096:
        r13.disconnect();	 Catch:{ IOException -> 0x022c }
        goto L_0x027b;
    L_0x009b:
        r11 = "GET";
        r11 = r10.equals(r11);	 Catch:{ all -> 0x0047 }
        if (r11 != 0) goto L_0x00ce;
    L_0x00a3:
        r11 = "HEAD";
        r11 = r10.equals(r11);	 Catch:{ all -> 0x0047 }
        if (r11 != 0) goto L_0x00ce;
    L_0x00ab:
        r11 = "POST";
        r11 = r10.equals(r11);	 Catch:{ all -> 0x0047 }
        if (r11 != 0) goto L_0x00ce;
    L_0x00b3:
        r11 = "PUT";
        r11 = r10.equals(r11);	 Catch:{ all -> 0x0047 }
        if (r11 != 0) goto L_0x00ce;
    L_0x00bb:
        r11 = "Unrecongnized HTTP method %s. Supported methods are GET, HEAD, PUT and/or POST";
        r12 = new java.lang.Object[r4];	 Catch:{ all -> 0x0047 }
        r12[r3] = r10;	 Catch:{ all -> 0x0047 }
        r10 = java.lang.String.format(r11, r12);	 Catch:{ all -> 0x0047 }
        com.google.android.gms.internal.zzcvk.zzaT(r10);	 Catch:{ all -> 0x0047 }
        r10 = r1.zzbJd;	 Catch:{ all -> 0x0047 }
        r10.zzb(r8);	 Catch:{ all -> 0x0047 }
        goto L_0x0096;
    L_0x00ce:
        r14 = r10.hashCode();	 Catch:{ all -> 0x0047 }
        r15 = 70454; // 0x11336 float:9.8727E-41 double:3.4809E-319;
        r11 = 2;
        if (r14 == r15) goto L_0x0106;
    L_0x00d8:
        r15 = 79599; // 0x136ef float:1.11542E-40 double:3.9327E-319;
        if (r14 == r15) goto L_0x00fc;
    L_0x00dd:
        r15 = 2213344; // 0x21c5e0 float:3.101556E-39 double:1.093537E-317;
        if (r14 == r15) goto L_0x00f2;
    L_0x00e2:
        r15 = 2461856; // 0x2590a0 float:3.449795E-39 double:1.2163185E-317;
        if (r14 == r15) goto L_0x00e8;
    L_0x00e7:
        goto L_0x0110;
    L_0x00e8:
        r14 = "POST";
        r14 = r10.equals(r14);	 Catch:{ all -> 0x0047 }
        if (r14 == 0) goto L_0x0110;
    L_0x00f0:
        r14 = 2;
        goto L_0x0111;
    L_0x00f2:
        r14 = "HEAD";
        r14 = r10.equals(r14);	 Catch:{ all -> 0x0047 }
        if (r14 == 0) goto L_0x0110;
    L_0x00fa:
        r14 = 1;
        goto L_0x0111;
    L_0x00fc:
        r14 = "PUT";
        r14 = r10.equals(r14);	 Catch:{ all -> 0x0047 }
        if (r14 == 0) goto L_0x0110;
    L_0x0104:
        r14 = 3;
        goto L_0x0111;
    L_0x0106:
        r14 = "GET";
        r14 = r10.equals(r14);	 Catch:{ all -> 0x0047 }
        if (r14 == 0) goto L_0x0110;
    L_0x010e:
        r14 = 0;
        goto L_0x0111;
    L_0x0110:
        r14 = -1;
    L_0x0111:
        switch(r14) {
            case 0: goto L_0x013e;
            case 1: goto L_0x013e;
            case 2: goto L_0x0115;
            case 3: goto L_0x0115;
            default: goto L_0x0114;
        };	 Catch:{ all -> 0x0047 }
    L_0x0114:
        goto L_0x0152;
    L_0x0115:
        r13.setRequestMethod(r10);	 Catch:{ all -> 0x0047 }
        if (r12 == 0) goto L_0x0152;
    L_0x011a:
        r13.setDoOutput(r4);	 Catch:{ all -> 0x0047 }
        r11 = "UTF-8";
        r11 = java.nio.charset.Charset.forName(r11);	 Catch:{ all -> 0x0047 }
        r11 = r12.getBytes(r11);	 Catch:{ all -> 0x0047 }
        r12 = r11.length;	 Catch:{ all -> 0x0047 }
        r13.setFixedLengthStreamingMode(r12);	 Catch:{ all -> 0x0047 }
        r12 = new java.io.BufferedOutputStream;	 Catch:{ all -> 0x0047 }
        r14 = r13.getOutputStream();	 Catch:{ all -> 0x0047 }
        r12.<init>(r14);	 Catch:{ all -> 0x0047 }
        r12.write(r11);	 Catch:{ all -> 0x0047 }
        r12.flush();	 Catch:{ all -> 0x0047 }
        r12.close();	 Catch:{ all -> 0x0047 }
        goto L_0x0152;
    L_0x013e:
        if (r12 == 0) goto L_0x014f;
    L_0x0140:
        r14 = "Body of %s hit is ignored: %s.";
        r11 = new java.lang.Object[r11];	 Catch:{ all -> 0x0047 }
        r11[r3] = r10;	 Catch:{ all -> 0x0047 }
        r11[r4] = r12;	 Catch:{ all -> 0x0047 }
        r11 = java.lang.String.format(r14, r11);	 Catch:{ all -> 0x0047 }
        com.google.android.gms.internal.zzcvk.zzaT(r11);	 Catch:{ all -> 0x0047 }
    L_0x014f:
        r13.setRequestMethod(r10);	 Catch:{ all -> 0x0047 }
    L_0x0152:
        r11 = r13.getResponseCode();	 Catch:{ all -> 0x0047 }
        r12 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r11 == r12) goto L_0x01d4;
    L_0x015a:
        r10 = java.lang.String.valueOf(r9);	 Catch:{ all -> 0x0047 }
        r12 = java.lang.String.valueOf(r10);	 Catch:{ all -> 0x0047 }
        r12 = r12.length();	 Catch:{ all -> 0x0047 }
        r12 = r12 + 39;
        r14 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0047 }
        r14.<init>(r12);	 Catch:{ all -> 0x0047 }
        r12 = "Bad response received for ";
        r14.append(r12);	 Catch:{ all -> 0x0047 }
        r14.append(r10);	 Catch:{ all -> 0x0047 }
        r10 = ": ";
        r14.append(r10);	 Catch:{ all -> 0x0047 }
        r14.append(r11);	 Catch:{ all -> 0x0047 }
        r10 = r14.toString();	 Catch:{ all -> 0x0047 }
        com.google.android.gms.internal.zzcvk.zzaT(r10);	 Catch:{ all -> 0x0047 }
        r10 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0047 }
        r10.<init>();	 Catch:{ all -> 0x0047 }
        r14 = new java.io.BufferedReader;	 Catch:{ all -> 0x01cb }
        r11 = new java.io.InputStreamReader;	 Catch:{ all -> 0x01cb }
        r12 = r13.getErrorStream();	 Catch:{ all -> 0x01cb }
        r11.<init>(r12);	 Catch:{ all -> 0x01cb }
        r14.<init>(r11);	 Catch:{ all -> 0x01cb }
    L_0x0197:
        r11 = r14.readLine();	 Catch:{ all -> 0x01c8 }
        if (r11 == 0) goto L_0x01a1;
    L_0x019d:
        r10.append(r11);	 Catch:{ all -> 0x01c8 }
        goto L_0x0197;
    L_0x01a1:
        r11 = "Error Message: ";
        r10 = r10.toString();	 Catch:{ all -> 0x01c8 }
        r10 = java.lang.String.valueOf(r10);	 Catch:{ all -> 0x01c8 }
        r12 = r10.length();	 Catch:{ all -> 0x01c8 }
        if (r12 == 0) goto L_0x01b6;
    L_0x01b1:
        r10 = r11.concat(r10);	 Catch:{ all -> 0x01c8 }
        goto L_0x01bb;
    L_0x01b6:
        r10 = new java.lang.String;	 Catch:{ all -> 0x01c8 }
        r10.<init>(r11);	 Catch:{ all -> 0x01c8 }
    L_0x01bb:
        com.google.android.gms.internal.zzcvk.zzaT(r10);	 Catch:{ all -> 0x01c8 }
        r14.close();	 Catch:{ all -> 0x0047 }
        r10 = r1.zzbJd;	 Catch:{ all -> 0x0047 }
        r10.zzc(r8);	 Catch:{ all -> 0x0047 }
        r14 = 0;
        goto L_0x0215;
    L_0x01c8:
        r0 = move-exception;
        r10 = r0;
        goto L_0x01ce;
    L_0x01cb:
        r0 = move-exception;
        r10 = r0;
        r14 = 0;
    L_0x01ce:
        if (r14 == 0) goto L_0x01d3;
    L_0x01d0:
        r14.close();	 Catch:{ all -> 0x0047 }
    L_0x01d3:
        throw r10;	 Catch:{ all -> 0x0047 }
    L_0x01d4:
        r14 = r13.getInputStream();	 Catch:{ all -> 0x0047 }
        r11 = java.lang.String.valueOf(r9);	 Catch:{ all -> 0x021c }
        r12 = java.lang.String.valueOf(r11);	 Catch:{ all -> 0x021c }
        r12 = r12.length();	 Catch:{ all -> 0x021c }
        r12 = r12 + 23;
        r15 = java.lang.String.valueOf(r10);	 Catch:{ all -> 0x021c }
        r15 = r15.length();	 Catch:{ all -> 0x021c }
        r12 = r12 + r15;
        r15 = new java.lang.StringBuilder;	 Catch:{ all -> 0x021c }
        r15.<init>(r12);	 Catch:{ all -> 0x021c }
        r12 = "Hit sent to ";
        r15.append(r12);	 Catch:{ all -> 0x021c }
        r15.append(r11);	 Catch:{ all -> 0x021c }
        r11 = "(method = ";
        r15.append(r11);	 Catch:{ all -> 0x021c }
        r15.append(r10);	 Catch:{ all -> 0x021c }
        r10 = ")";
        r15.append(r10);	 Catch:{ all -> 0x021c }
        r10 = r15.toString();	 Catch:{ all -> 0x021c }
        com.google.android.gms.internal.zzcvk.v(r10);	 Catch:{ all -> 0x021c }
        r10 = r1.zzbJd;	 Catch:{ all -> 0x021c }
        r10.zza(r8);	 Catch:{ all -> 0x021c }
    L_0x0215:
        if (r14 == 0) goto L_0x0096;
    L_0x0217:
        r14.close();	 Catch:{ IOException -> 0x022c }
        goto L_0x0096;
    L_0x021c:
        r0 = move-exception;
        r10 = r6;
        goto L_0x004a;
    L_0x0220:
        if (r14 == 0) goto L_0x0228;
    L_0x0222:
        r14.close();	 Catch:{ IOException -> 0x0226 }
        goto L_0x0228;
    L_0x0226:
        r0 = move-exception;
        goto L_0x022e;
    L_0x0228:
        r13.disconnect();	 Catch:{ IOException -> 0x0226 }
        throw r6;	 Catch:{ IOException -> 0x0226 }
    L_0x022c:
        r0 = move-exception;
        r10 = r6;
    L_0x022e:
        r6 = r0;
        r9 = java.lang.String.valueOf(r9);
        r11 = r6.getClass();
        r11 = r11.getSimpleName();
        r11 = java.lang.String.valueOf(r11);
        r12 = java.lang.String.valueOf(r9);
        r12 = r12.length();
        r12 = r12 + 27;
        r13 = java.lang.String.valueOf(r11);
        r13 = r13.length();
        r12 = r12 + r13;
        r13 = new java.lang.StringBuilder;
        r13.<init>(r12);
        r12 = "Exception sending hit to ";
        r13.append(r12);
        r13.append(r9);
        r9 = ": ";
        r13.append(r9);
        r13.append(r11);
        r9 = r13.toString();
        com.google.android.gms.internal.zzcvk.zzaT(r9);
        r6 = r6.getMessage();
        com.google.android.gms.internal.zzcvk.zzaT(r6);
        r6 = r1.zzbJd;
        r6.zzc(r8);
        r6 = r10;
    L_0x027b:
        r5 = r5 + 1;
        goto L_0x0010;
    L_0x027f:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcwj.zzK(java.util.List):void");
    }
}
