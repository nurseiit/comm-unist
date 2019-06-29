package com.google.android.gms.internal;

import com.bumptech.glide.load.Key;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

public final class zzag implements zzb {
    private final Map<String, zzai> zzav;
    private long zzaw;
    private final File zzax;
    private final int zzay;

    public zzag(File file) {
        this(file, 5242880);
    }

    private zzag(File file, int i) {
        this.zzav = new LinkedHashMap(16, 0.75f, true);
        this.zzaw = 0;
        this.zzax = file;
        this.zzay = 5242880;
    }

    private final synchronized void remove(String str) {
        boolean delete = zze(str).delete();
        zzai zzai = (zzai) this.zzav.get(str);
        if (zzai != null) {
            this.zzaw -= zzai.size;
            this.zzav.remove(str);
        }
        if (!delete) {
            zzab.zzb("Could not delete cache entry for key=%s, filename=%s", str, zzd(str));
        }
    }

    private static int zza(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    static void zza(OutputStream outputStream, int i) throws IOException {
        outputStream.write(i & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write(i >>> 24);
    }

    static void zza(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) ((int) j));
        outputStream.write((byte) ((int) (j >>> 8)));
        outputStream.write((byte) ((int) (j >>> 16)));
        outputStream.write((byte) ((int) (j >>> 24)));
        outputStream.write((byte) ((int) (j >>> 32)));
        outputStream.write((byte) ((int) (j >>> 40)));
        outputStream.write((byte) ((int) (j >>> 48)));
        outputStream.write((byte) ((int) (j >>> 56)));
    }

    static void zza(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes(Key.STRING_CHARSET_NAME);
        zza(outputStream, (long) bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    private final void zza(String str, zzai zzai) {
        if (this.zzav.containsKey(str)) {
            this.zzaw += zzai.size - ((zzai) this.zzav.get(str)).size;
        } else {
            this.zzaw += zzai.size;
        }
        this.zzav.put(str, zzai);
    }

    private static byte[] zza(InputStream inputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int read = inputStream.read(bArr, i2, i - i2);
            if (read == -1) {
                break;
            }
            i2 += read;
        }
        if (i2 == i) {
            return bArr;
        }
        StringBuilder stringBuilder = new StringBuilder(50);
        stringBuilder.append("Expected ");
        stringBuilder.append(i);
        stringBuilder.append(" bytes, read ");
        stringBuilder.append(i2);
        stringBuilder.append(" bytes");
        throw new IOException(stringBuilder.toString());
    }

    static int zzb(InputStream inputStream) throws IOException {
        return (zza(inputStream) << 24) | (((zza(inputStream) | 0) | (zza(inputStream) << 8)) | (zza(inputStream) << 16));
    }

    static long zzc(InputStream inputStream) throws IOException {
        return ((((((((((long) zza(inputStream)) & 255) | 0) | ((((long) zza(inputStream)) & 255) << 8)) | ((((long) zza(inputStream)) & 255) << 16)) | ((((long) zza(inputStream)) & 255) << 24)) | ((((long) zza(inputStream)) & 255) << 32)) | ((((long) zza(inputStream)) & 255) << 40)) | ((((long) zza(inputStream)) & 255) << 48)) | ((((long) zza(inputStream)) & 255) << 56);
    }

    static String zzd(InputStream inputStream) throws IOException {
        return new String(zza(inputStream, (int) zzc(inputStream)), Key.STRING_CHARSET_NAME);
    }

    private static String zzd(String str) {
        int length = str.length() / 2;
        String valueOf = String.valueOf(String.valueOf(str.substring(0, length).hashCode()));
        str = String.valueOf(String.valueOf(str.substring(length).hashCode()));
        return str.length() != 0 ? valueOf.concat(str) : new String(valueOf);
    }

    private final File zze(String str) {
        return new File(this.zzax, zzd(str));
    }

    static Map<String, String> zze(InputStream inputStream) throws IOException {
        int zzb = zzb(inputStream);
        Map emptyMap = zzb == 0 ? Collections.emptyMap() : new HashMap(zzb);
        for (int i = 0; i < zzb; i++) {
            emptyMap.put(zzd(inputStream).intern(), zzd(inputStream).intern());
        }
        return emptyMap;
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:37:0x0063 */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x005a A:{SYNTHETIC, Splitter:B:32:0x005a} */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x0069 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0066 A:{SYNTHETIC, Splitter:B:40:0x0066} */
    /* JADX WARNING: Can't wrap try/catch for region: R(5:25|26|(2:35|36)|37|38) */
    /* JADX WARNING: Missing block: B:8:0x0023, code skipped:
            return;
     */
    public final synchronized void initialize() {
        /*
        r8 = this;
        monitor-enter(r8);
        r0 = r8.zzax;	 Catch:{ all -> 0x006e }
        r0 = r0.exists();	 Catch:{ all -> 0x006e }
        r1 = 0;
        if (r0 != 0) goto L_0x0024;
    L_0x000a:
        r0 = r8.zzax;	 Catch:{ all -> 0x006e }
        r0 = r0.mkdirs();	 Catch:{ all -> 0x006e }
        if (r0 != 0) goto L_0x0022;
    L_0x0012:
        r0 = "Unable to create cache dir %s";
        r2 = 1;
        r2 = new java.lang.Object[r2];	 Catch:{ all -> 0x006e }
        r3 = r8.zzax;	 Catch:{ all -> 0x006e }
        r3 = r3.getAbsolutePath();	 Catch:{ all -> 0x006e }
        r2[r1] = r3;	 Catch:{ all -> 0x006e }
        com.google.android.gms.internal.zzab.zzc(r0, r2);	 Catch:{ all -> 0x006e }
    L_0x0022:
        monitor-exit(r8);
        return;
    L_0x0024:
        r0 = r8.zzax;	 Catch:{ all -> 0x006e }
        r0 = r0.listFiles();	 Catch:{ all -> 0x006e }
        if (r0 != 0) goto L_0x002e;
    L_0x002c:
        monitor-exit(r8);
        return;
    L_0x002e:
        r2 = r0.length;	 Catch:{ all -> 0x006e }
    L_0x002f:
        if (r1 >= r2) goto L_0x006c;
    L_0x0031:
        r3 = r0[r1];	 Catch:{ all -> 0x006e }
        r4 = 0;
        r5 = new java.io.BufferedInputStream;	 Catch:{ IOException -> 0x0058 }
        r6 = new java.io.FileInputStream;	 Catch:{ IOException -> 0x0058 }
        r6.<init>(r3);	 Catch:{ IOException -> 0x0058 }
        r5.<init>(r6);	 Catch:{ IOException -> 0x0058 }
        r4 = com.google.android.gms.internal.zzai.zzf(r5);	 Catch:{ IOException -> 0x0054, all -> 0x0051 }
        r6 = r3.length();	 Catch:{ IOException -> 0x0054, all -> 0x0051 }
        r4.size = r6;	 Catch:{ IOException -> 0x0054, all -> 0x0051 }
        r6 = r4.key;	 Catch:{ IOException -> 0x0054, all -> 0x0051 }
        r8.zza(r6, r4);	 Catch:{ IOException -> 0x0054, all -> 0x0051 }
        r5.close();	 Catch:{ IOException -> 0x0069 }
        goto L_0x0069;
    L_0x0051:
        r0 = move-exception;
        r4 = r5;
        goto L_0x005e;
    L_0x0054:
        r4 = r5;
        goto L_0x0058;
    L_0x0056:
        r0 = move-exception;
        goto L_0x005e;
    L_0x0058:
        if (r3 == 0) goto L_0x0064;
    L_0x005a:
        r3.delete();	 Catch:{ all -> 0x0056 }
        goto L_0x0064;
    L_0x005e:
        if (r4 == 0) goto L_0x0063;
    L_0x0060:
        r4.close();	 Catch:{ IOException -> 0x0063 }
    L_0x0063:
        throw r0;	 Catch:{ all -> 0x006e }
    L_0x0064:
        if (r4 == 0) goto L_0x0069;
    L_0x0066:
        r4.close();	 Catch:{ IOException -> 0x0069 }
    L_0x0069:
        r1 = r1 + 1;
        goto L_0x002f;
    L_0x006c:
        monitor-exit(r8);
        return;
    L_0x006e:
        r0 = move-exception;
        monitor-exit(r8);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzag.initialize():void");
    }

    /* JADX WARNING: Unknown top exception splitter block from list: {B:27:0x0066=Splitter:B:27:0x0066, B:39:0x0088=Splitter:B:39:0x0088} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00a0 A:{SYNTHETIC, Splitter:B:42:0x00a0} */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x007e A:{SYNTHETIC, Splitter:B:30:0x007e} */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00ab A:{SYNTHETIC, Splitter:B:51:0x00ab} */
    public final synchronized com.google.android.gms.internal.zzc zza(java.lang.String r14) {
        /*
        r13 = this;
        monitor-enter(r13);
        r0 = r13.zzav;	 Catch:{ all -> 0x00b2 }
        r0 = r0.get(r14);	 Catch:{ all -> 0x00b2 }
        r0 = (com.google.android.gms.internal.zzai) r0;	 Catch:{ all -> 0x00b2 }
        r1 = 0;
        if (r0 != 0) goto L_0x000e;
    L_0x000c:
        monitor-exit(r13);
        return r1;
    L_0x000e:
        r2 = r13.zze(r14);	 Catch:{ all -> 0x00b2 }
        r3 = 1;
        r4 = 0;
        r5 = 2;
        r6 = new com.google.android.gms.internal.zzaj;	 Catch:{ IOException -> 0x0086, NegativeArraySizeException -> 0x0064, all -> 0x0061 }
        r7 = new java.io.BufferedInputStream;	 Catch:{ IOException -> 0x0086, NegativeArraySizeException -> 0x0064, all -> 0x0061 }
        r8 = new java.io.FileInputStream;	 Catch:{ IOException -> 0x0086, NegativeArraySizeException -> 0x0064, all -> 0x0061 }
        r8.<init>(r2);	 Catch:{ IOException -> 0x0086, NegativeArraySizeException -> 0x0064, all -> 0x0061 }
        r7.<init>(r8);	 Catch:{ IOException -> 0x0086, NegativeArraySizeException -> 0x0064, all -> 0x0061 }
        r6.<init>(r7);	 Catch:{ IOException -> 0x0086, NegativeArraySizeException -> 0x0064, all -> 0x0061 }
        com.google.android.gms.internal.zzai.zzf(r6);	 Catch:{ IOException -> 0x005f, NegativeArraySizeException -> 0x005d }
        r7 = r2.length();	 Catch:{ IOException -> 0x005f, NegativeArraySizeException -> 0x005d }
        r9 = r6.zzaz;	 Catch:{ IOException -> 0x005f, NegativeArraySizeException -> 0x005d }
        r9 = (long) r9;	 Catch:{ IOException -> 0x005f, NegativeArraySizeException -> 0x005d }
        r11 = r7 - r9;
        r7 = (int) r11;	 Catch:{ IOException -> 0x005f, NegativeArraySizeException -> 0x005d }
        r7 = zza(r6, r7);	 Catch:{ IOException -> 0x005f, NegativeArraySizeException -> 0x005d }
        r8 = new com.google.android.gms.internal.zzc;	 Catch:{ IOException -> 0x005f, NegativeArraySizeException -> 0x005d }
        r8.<init>();	 Catch:{ IOException -> 0x005f, NegativeArraySizeException -> 0x005d }
        r8.data = r7;	 Catch:{ IOException -> 0x005f, NegativeArraySizeException -> 0x005d }
        r7 = r0.zza;	 Catch:{ IOException -> 0x005f, NegativeArraySizeException -> 0x005d }
        r8.zza = r7;	 Catch:{ IOException -> 0x005f, NegativeArraySizeException -> 0x005d }
        r9 = r0.zzb;	 Catch:{ IOException -> 0x005f, NegativeArraySizeException -> 0x005d }
        r8.zzb = r9;	 Catch:{ IOException -> 0x005f, NegativeArraySizeException -> 0x005d }
        r9 = r0.zzc;	 Catch:{ IOException -> 0x005f, NegativeArraySizeException -> 0x005d }
        r8.zzc = r9;	 Catch:{ IOException -> 0x005f, NegativeArraySizeException -> 0x005d }
        r9 = r0.zzd;	 Catch:{ IOException -> 0x005f, NegativeArraySizeException -> 0x005d }
        r8.zzd = r9;	 Catch:{ IOException -> 0x005f, NegativeArraySizeException -> 0x005d }
        r9 = r0.zze;	 Catch:{ IOException -> 0x005f, NegativeArraySizeException -> 0x005d }
        r8.zze = r9;	 Catch:{ IOException -> 0x005f, NegativeArraySizeException -> 0x005d }
        r0 = r0.zzf;	 Catch:{ IOException -> 0x005f, NegativeArraySizeException -> 0x005d }
        r8.zzf = r0;	 Catch:{ IOException -> 0x005f, NegativeArraySizeException -> 0x005d }
        r6.close();	 Catch:{ IOException -> 0x005b }
        monitor-exit(r13);
        return r8;
    L_0x005b:
        monitor-exit(r13);
        return r1;
    L_0x005d:
        r0 = move-exception;
        goto L_0x0066;
    L_0x005f:
        r0 = move-exception;
        goto L_0x0088;
    L_0x0061:
        r14 = move-exception;
        r6 = r1;
        goto L_0x00a9;
    L_0x0064:
        r0 = move-exception;
        r6 = r1;
    L_0x0066:
        r7 = "%s: %s";
        r5 = new java.lang.Object[r5];	 Catch:{ all -> 0x00a8 }
        r2 = r2.getAbsolutePath();	 Catch:{ all -> 0x00a8 }
        r5[r4] = r2;	 Catch:{ all -> 0x00a8 }
        r0 = r0.toString();	 Catch:{ all -> 0x00a8 }
        r5[r3] = r0;	 Catch:{ all -> 0x00a8 }
        com.google.android.gms.internal.zzab.zzb(r7, r5);	 Catch:{ all -> 0x00a8 }
        r13.remove(r14);	 Catch:{ all -> 0x00a8 }
        if (r6 == 0) goto L_0x0084;
    L_0x007e:
        r6.close();	 Catch:{ IOException -> 0x0082 }
        goto L_0x0084;
    L_0x0082:
        monitor-exit(r13);
        return r1;
    L_0x0084:
        monitor-exit(r13);
        return r1;
    L_0x0086:
        r0 = move-exception;
        r6 = r1;
    L_0x0088:
        r7 = "%s: %s";
        r5 = new java.lang.Object[r5];	 Catch:{ all -> 0x00a8 }
        r2 = r2.getAbsolutePath();	 Catch:{ all -> 0x00a8 }
        r5[r4] = r2;	 Catch:{ all -> 0x00a8 }
        r0 = r0.toString();	 Catch:{ all -> 0x00a8 }
        r5[r3] = r0;	 Catch:{ all -> 0x00a8 }
        com.google.android.gms.internal.zzab.zzb(r7, r5);	 Catch:{ all -> 0x00a8 }
        r13.remove(r14);	 Catch:{ all -> 0x00a8 }
        if (r6 == 0) goto L_0x00a6;
    L_0x00a0:
        r6.close();	 Catch:{ IOException -> 0x00a4 }
        goto L_0x00a6;
    L_0x00a4:
        monitor-exit(r13);
        return r1;
    L_0x00a6:
        monitor-exit(r13);
        return r1;
    L_0x00a8:
        r14 = move-exception;
    L_0x00a9:
        if (r6 == 0) goto L_0x00b1;
    L_0x00ab:
        r6.close();	 Catch:{ IOException -> 0x00af }
        goto L_0x00b1;
    L_0x00af:
        monitor-exit(r13);
        return r1;
    L_0x00b1:
        throw r14;	 Catch:{ all -> 0x00b2 }
    L_0x00b2:
        r14 = move-exception;
        monitor-exit(r13);
        throw r14;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzag.zza(java.lang.String):com.google.android.gms.internal.zzc");
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x003a A:{Catch:{ all -> 0x0120 }} */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0094 A:{Catch:{ all -> 0x0120 }} */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x00a1 A:{Catch:{ all -> 0x0120 }} */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x00a1 A:{Catch:{ all -> 0x0120 }} */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0093 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0094 A:{Catch:{ all -> 0x0120 }} */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x00a1 A:{Catch:{ all -> 0x0120 }} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x00fc A:{Catch:{ IOException -> 0x0109 }} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00e4 A:{Catch:{ IOException -> 0x0109 }} */
    /* JADX WARNING: Missing exception handler attribute for start block: B:32:0x0109 */
    /* JADX WARNING: Can't wrap try/catch for region: R(5:32|33|(1:35)|36|37) */
    /* JADX WARNING: Missing block: B:34:0x010d, code skipped:
            if (r3.delete() == false) goto L_0x010f;
     */
    /* JADX WARNING: Missing block: B:35:0x010f, code skipped:
            com.google.android.gms.internal.zzab.zzb("Could not clean up file %s", r3.getAbsolutePath());
     */
    /* JADX WARNING: Missing block: B:37:0x011f, code skipped:
            return;
     */
    public final synchronized void zza(java.lang.String r20, com.google.android.gms.internal.zzc r21) {
        /*
        r19 = this;
        r1 = r19;
        r2 = r20;
        r3 = r21;
        monitor-enter(r19);
        r4 = r3.data;	 Catch:{ all -> 0x0120 }
        r4 = r4.length;	 Catch:{ all -> 0x0120 }
        r5 = r1.zzaw;	 Catch:{ all -> 0x0120 }
        r7 = (long) r4;	 Catch:{ all -> 0x0120 }
        r9 = r5 + r7;
        r4 = r1.zzay;	 Catch:{ all -> 0x0120 }
        r4 = (long) r4;	 Catch:{ all -> 0x0120 }
        r6 = (r9 > r4 ? 1 : (r9 == r4 ? 0 : -1));
        r5 = 0;
        if (r6 < 0) goto L_0x00c9;
    L_0x0017:
        r6 = com.google.android.gms.internal.zzab.DEBUG;	 Catch:{ all -> 0x0120 }
        if (r6 == 0) goto L_0x0022;
    L_0x001b:
        r6 = "Pruning old cache entries.";
        r9 = new java.lang.Object[r5];	 Catch:{ all -> 0x0120 }
        com.google.android.gms.internal.zzab.zza(r6, r9);	 Catch:{ all -> 0x0120 }
    L_0x0022:
        r9 = r1.zzaw;	 Catch:{ all -> 0x0120 }
        r11 = android.os.SystemClock.elapsedRealtime();	 Catch:{ all -> 0x0120 }
        r6 = r1.zzav;	 Catch:{ all -> 0x0120 }
        r6 = r6.entrySet();	 Catch:{ all -> 0x0120 }
        r6 = r6.iterator();	 Catch:{ all -> 0x0120 }
        r13 = 0;
    L_0x0033:
        r14 = r6.hasNext();	 Catch:{ all -> 0x0120 }
        r15 = 2;
        if (r14 == 0) goto L_0x009b;
    L_0x003a:
        r14 = r6.next();	 Catch:{ all -> 0x0120 }
        r14 = (java.util.Map.Entry) r14;	 Catch:{ all -> 0x0120 }
        r14 = r14.getValue();	 Catch:{ all -> 0x0120 }
        r14 = (com.google.android.gms.internal.zzai) r14;	 Catch:{ all -> 0x0120 }
        r4 = r14.key;	 Catch:{ all -> 0x0120 }
        r4 = r1.zze(r4);	 Catch:{ all -> 0x0120 }
        r4 = r4.delete();	 Catch:{ all -> 0x0120 }
        if (r4 == 0) goto L_0x0062;
    L_0x0052:
        r16 = r6;
        r5 = r1.zzaw;	 Catch:{ all -> 0x0120 }
        r3 = r14.size;	 Catch:{ all -> 0x0120 }
        r14 = 0;
        r17 = r11;
        r11 = r5 - r3;
        r1.zzaw = r11;	 Catch:{ all -> 0x0120 }
    L_0x005f:
        r3 = r16;
        goto L_0x007c;
    L_0x0062:
        r16 = r6;
        r17 = r11;
        r3 = "Could not delete cache entry for key=%s, filename=%s";
        r4 = new java.lang.Object[r15];	 Catch:{ all -> 0x0120 }
        r5 = r14.key;	 Catch:{ all -> 0x0120 }
        r6 = 0;
        r4[r6] = r5;	 Catch:{ all -> 0x0120 }
        r5 = r14.key;	 Catch:{ all -> 0x0120 }
        r5 = zzd(r5);	 Catch:{ all -> 0x0120 }
        r6 = 1;
        r4[r6] = r5;	 Catch:{ all -> 0x0120 }
        com.google.android.gms.internal.zzab.zzb(r3, r4);	 Catch:{ all -> 0x0120 }
        goto L_0x005f;
    L_0x007c:
        r3.remove();	 Catch:{ all -> 0x0120 }
        r13 = r13 + 1;
        r4 = r1.zzaw;	 Catch:{ all -> 0x0120 }
        r6 = 0;
        r11 = r4 + r7;
        r4 = (float) r11;	 Catch:{ all -> 0x0120 }
        r5 = r1.zzay;	 Catch:{ all -> 0x0120 }
        r5 = (float) r5;	 Catch:{ all -> 0x0120 }
        r6 = 1063675494; // 0x3f666666 float:0.9 double:5.2552552E-315;
        r5 = r5 * r6;
        r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1));
        if (r4 >= 0) goto L_0x0094;
    L_0x0093:
        goto L_0x009d;
    L_0x0094:
        r6 = r3;
        r11 = r17;
        r3 = r21;
        r5 = 0;
        goto L_0x0033;
    L_0x009b:
        r17 = r11;
    L_0x009d:
        r3 = com.google.android.gms.internal.zzab.DEBUG;	 Catch:{ all -> 0x0120 }
        if (r3 == 0) goto L_0x00c9;
    L_0x00a1:
        r3 = "pruned %d files, %d bytes, %d ms";
        r4 = 3;
        r4 = new java.lang.Object[r4];	 Catch:{ all -> 0x0120 }
        r5 = java.lang.Integer.valueOf(r13);	 Catch:{ all -> 0x0120 }
        r6 = 0;
        r4[r6] = r5;	 Catch:{ all -> 0x0120 }
        r5 = r1.zzaw;	 Catch:{ all -> 0x0120 }
        r7 = 0;
        r7 = r5 - r9;
        r5 = java.lang.Long.valueOf(r7);	 Catch:{ all -> 0x0120 }
        r6 = 1;
        r4[r6] = r5;	 Catch:{ all -> 0x0120 }
        r5 = android.os.SystemClock.elapsedRealtime();	 Catch:{ all -> 0x0120 }
        r7 = 0;
        r7 = r5 - r17;
        r5 = java.lang.Long.valueOf(r7);	 Catch:{ all -> 0x0120 }
        r4[r15] = r5;	 Catch:{ all -> 0x0120 }
        com.google.android.gms.internal.zzab.zza(r3, r4);	 Catch:{ all -> 0x0120 }
    L_0x00c9:
        r3 = r19.zze(r20);	 Catch:{ all -> 0x0120 }
        r4 = new java.io.BufferedOutputStream;	 Catch:{ IOException -> 0x0109 }
        r5 = new java.io.FileOutputStream;	 Catch:{ IOException -> 0x0109 }
        r5.<init>(r3);	 Catch:{ IOException -> 0x0109 }
        r4.<init>(r5);	 Catch:{ IOException -> 0x0109 }
        r5 = new com.google.android.gms.internal.zzai;	 Catch:{ IOException -> 0x0109 }
        r6 = r21;
        r5.<init>(r2, r6);	 Catch:{ IOException -> 0x0109 }
        r7 = r5.zza(r4);	 Catch:{ IOException -> 0x0109 }
        if (r7 != 0) goto L_0x00fc;
    L_0x00e4:
        r4.close();	 Catch:{ IOException -> 0x0109 }
        r2 = "Failed to write header for %s";
        r4 = 1;
        r5 = new java.lang.Object[r4];	 Catch:{ IOException -> 0x0109 }
        r4 = r3.getAbsolutePath();	 Catch:{ IOException -> 0x0109 }
        r6 = 0;
        r5[r6] = r4;	 Catch:{ IOException -> 0x0109 }
        com.google.android.gms.internal.zzab.zzb(r2, r5);	 Catch:{ IOException -> 0x0109 }
        r2 = new java.io.IOException;	 Catch:{ IOException -> 0x0109 }
        r2.<init>();	 Catch:{ IOException -> 0x0109 }
        throw r2;	 Catch:{ IOException -> 0x0109 }
    L_0x00fc:
        r6 = r6.data;	 Catch:{ IOException -> 0x0109 }
        r4.write(r6);	 Catch:{ IOException -> 0x0109 }
        r4.close();	 Catch:{ IOException -> 0x0109 }
        r1.zza(r2, r5);	 Catch:{ IOException -> 0x0109 }
        monitor-exit(r19);
        return;
    L_0x0109:
        r2 = r3.delete();	 Catch:{ all -> 0x0120 }
        if (r2 != 0) goto L_0x011e;
    L_0x010f:
        r2 = "Could not clean up file %s";
        r4 = 1;
        r4 = new java.lang.Object[r4];	 Catch:{ all -> 0x0120 }
        r3 = r3.getAbsolutePath();	 Catch:{ all -> 0x0120 }
        r5 = 0;
        r4[r5] = r3;	 Catch:{ all -> 0x0120 }
        com.google.android.gms.internal.zzab.zzb(r2, r4);	 Catch:{ all -> 0x0120 }
    L_0x011e:
        monitor-exit(r19);
        return;
    L_0x0120:
        r0 = move-exception;
        r2 = r0;
        monitor-exit(r19);
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzag.zza(java.lang.String, com.google.android.gms.internal.zzc):void");
    }
}
