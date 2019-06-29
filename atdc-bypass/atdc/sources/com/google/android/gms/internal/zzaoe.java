package com.google.android.gms.internal;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import com.androidnetworking.common.ANConstants;
import com.bumptech.glide.load.Key;
import com.google.android.gms.analytics.zzl;
import com.google.android.gms.common.internal.zzbo;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map.Entry;

final class zzaoe extends zzamh {
    private static final byte[] zzait = "\n".getBytes();
    private final String zzJP;
    private final zzaoo zzais;

    zzaoe(zzamj zzamj) {
        super(zzamj);
        String str = zzami.VERSION;
        String str2 = VERSION.RELEASE;
        String zza = zzaos.zza(Locale.getDefault());
        String str3 = Build.MODEL;
        String str4 = Build.ID;
        this.zzJP = String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", new Object[]{"GoogleAnalytics", str, str2, zza, str3, str4});
        this.zzais = new zzaoo(zzamj.zzkq());
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0045  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x004c  */
    private final int zza(java.net.URL r5) {
        /*
        r4 = this;
        com.google.android.gms.common.internal.zzbo.zzu(r5);
        r0 = "GET request";
        r4.zzb(r0, r5);
        r0 = 0;
        r5 = r4.zzb(r5);	 Catch:{ IOException -> 0x003a, all -> 0x0035 }
        r5.connect();	 Catch:{ IOException -> 0x0033 }
        r4.zzb(r5);	 Catch:{ IOException -> 0x0033 }
        r0 = r5.getResponseCode();	 Catch:{ IOException -> 0x0033 }
        r1 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r0 != r1) goto L_0x0022;
    L_0x001b:
        r1 = r4.zzkv();	 Catch:{ IOException -> 0x0033 }
        r1.zzko();	 Catch:{ IOException -> 0x0033 }
    L_0x0022:
        r1 = "GET status";
        r2 = java.lang.Integer.valueOf(r0);	 Catch:{ IOException -> 0x0033 }
        r4.zzb(r1, r2);	 Catch:{ IOException -> 0x0033 }
        if (r5 == 0) goto L_0x0030;
    L_0x002d:
        r5.disconnect();
    L_0x0030:
        return r0;
    L_0x0031:
        r0 = move-exception;
        goto L_0x004a;
    L_0x0033:
        r0 = move-exception;
        goto L_0x003e;
    L_0x0035:
        r5 = move-exception;
        r3 = r0;
        r0 = r5;
        r5 = r3;
        goto L_0x004a;
    L_0x003a:
        r5 = move-exception;
        r3 = r0;
        r0 = r5;
        r5 = r3;
    L_0x003e:
        r1 = "Network GET connection error";
        r4.zzd(r1, r0);	 Catch:{ all -> 0x0031 }
        if (r5 == 0) goto L_0x0048;
    L_0x0045:
        r5.disconnect();
    L_0x0048:
        r5 = 0;
        return r5;
    L_0x004a:
        if (r5 == 0) goto L_0x004f;
    L_0x004c:
        r5.disconnect();
    L_0x004f:
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaoe.zza(java.net.URL):int");
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x007f A:{SYNTHETIC, Splitter:B:34:0x007f} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x008b  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0093 A:{SYNTHETIC, Splitter:B:44:0x0093} */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x009f  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x007f A:{SYNTHETIC, Splitter:B:34:0x007f} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x008b  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0093 A:{SYNTHETIC, Splitter:B:44:0x0093} */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x009f  */
    private final int zza(java.net.URL r4, byte[] r5) {
        /*
        r3 = this;
        com.google.android.gms.common.internal.zzbo.zzu(r4);
        com.google.android.gms.common.internal.zzbo.zzu(r5);
        r0 = "POST bytes, url";
        r1 = r5.length;
        r1 = java.lang.Integer.valueOf(r1);
        r3.zzb(r0, r1, r4);
        r0 = com.google.android.gms.internal.zzamg.zzhM();
        if (r0 == 0) goto L_0x0020;
    L_0x0016:
        r0 = "Post payload\n";
        r1 = new java.lang.String;
        r1.<init>(r5);
        r3.zza(r0, r1);
    L_0x0020:
        r0 = 0;
        r1 = r3.getContext();	 Catch:{ IOException -> 0x0076, all -> 0x0073 }
        r1.getPackageName();	 Catch:{ IOException -> 0x0076, all -> 0x0073 }
        r4 = r3.zzb(r4);	 Catch:{ IOException -> 0x0076, all -> 0x0073 }
        r1 = 1;
        r4.setDoOutput(r1);	 Catch:{ IOException -> 0x0071 }
        r1 = r5.length;	 Catch:{ IOException -> 0x0071 }
        r4.setFixedLengthStreamingMode(r1);	 Catch:{ IOException -> 0x0071 }
        r4.connect();	 Catch:{ IOException -> 0x0071 }
        r1 = r4.getOutputStream();	 Catch:{ IOException -> 0x0071 }
        r1.write(r5);	 Catch:{ IOException -> 0x006e, all -> 0x006b }
        r3.zzb(r4);	 Catch:{ IOException -> 0x006e, all -> 0x006b }
        r5 = r4.getResponseCode();	 Catch:{ IOException -> 0x006e, all -> 0x006b }
        r0 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r5 != r0) goto L_0x0050;
    L_0x0049:
        r0 = r3.zzkv();	 Catch:{ IOException -> 0x006e, all -> 0x006b }
        r0.zzko();	 Catch:{ IOException -> 0x006e, all -> 0x006b }
    L_0x0050:
        r0 = "POST status";
        r2 = java.lang.Integer.valueOf(r5);	 Catch:{ IOException -> 0x006e, all -> 0x006b }
        r3.zzb(r0, r2);	 Catch:{ IOException -> 0x006e, all -> 0x006b }
        if (r1 == 0) goto L_0x0065;
    L_0x005b:
        r1.close();	 Catch:{ IOException -> 0x005f }
        goto L_0x0065;
    L_0x005f:
        r0 = move-exception;
        r1 = "Error closing http post connection output stream";
        r3.zze(r1, r0);
    L_0x0065:
        if (r4 == 0) goto L_0x006a;
    L_0x0067:
        r4.disconnect();
    L_0x006a:
        return r5;
    L_0x006b:
        r5 = move-exception;
        r0 = r1;
        goto L_0x0091;
    L_0x006e:
        r5 = move-exception;
        r0 = r1;
        goto L_0x0078;
    L_0x0071:
        r5 = move-exception;
        goto L_0x0078;
    L_0x0073:
        r5 = move-exception;
        r4 = r0;
        goto L_0x0091;
    L_0x0076:
        r5 = move-exception;
        r4 = r0;
    L_0x0078:
        r1 = "Network POST connection error";
        r3.zzd(r1, r5);	 Catch:{ all -> 0x0090 }
        if (r0 == 0) goto L_0x0089;
    L_0x007f:
        r0.close();	 Catch:{ IOException -> 0x0083 }
        goto L_0x0089;
    L_0x0083:
        r5 = move-exception;
        r0 = "Error closing http post connection output stream";
        r3.zze(r0, r5);
    L_0x0089:
        if (r4 == 0) goto L_0x008e;
    L_0x008b:
        r4.disconnect();
    L_0x008e:
        r4 = 0;
        return r4;
    L_0x0090:
        r5 = move-exception;
    L_0x0091:
        if (r0 == 0) goto L_0x009d;
    L_0x0093:
        r0.close();	 Catch:{ IOException -> 0x0097 }
        goto L_0x009d;
    L_0x0097:
        r0 = move-exception;
        r1 = "Error closing http post connection output stream";
        r3.zze(r1, r0);
    L_0x009d:
        if (r4 == 0) goto L_0x00a2;
    L_0x009f:
        r4.disconnect();
    L_0x00a2:
        throw r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaoe.zza(java.net.URL, byte[]):int");
    }

    private static void zza(StringBuilder stringBuilder, String str, String str2) throws UnsupportedEncodingException {
        if (stringBuilder.length() != 0) {
            stringBuilder.append('&');
        }
        stringBuilder.append(URLEncoder.encode(str, Key.STRING_CHARSET_NAME));
        stringBuilder.append('=');
        stringBuilder.append(URLEncoder.encode(str2, Key.STRING_CHARSET_NAME));
    }

    /* JADX WARNING: Removed duplicated region for block: B:51:0x00ec A:{SYNTHETIC, Splitter:B:51:0x00ec} */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x00f8  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00d8 A:{SYNTHETIC, Splitter:B:41:0x00d8} */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00e4  */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00ec A:{SYNTHETIC, Splitter:B:51:0x00ec} */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x00f8  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00d8 A:{SYNTHETIC, Splitter:B:41:0x00d8} */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00e4  */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00ec A:{SYNTHETIC, Splitter:B:51:0x00ec} */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x00f8  */
    private final int zzb(java.net.URL r10, byte[] r11) {
        /*
        r9 = this;
        com.google.android.gms.common.internal.zzbo.zzu(r10);
        com.google.android.gms.common.internal.zzbo.zzu(r11);
        r0 = 0;
        r1 = r9.getContext();	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r1.getPackageName();	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r1 = new java.io.ByteArrayOutputStream;	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r1.<init>();	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r2 = new java.util.zip.GZIPOutputStream;	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r2.<init>(r1);	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r2.write(r11);	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r2.close();	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r1.close();	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r1 = r1.toByteArray();	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r2 = "POST compressed size, ratio %, url";
        r3 = r1.length;	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r3 = java.lang.Integer.valueOf(r3);	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r4 = 100;
        r6 = r1.length;	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r6 = (long) r6;	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r6 = r6 * r4;
        r4 = r11.length;	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r4 = (long) r4;	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r6 = r6 / r4;
        r4 = java.lang.Long.valueOf(r6);	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r9.zza(r2, r3, r4, r10);	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r2 = r1.length;	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r3 = r11.length;	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        if (r2 <= r3) goto L_0x004f;
    L_0x0040:
        r2 = "Compressed payload is larger then uncompressed. compressed, uncompressed";
        r3 = r1.length;	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r3 = java.lang.Integer.valueOf(r3);	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r4 = r11.length;	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r4 = java.lang.Integer.valueOf(r4);	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r9.zzc(r2, r3, r4);	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
    L_0x004f:
        r2 = com.google.android.gms.internal.zzamg.zzhM();	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        if (r2 == 0) goto L_0x0075;
    L_0x0055:
        r2 = "Post payload";
        r3 = "\n";
        r4 = new java.lang.String;	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r4.<init>(r11);	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r11 = java.lang.String.valueOf(r4);	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r4 = r11.length();	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        if (r4 == 0) goto L_0x006d;
    L_0x0068:
        r11 = r3.concat(r11);	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        goto L_0x0072;
    L_0x006d:
        r11 = new java.lang.String;	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r11.<init>(r3);	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
    L_0x0072:
        r9.zza(r2, r11);	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
    L_0x0075:
        r10 = r9.zzb(r10);	 Catch:{ IOException -> 0x00cf, all -> 0x00cc }
        r11 = 1;
        r10.setDoOutput(r11);	 Catch:{ IOException -> 0x00c7, all -> 0x00c2 }
        r11 = "Content-Encoding";
        r2 = "gzip";
        r10.addRequestProperty(r11, r2);	 Catch:{ IOException -> 0x00c7, all -> 0x00c2 }
        r11 = r1.length;	 Catch:{ IOException -> 0x00c7, all -> 0x00c2 }
        r10.setFixedLengthStreamingMode(r11);	 Catch:{ IOException -> 0x00c7, all -> 0x00c2 }
        r10.connect();	 Catch:{ IOException -> 0x00c7, all -> 0x00c2 }
        r11 = r10.getOutputStream();	 Catch:{ IOException -> 0x00c7, all -> 0x00c2 }
        r11.write(r1);	 Catch:{ IOException -> 0x00bc, all -> 0x00b6 }
        r11.close();	 Catch:{ IOException -> 0x00bc, all -> 0x00b6 }
        r9.zzb(r10);	 Catch:{ IOException -> 0x00c7, all -> 0x00c2 }
        r11 = r10.getResponseCode();	 Catch:{ IOException -> 0x00c7, all -> 0x00c2 }
        r1 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r11 != r1) goto L_0x00a7;
    L_0x00a0:
        r1 = r9.zzkv();	 Catch:{ IOException -> 0x00c7, all -> 0x00c2 }
        r1.zzko();	 Catch:{ IOException -> 0x00c7, all -> 0x00c2 }
    L_0x00a7:
        r1 = "POST status";
        r2 = java.lang.Integer.valueOf(r11);	 Catch:{ IOException -> 0x00c7, all -> 0x00c2 }
        r9.zzb(r1, r2);	 Catch:{ IOException -> 0x00c7, all -> 0x00c2 }
        if (r10 == 0) goto L_0x00b5;
    L_0x00b2:
        r10.disconnect();
    L_0x00b5:
        return r11;
    L_0x00b6:
        r0 = move-exception;
        r8 = r11;
        r11 = r10;
        r10 = r0;
        r0 = r8;
        goto L_0x00ea;
    L_0x00bc:
        r0 = move-exception;
        r8 = r11;
        r11 = r10;
        r10 = r0;
        r0 = r8;
        goto L_0x00d1;
    L_0x00c2:
        r11 = move-exception;
        r8 = r11;
        r11 = r10;
        r10 = r8;
        goto L_0x00ea;
    L_0x00c7:
        r11 = move-exception;
        r8 = r11;
        r11 = r10;
        r10 = r8;
        goto L_0x00d1;
    L_0x00cc:
        r10 = move-exception;
        r11 = r0;
        goto L_0x00ea;
    L_0x00cf:
        r10 = move-exception;
        r11 = r0;
    L_0x00d1:
        r1 = "Network compressed POST connection error";
        r9.zzd(r1, r10);	 Catch:{ all -> 0x00e9 }
        if (r0 == 0) goto L_0x00e2;
    L_0x00d8:
        r0.close();	 Catch:{ IOException -> 0x00dc }
        goto L_0x00e2;
    L_0x00dc:
        r10 = move-exception;
        r0 = "Error closing http compressed post connection output stream";
        r9.zze(r0, r10);
    L_0x00e2:
        if (r11 == 0) goto L_0x00e7;
    L_0x00e4:
        r11.disconnect();
    L_0x00e7:
        r10 = 0;
        return r10;
    L_0x00e9:
        r10 = move-exception;
    L_0x00ea:
        if (r0 == 0) goto L_0x00f6;
    L_0x00ec:
        r0.close();	 Catch:{ IOException -> 0x00f0 }
        goto L_0x00f6;
    L_0x00f0:
        r0 = move-exception;
        r1 = "Error closing http compressed post connection output stream";
        r9.zze(r1, r0);
    L_0x00f6:
        if (r11 == 0) goto L_0x00fb;
    L_0x00f8:
        r11.disconnect();
    L_0x00fb:
        throw r10;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaoe.zzb(java.net.URL, byte[]):int");
    }

    private final HttpURLConnection zzb(URL url) throws IOException {
        URLConnection openConnection = url.openConnection();
        if (openConnection instanceof HttpURLConnection) {
            HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
            httpURLConnection.setDefaultUseCaches(false);
            httpURLConnection.setConnectTimeout(((Integer) zzans.zzahI.get()).intValue());
            httpURLConnection.setReadTimeout(((Integer) zzans.zzahJ.get()).intValue());
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setRequestProperty(ANConstants.USER_AGENT, this.zzJP);
            httpURLConnection.setDoInput(true);
            return httpURLConnection;
        }
        throw new IOException("Failed to obtain http connection");
    }

    private final URL zzb(zzanx zzanx, String str) {
        String valueOf;
        String valueOf2;
        StringBuilder stringBuilder;
        if (zzanx.zzlI()) {
            valueOf = String.valueOf(zzank.zzlu());
            valueOf2 = String.valueOf(zzank.zzlw());
            stringBuilder = new StringBuilder(((String.valueOf(valueOf).length() + 1) + String.valueOf(valueOf2).length()) + String.valueOf(str).length());
        } else {
            valueOf = String.valueOf(zzank.zzlv());
            valueOf2 = String.valueOf(zzank.zzlw());
            stringBuilder = new StringBuilder(((String.valueOf(valueOf).length() + 1) + String.valueOf(valueOf2).length()) + String.valueOf(str).length());
        }
        stringBuilder.append(valueOf);
        stringBuilder.append(valueOf2);
        stringBuilder.append("?");
        stringBuilder.append(str);
        try {
            return new URL(stringBuilder.toString());
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0021 A:{SYNTHETIC, Splitter:B:18:0x0021} */
    private final void zzb(java.net.HttpURLConnection r3) throws java.io.IOException {
        /*
        r2 = this;
        r3 = r3.getInputStream();	 Catch:{ all -> 0x001d }
        r0 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r0 = new byte[r0];	 Catch:{ all -> 0x001b }
    L_0x0008:
        r1 = r3.read(r0);	 Catch:{ all -> 0x001b }
        if (r1 > 0) goto L_0x0008;
    L_0x000e:
        if (r3 == 0) goto L_0x001a;
    L_0x0010:
        r3.close();	 Catch:{ IOException -> 0x0014 }
        return;
    L_0x0014:
        r3 = move-exception;
        r0 = "Error closing http connection input stream";
        r2.zze(r0, r3);
    L_0x001a:
        return;
    L_0x001b:
        r0 = move-exception;
        goto L_0x001f;
    L_0x001d:
        r0 = move-exception;
        r3 = 0;
    L_0x001f:
        if (r3 == 0) goto L_0x002b;
    L_0x0021:
        r3.close();	 Catch:{ IOException -> 0x0025 }
        goto L_0x002b;
    L_0x0025:
        r3 = move-exception;
        r1 = "Error closing http connection input stream";
        r2.zze(r1, r3);
    L_0x002b:
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaoe.zzb(java.net.HttpURLConnection):void");
    }

    private final URL zzd(zzanx zzanx) {
        String valueOf;
        String valueOf2;
        if (zzanx.zzlI()) {
            valueOf = String.valueOf(zzank.zzlu());
            valueOf2 = String.valueOf(zzank.zzlw());
            if (valueOf2.length() == 0) {
                valueOf2 = new String(valueOf);
                valueOf = valueOf2;
                return new URL(valueOf);
            }
        }
        valueOf = String.valueOf(zzank.zzlv());
        valueOf2 = String.valueOf(zzank.zzlw());
        if (valueOf2.length() == 0) {
            valueOf2 = new String(valueOf);
            valueOf = valueOf2;
            return new URL(valueOf);
        }
        valueOf = valueOf.concat(valueOf2);
        try {
            return new URL(valueOf);
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    private final URL zzlR() {
        String valueOf = String.valueOf(zzank.zzlu());
        String valueOf2 = String.valueOf((String) zzans.zzahx.get());
        try {
            return new URL(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:32:0x00a9 A:{SYNTHETIC, EDGE_INSN: B:32:0x00a9->B:30:0x00a9 ?: BREAK  } */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0094  */
    /* JADX WARNING: Missing block: B:14:0x0057, code skipped:
            if (zza(r2) == 200) goto L_0x0092;
     */
    /* JADX WARNING: Missing block: B:25:0x008e, code skipped:
            if (zza(r5, r2) == 200) goto L_0x0092;
     */
    private final java.util.List<java.lang.Long> zzv(java.util.List<com.google.android.gms.internal.zzanx> r9) {
        /*
        r8 = this;
        r0 = new java.util.ArrayList;
        r1 = r9.size();
        r0.<init>(r1);
        r9 = r9.iterator();
    L_0x000d:
        r1 = r9.hasNext();
        if (r1 == 0) goto L_0x00a9;
    L_0x0013:
        r1 = r9.next();
        r1 = (com.google.android.gms.internal.zzanx) r1;
        com.google.android.gms.common.internal.zzbo.zzu(r1);
        r2 = r1.zzlI();
        r3 = 1;
        r2 = r2 ^ r3;
        r2 = r8.zza(r1, r2);
        r4 = 0;
        if (r2 != 0) goto L_0x0033;
    L_0x0029:
        r2 = r8.zzkr();
        r4 = "Error formatting hit for upload";
    L_0x002f:
        r2.zza(r1, r4);
        goto L_0x0092;
    L_0x0033:
        r5 = r2.length();
        r6 = com.google.android.gms.internal.zzans.zzahy;
        r6 = r6.get();
        r6 = (java.lang.Integer) r6;
        r6 = r6.intValue();
        r7 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r5 > r6) goto L_0x005a;
    L_0x0047:
        r2 = r8.zzb(r1, r2);
        if (r2 != 0) goto L_0x0053;
    L_0x004d:
        r2 = "Failed to build collect GET endpoint url";
    L_0x004f:
        r8.zzbs(r2);
        goto L_0x0091;
    L_0x0053:
        r2 = r8.zza(r2);
        if (r2 != r7) goto L_0x0091;
    L_0x0059:
        goto L_0x0092;
    L_0x005a:
        r2 = r8.zza(r1, r4);
        if (r2 != 0) goto L_0x0067;
    L_0x0060:
        r2 = r8.zzkr();
        r4 = "Error formatting hit for POST upload";
        goto L_0x002f;
    L_0x0067:
        r2 = r2.getBytes();
        r5 = r2.length;
        r6 = com.google.android.gms.internal.zzans.zzahD;
        r6 = r6.get();
        r6 = (java.lang.Integer) r6;
        r6 = r6.intValue();
        if (r5 <= r6) goto L_0x0081;
    L_0x007a:
        r2 = r8.zzkr();
        r4 = "Hit payload exceeds size limit";
        goto L_0x002f;
    L_0x0081:
        r5 = r8.zzd(r1);
        if (r5 != 0) goto L_0x008a;
    L_0x0087:
        r2 = "Failed to build collect POST endpoint url";
        goto L_0x004f;
    L_0x008a:
        r2 = r8.zza(r5, r2);
        if (r2 != r7) goto L_0x0091;
    L_0x0090:
        goto L_0x0092;
    L_0x0091:
        r3 = 0;
    L_0x0092:
        if (r3 == 0) goto L_0x00a9;
    L_0x0094:
        r1 = r1.zzlF();
        r1 = java.lang.Long.valueOf(r1);
        r0.add(r1);
        r1 = r0.size();
        r2 = com.google.android.gms.internal.zzank.zzls();
        if (r1 < r2) goto L_0x000d;
    L_0x00a9:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaoe.zzv(java.util.List):java.util.List");
    }

    /* Access modifiers changed, original: final */
    public final String zza(zzanx zzanx, boolean z) {
        zzbo.zzu(zzanx);
        StringBuilder stringBuilder = new StringBuilder();
        try {
            for (Entry entry : zzanx.zzdV().entrySet()) {
                String str = (String) entry.getKey();
                if (!("ht".equals(str) || "qt".equals(str) || "AppUID".equals(str) || "z".equals(str) || "_gmsv".equals(str))) {
                    zza(stringBuilder, str, (String) entry.getValue());
                }
            }
            zza(stringBuilder, "ht", String.valueOf(zzanx.zzlG()));
            zza(stringBuilder, "qt", String.valueOf(zzkq().currentTimeMillis() - zzanx.zzlG()));
            if (z) {
                long zzlJ = zzanx.zzlJ();
                zza(stringBuilder, "z", zzlJ != 0 ? String.valueOf(zzlJ) : String.valueOf(zzanx.zzlF()));
            }
            return stringBuilder.toString();
        } catch (UnsupportedEncodingException e) {
            zze("Failed to encode name or value", e);
            return null;
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzjD() {
        zza("Network initialized. User agent", this.zzJP);
    }

    public final boolean zzlQ() {
        NetworkInfo activeNetworkInfo;
        zzl.zzjC();
        zzkD();
        try {
            activeNetworkInfo = ((ConnectivityManager) getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (SecurityException unused) {
            activeNetworkInfo = null;
        }
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        zzbo("No network connectivity");
        return false;
    }

    public final List<Long> zzu(List<zzanx> list) {
        Object obj;
        zzl.zzjC();
        zzkD();
        zzbo.zzu(list);
        boolean z = false;
        if (zzks().zzlx().isEmpty() || !this.zzais.zzu(((long) ((Integer) zzans.zzahG.get()).intValue()) * 1000)) {
            obj = null;
        } else {
            obj = zzana.zzbx((String) zzans.zzahz.get()) != zzana.NONE ? 1 : null;
            if (zzang.zzby((String) zzans.zzahA.get()) == zzang.GZIP) {
                z = true;
            }
        }
        if (obj == null) {
            return zzv(list);
        }
        zzbo.zzaf(list.isEmpty() ^ 1);
        zza("Uploading batched hits. compression, count", Boolean.valueOf(z), Integer.valueOf(list.size()));
        zzaof zzaof = new zzaof(this);
        ArrayList arrayList = new ArrayList();
        for (zzanx zzanx : list) {
            if (!zzaof.zze(zzanx)) {
                break;
            }
            arrayList.add(Long.valueOf(zzanx.zzlF()));
        }
        if (zzaof.zzlT() == 0) {
            return arrayList;
        }
        URL zzlR = zzlR();
        if (zzlR == null) {
            zzbs("Failed to build batching endpoint url");
        } else {
            int zzb = z ? zzb(zzlR, zzaof.getPayload()) : zza(zzlR, zzaof.getPayload());
            if (200 == zzb) {
                zza("Batched upload completed. Hits batched", Integer.valueOf(zzaof.zzlT()));
                return arrayList;
            }
            zza("Network error uploading hits. status code", Integer.valueOf(zzb));
            if (zzks().zzlx().contains(Integer.valueOf(zzb))) {
                zzbr("Server instructed the client to stop batching");
                this.zzais.start();
            }
        }
        return Collections.emptyList();
    }
}
