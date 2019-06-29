package com.google.android.gms.internal;

import android.util.Base64;
import com.bumptech.glide.load.Key;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.DatabaseReference.CompletionListener;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class zd {
    private static final char[] zzcjC = "0123456789abcdef".toCharArray();

    public static void zzaF(boolean z) {
        zzb(z, "");
    }

    public static za<Task<Void>, CompletionListener> zzb(CompletionListener completionListener) {
        if (completionListener != null) {
            return new za(null, completionListener);
        }
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        return new za(taskCompletionSource.getTask(), new ze(taskCompletionSource));
    }

    public static void zzb(boolean z, String str) {
        if (!z) {
            String str2 = "hardAssert failed: ";
            str = String.valueOf(str);
            throw new AssertionError(str.length() != 0 ? str2.concat(str) : new String(str2));
        }
    }

    public static zb zzgX(String str) throws DatabaseException {
        try {
            int indexOf = str.indexOf("//");
            if (indexOf == -1) {
                throw new URISyntaxException(str, "Invalid scheme specified");
            }
            indexOf += 2;
            int indexOf2 = str.substring(indexOf).indexOf("/");
            if (indexOf2 != -1) {
                indexOf2 += indexOf;
                String[] split = str.substring(indexOf2).split("/");
                StringBuilder stringBuilder = new StringBuilder();
                for (int i = 0; i < split.length; i++) {
                    if (!split[i].equals("")) {
                        stringBuilder.append("/");
                        stringBuilder.append(URLEncoder.encode(split[i], Key.STRING_CHARSET_NAME));
                    }
                }
                str = String.valueOf(str.substring(0, indexOf2));
                String valueOf = String.valueOf(stringBuilder.toString());
                str = valueOf.length() != 0 ? str.concat(valueOf) : new String(str);
            }
            URI uri = new URI(str);
            str = uri.getPath().replace("+", " ");
            zf.zzhc(str);
            qr qrVar = new qr(str);
            str = uri.getScheme();
            rx rxVar = new rx();
            rxVar.host = uri.getHost().toLowerCase();
            indexOf = uri.getPort();
            if (indexOf != -1) {
                rxVar.secure = str.equals("https");
                str = String.valueOf(rxVar.host);
                StringBuilder stringBuilder2 = new StringBuilder(String.valueOf(str).length() + 12);
                stringBuilder2.append(str);
                stringBuilder2.append(":");
                stringBuilder2.append(indexOf);
                rxVar.host = stringBuilder2.toString();
            } else {
                rxVar.secure = true;
            }
            rxVar.zzbxU = rxVar.host.split("\\.")[0].toLowerCase();
            rxVar.zzceq = rxVar.host;
            zb zbVar = new zb();
            zbVar.zzbZf = qrVar;
            zbVar.zzbYW = rxVar;
            return zbVar;
        } catch (URISyntaxException e) {
            throw new DatabaseException("Invalid Firebase Database url specified", e);
        } catch (UnsupportedEncodingException e2) {
            throw new DatabaseException("Failed to URLEncode the path", e2);
        }
    }

    public static String zzgY(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-1");
            instance.update(str.getBytes(Key.STRING_CHARSET_NAME));
            return Base64.encodeToString(instance.digest(), 2);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("Missing SHA-1 MessageDigest provider.", e);
        } catch (UnsupportedEncodingException unused) {
            throw new RuntimeException("UTF-8 encoding is required for Firebase Database to run!");
        }
    }

    public static String zzgZ(String str) {
        Object replace = str.indexOf(92) != -1 ? str.replace("\\", "\\\\") : str;
        if (str.indexOf(34) != -1) {
            replace = replace.replace("\"", "\\\"");
        }
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(replace).length() + 2);
        stringBuilder.append("\"");
        stringBuilder.append(replace);
        stringBuilder.append("\"");
        return stringBuilder.toString();
    }

    /* JADX WARNING: Missing block: B:29:0x005d, code skipped:
            if (r2 > 2147483647L) goto L_0x005f;
     */
    /* JADX WARNING: Missing block: B:30:0x005f, code skipped:
            return null;
     */
    public static java.lang.Integer zzha(java.lang.String r9) {
        /*
        r0 = r9.length();
        r1 = 0;
        r2 = 11;
        if (r0 > r2) goto L_0x005f;
    L_0x0009:
        r0 = r9.length();
        if (r0 != 0) goto L_0x0010;
    L_0x000f:
        return r1;
    L_0x0010:
        r0 = 0;
        r2 = r9.charAt(r0);
        r3 = 45;
        r4 = 1;
        if (r2 != r3) goto L_0x0023;
    L_0x001a:
        r0 = r9.length();
        if (r0 != r4) goto L_0x0021;
    L_0x0020:
        return r1;
    L_0x0021:
        r0 = 1;
        goto L_0x0024;
    L_0x0023:
        r4 = 0;
    L_0x0024:
        r2 = 0;
    L_0x0026:
        r5 = r9.length();
        if (r0 >= r5) goto L_0x0047;
    L_0x002c:
        r5 = r9.charAt(r0);
        r6 = 48;
        if (r5 < r6) goto L_0x0046;
    L_0x0034:
        r6 = 57;
        if (r5 <= r6) goto L_0x0039;
    L_0x0038:
        return r1;
    L_0x0039:
        r6 = 10;
        r2 = r2 * r6;
        r5 = r5 + -48;
        r5 = (long) r5;
        r7 = r2 + r5;
        r0 = r0 + 1;
        r2 = r7;
        goto L_0x0026;
    L_0x0046:
        return r1;
    L_0x0047:
        if (r4 == 0) goto L_0x0058;
    L_0x0049:
        r2 = -r2;
        r4 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        r9 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r9 >= 0) goto L_0x0052;
    L_0x0051:
        return r1;
    L_0x0052:
        r9 = (int) r2;
        r9 = java.lang.Integer.valueOf(r9);
        return r9;
    L_0x0058:
        r4 = 2147483647; // 0x7fffffff float:NaN double:1.060997895E-314;
        r9 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r9 <= 0) goto L_0x0052;
    L_0x005f:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zd.zzha(java.lang.String):java.lang.Integer");
    }

    public static int zzj(long j, long j2) {
        return j < j2 ? -1 : j == j2 ? 0 : 1;
    }

    public static String zzj(double d) {
        StringBuilder stringBuilder = new StringBuilder(16);
        long doubleToLongBits = Double.doubleToLongBits(d);
        for (int i = 7; i >= 0; i--) {
            int i2 = (int) ((doubleToLongBits >>> (i << 3)) & 255);
            int i3 = (i2 >> 4) & 15;
            i2 &= 15;
            stringBuilder.append(zzcjC[i3]);
            stringBuilder.append(zzcjC[i2]);
        }
        return stringBuilder.toString();
    }

    public static int zzo(int i, int i2) {
        return i < i2 ? -1 : i == i2 ? 0 : 1;
    }
}
