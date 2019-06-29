package com.google.android.gms.internal;

import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.load.Key;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class zzcss {
    private static final String TAG = "zzcss";
    private static final char[] zzbCj = "0123456789ABCDEF".toCharArray();
    private static final Pattern zzbCk = Pattern.compile("/\\.\\.");
    private static final Pattern zzbCl = Pattern.compile("0[1-7][0-7]*");
    private static final Pattern zzbCm = Pattern.compile("0x[0-9a-f]*", 2);
    private static final Pattern zzbCn = Pattern.compile("^((?:0x[0-9a-f]+|[0-9\\\\.])+)$", 2);
    private final String mPath;
    private final String zzD;
    private final String zzbCo;
    private final String zzbCp;
    private final int zzbCq;
    private final String zzvi;

    static class zza {
        private static final String[] zzbCr = new String[]{"http", "https", "ftp"};
        private final String zzajd;
        private final String zzbCo;
        private final Uri zzbCs;
        private final URI zzbCt;
        private final Boolean zzbCu;
        private final Integer zzbCv;

        private zza(String str) {
            this.zzajd = str;
            this.zzbCs = Uri.parse(this.zzajd);
            try {
                URI uri = new URI(this.zzajd);
            } catch (URISyntaxException unused) {
            } catch (Throwable th) {
                this.zzbCt = null;
            }
            this.zzbCt = null;
            this.zzbCo = getScheme();
            this.zzbCu = Boolean.valueOf(zzAn());
            int i = -1;
            if (this.zzbCv != null) {
                i = this.zzbCv.intValue();
            } else if (this.zzbCs != null) {
                int port = this.zzbCs.getPort();
                if (port != -1) {
                    i = port;
                }
            }
            this.zzbCv = Integer.valueOf(i);
        }

        private final int getPort() {
            return this.zzbCv.intValue();
        }

        private final String getScheme() {
            if (this.zzbCo != null) {
                return this.zzbCo;
            }
            String scheme = this.zzbCs != null ? this.zzbCs.getScheme() : null;
            TextUtils.isEmpty(scheme);
            if (TextUtils.isEmpty(scheme) && !TextUtils.isEmpty(this.zzajd)) {
                int indexOf = this.zzajd.indexOf(":");
                if (indexOf != -1) {
                    String toLowerCase = this.zzajd.substring(0, indexOf).toLowerCase(Locale.US);
                    if (zzeU(toLowerCase)) {
                        scheme = toLowerCase;
                    }
                }
                if (TextUtils.isEmpty(scheme)) {
                    this.zzajd.startsWith("www.");
                    scheme = "http";
                }
            }
            return scheme != null ? scheme.toLowerCase(Locale.US) : null;
        }

        private final boolean zzAn() {
            return this.zzbCu != null ? this.zzbCu.booleanValue() : zzeU(this.zzbCo);
        }

        private static boolean zzeU(String str) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            for (String equals : zzbCr) {
                if (equals.equals(str)) {
                    return true;
                }
            }
            return false;
        }
    }

    public zzcss(String str) {
        if ((TextUtils.isEmpty(str) ^ 1) == 0) {
            this.zzD = null;
            this.zzbCo = null;
            this.zzbCp = null;
            this.zzbCq = -1;
            this.mPath = null;
            this.zzvi = null;
            return;
        }
        str = str.replaceAll("^\\s+", "").replaceAll("\\s+$", "").replaceAll("[\\t\\n\\r]", "");
        int indexOf = str.indexOf(35);
        if (indexOf != -1) {
            str = str.substring(0, indexOf);
        }
        zza zza = new zza(str);
        if (zza.zzAn()) {
            String str2;
            StringBuilder stringBuilder;
            String substring;
            CharSequence charSequence;
            String zzeO;
            this.zzbCo = zza.getScheme();
            this.zzbCq = zza.getPort();
            if (this.zzbCo != null) {
                str2 = this.zzbCo;
                stringBuilder = new StringBuilder(String.valueOf(str2).length() + 2);
                stringBuilder.append("^");
                stringBuilder.append(str2);
                stringBuilder.append(":");
                str = str.replaceAll(stringBuilder.toString(), "");
            }
            CharSequence zzeS = zzeS(str.replaceAll("^/+", ""));
            indexOf = zzeS.indexOf(63);
            if (indexOf != -1) {
                int i = indexOf + 1;
                substring = i < zzeS.length() ? zzeS.substring(i) : "";
                zzeS = zzeS.substring(0, indexOf);
            } else {
                substring = null;
            }
            if (TextUtils.isEmpty(zzeS)) {
                charSequence = null;
            } else {
                indexOf = zzeS.indexOf(47);
                str2 = indexOf != -1 ? zzeS.substring(0, indexOf) : zzeS;
                int indexOf2 = str2.indexOf(64);
                if (indexOf2 != -1) {
                    str2 = str2.substring(indexOf2 + 1);
                }
                if (this.zzbCq != -1) {
                    int i2 = this.zzbCq;
                    stringBuilder = new StringBuilder(13);
                    stringBuilder.append(":");
                    stringBuilder.append(i2);
                    stringBuilder.append("$");
                    str2 = str2.replaceAll(stringBuilder.toString(), "");
                }
                str2 = str2.replaceAll("^\\.*", "").replaceAll("\\.*$", "").replaceAll("\\.+", ".");
                zzeO = zzeO(str2);
                if (zzeO != null) {
                    str2 = zzeO;
                }
                charSequence = str2.toLowerCase(Locale.getDefault());
            }
            if (TextUtils.isEmpty(charSequence)) {
                this.zzD = null;
                this.zzbCp = null;
                this.mPath = null;
                this.zzvi = null;
                return;
            }
            zzeO = zzeQ(zzeS);
            this.zzbCp = zzeR(charSequence);
            this.mPath = zzeR(zzeO);
            if (!TextUtils.isEmpty(substring)) {
                substring = zzeR(substring);
            }
            this.zzvi = substring;
            this.zzD = zzeS;
            return;
        }
        this.zzD = null;
        this.zzbCo = null;
        this.zzbCp = null;
        this.zzbCq = -1;
        this.mPath = null;
        this.zzvi = null;
    }

    private static boolean isHexDigit(char c) {
        return (c >= '0' && c <= '9') || ((c >= 'A' && c <= 'F') || (c >= 'a' && c <= 'f'));
    }

    private final List<String> zzAl() {
        if (TextUtils.isEmpty(this.zzbCp)) {
            return null;
        }
        Object obj = null;
        ArrayList arrayList = new ArrayList();
        char[] toCharArray = this.zzbCp.toCharArray();
        for (int length = toCharArray.length - 2; length > 0 && arrayList.size() < 4; length--) {
            if (toCharArray[length] == '.') {
                if (obj != null) {
                    arrayList.add(this.zzbCp.substring(length + 1));
                } else {
                    obj = 1;
                }
            }
        }
        arrayList.add(this.zzbCp);
        return arrayList;
    }

    private final List<String> zzAm() {
        if (TextUtils.isEmpty(this.mPath)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        char[] toCharArray = this.mPath.toCharArray();
        for (int i = 0; i < toCharArray.length && arrayList.size() < 4; i++) {
            if (toCharArray[i] == '/') {
                arrayList.add(this.mPath.substring(0, i + 1));
            }
        }
        if (!(arrayList.isEmpty() || ((String) arrayList.get(arrayList.size() - 1)).equals(this.mPath))) {
            arrayList.add(this.mPath);
        }
        if (!TextUtils.isEmpty(this.zzvi)) {
            String str = this.mPath;
            String str2 = this.zzvi;
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 1) + String.valueOf(str2).length());
            stringBuilder.append(str);
            stringBuilder.append("?");
            stringBuilder.append(str2);
            arrayList.add(stringBuilder.toString());
        }
        return arrayList;
    }

    private static String zzeO(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Object[] objArr;
        String replaceAll = str.replaceAll("^\\[", "").replaceAll("\\]$", "");
        if (zzcsq.zzeI(replaceAll)) {
            str = zzcsq.zza(zzcsq.zzeN(replaceAll));
            if (str.contains(":")) {
                replaceAll = "[%s]";
                objArr = new Object[]{str};
            }
            return str;
        }
        if (TextUtils.isDigitsOnly(str)) {
            str = zzeP(str);
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
        } else if (zzbCn.matcher(replaceAll).find()) {
            int parseInt;
            StringBuilder stringBuilder;
            Matcher matcher = zzbCl.matcher(replaceAll);
            StringBuffer stringBuffer = new StringBuffer();
            while (matcher.find()) {
                parseInt = Integer.parseInt(matcher.group(), 8);
                stringBuilder = new StringBuilder(11);
                stringBuilder.append(parseInt);
                matcher.appendReplacement(stringBuffer, stringBuilder.toString());
            }
            matcher.appendTail(stringBuffer);
            matcher = zzbCm.matcher(stringBuffer.toString());
            stringBuffer = new StringBuffer();
            while (matcher.find()) {
                parseInt = Integer.parseInt(matcher.group().substring(2), 16);
                stringBuilder = new StringBuilder(11);
                stringBuilder.append(parseInt);
                matcher.appendReplacement(stringBuffer, stringBuilder.toString());
            }
            matcher.appendTail(stringBuffer);
            str = stringBuffer.toString();
            if (!str.contains(":")) {
                return str;
            }
            replaceAll = "[%s]";
            objArr = new Object[]{str};
        }
        return null;
        str = String.format(replaceAll, objArr);
        return str;
    }

    private static String zzeP(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            BigInteger bigInteger = new BigInteger(str);
            byte[] toByteArray = bigInteger.toByteArray();
            if (toByteArray.length < 4) {
                return null;
            }
            if (bigInteger.equals(new BigInteger(new byte[]{(byte) 0, r2[0], r2[1], r2[2], Arrays.copyOfRange(toByteArray, toByteArray.length - 4, toByteArray.length)[3]}))) {
                return Inet4Address.getByAddress(Arrays.copyOfRange(toByteArray, toByteArray.length - 4, toByteArray.length)).getHostAddress();
            }
            if (toByteArray.length >= 16) {
                toByteArray = Arrays.copyOfRange(toByteArray, toByteArray.length - 16, toByteArray.length);
            } else {
                byte[] bArr = new byte[16];
                int length = 16 - toByteArray.length;
                int i = 1;
                int i2 = 0;
                while (i <= length) {
                    int i3 = i2 + 1;
                    bArr[i2] = (byte) 0;
                    i++;
                    i2 = i3;
                }
                length = 0;
                while (length < toByteArray.length) {
                    i = i2 + 1;
                    bArr[i2] = toByteArray[length];
                    length++;
                    i2 = i;
                }
                toByteArray = bArr;
            }
            return String.format("[%s]", new Object[]{Inet6Address.getByAddress(toByteArray).getHostAddress()});
        } catch (ArrayIndexOutOfBoundsException | NumberFormatException | UnknownHostException unused) {
            return null;
        }
    }

    private final String zzeQ(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int indexOf = str.indexOf(47);
        str = (indexOf != -1 ? str.substring(indexOf) : "/").replaceAll("/\\./", "/").replaceAll("/\\.$", "/");
        if (zzbCk.matcher(str).find()) {
            try {
                str = new URI(this.zzbCo, "host", str, null).normalize().getRawPath();
            } catch (URISyntaxException unused) {
            }
        }
        return str.replaceAll("/+", "/");
    }

    private static String zzeR(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            byte[] bytes = str.getBytes(Key.STRING_CHARSET_NAME);
            StringBuilder stringBuilder = new StringBuilder();
            for (byte b : bytes) {
                char c = (char) (b & 255);
                if (c <= ' ' || c > '~' || c == '#' || c == '%') {
                    stringBuilder.append("%");
                    stringBuilder.append(zzbCj[c >>> 4]);
                    c = zzbCj[c & 15];
                }
                stringBuilder.append(c);
            }
            return stringBuilder.toString();
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    private static String zzeS(String str) {
        String str2 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int i = 0;
        while (true) {
            String str3 = str2;
            str2 = str;
            if (str2.equals(str3) || i >= 1024) {
                return str2;
            }
            str = zzeT(str2);
            i++;
        }
        return str2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0077  */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    private static java.lang.String zzeT(java.lang.String r10) {
        /*
        r0 = 0;
        r1 = "\\x";
        r2 = "%";
        r10 = r10.replace(r1, r2);	 Catch:{ UnsupportedEncodingException -> 0x0091 }
        r1 = "UTF-8";
        r10 = r10.getBytes(r1);	 Catch:{ UnsupportedEncodingException -> 0x0091 }
        r1 = new java.io.ByteArrayOutputStream;
        r2 = r10.length;
        r1.<init>(r2);
        r2 = 0;
    L_0x0016:
        r3 = r10.length;
        if (r2 >= r3) goto L_0x0085;
    L_0x0019:
        r3 = r10[r2];
        r4 = r3 & 255;
        r4 = (char) r4;
        r5 = 128; // 0x80 float:1.794E-43 double:6.32E-322;
        r6 = 1;
        if (r4 >= r5) goto L_0x0080;
    L_0x0023:
        r4 = r2 + 2;
        r5 = r10.length;
        if (r4 >= r5) goto L_0x0074;
    L_0x0028:
        r5 = r10[r2];
        r5 = r5 & 255;
        r5 = (char) r5;
        r7 = 37;
        if (r5 != r7) goto L_0x0074;
    L_0x0031:
        r5 = r2 + 1;
        r5 = r10[r5];
        r5 = r5 & 255;
        r5 = (char) r5;
        r7 = r10[r4];
        r7 = r7 & 255;
        r7 = (char) r7;
        r8 = isHexDigit(r5);
        if (r8 == 0) goto L_0x0074;
    L_0x0043:
        r8 = isHexDigit(r7);
        if (r8 == 0) goto L_0x0074;
    L_0x0049:
        r8 = new java.lang.StringBuilder;
        r8.<init>(r6);
        r8.append(r5);
        r5 = r8.toString();
        r8 = 16;
        r5 = java.lang.Integer.parseInt(r5, r8);
        r5 = r5 << 4;
        r9 = new java.lang.StringBuilder;
        r9.<init>(r6);
        r9.append(r7);
        r7 = r9.toString();
        r7 = java.lang.Integer.parseInt(r7, r8);
        r5 = r5 + r7;
        r5 = (byte) r5;
        r5 = java.lang.Byte.valueOf(r5);
        goto L_0x0075;
    L_0x0074:
        r5 = r0;
    L_0x0075:
        if (r5 == 0) goto L_0x0080;
    L_0x0077:
        r2 = r5.byteValue();
        r1.write(r2);
        r2 = r4;
        goto L_0x0083;
    L_0x0080:
        r1.write(r3);
    L_0x0083:
        r2 = r2 + r6;
        goto L_0x0016;
    L_0x0085:
        r10 = new java.lang.String;	 Catch:{  }
        r1 = r1.toByteArray();	 Catch:{  }
        r2 = "UTF-8";
        r10.<init>(r1, r2);	 Catch:{  }
        return r10;
    L_0x0091:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcss.zzeT(java.lang.String):java.lang.String");
    }

    /* JADX WARNING: Missing block: B:25:0x0079, code skipped:
            if (r3.isEmpty() == false) goto L_0x007d;
     */
    public final java.util.List<com.google.android.gms.internal.zzcsp> zzAk() {
        /*
        r9 = this;
        r0 = r9.zzD;
        r0 = android.text.TextUtils.isEmpty(r0);
        r1 = 0;
        if (r0 != 0) goto L_0x007c;
    L_0x0009:
        r0 = r9.zzbCp;
        r0 = zzeO(r0);
        if (r0 == 0) goto L_0x001a;
    L_0x0011:
        r2 = new java.util.ArrayList;
        r2.<init>();
        r2.add(r0);
        goto L_0x001e;
    L_0x001a:
        r2 = r9.zzAl();
    L_0x001e:
        if (r2 == 0) goto L_0x007c;
    L_0x0020:
        r0 = r2.isEmpty();
        if (r0 == 0) goto L_0x0027;
    L_0x0026:
        goto L_0x007c;
    L_0x0027:
        r0 = r9.zzAm();
        if (r0 == 0) goto L_0x007c;
    L_0x002d:
        r3 = r0.isEmpty();
        if (r3 == 0) goto L_0x0034;
    L_0x0033:
        goto L_0x007c;
    L_0x0034:
        r3 = new java.util.LinkedList;
        r3.<init>();
        r2 = r2.iterator();
    L_0x003d:
        r4 = r2.hasNext();
        if (r4 == 0) goto L_0x0075;
    L_0x0043:
        r4 = r2.next();
        r4 = (java.lang.String) r4;
        r5 = r0.iterator();
    L_0x004d:
        r6 = r5.hasNext();
        if (r6 == 0) goto L_0x003d;
    L_0x0053:
        r6 = r5.next();
        r6 = (java.lang.String) r6;
        r7 = java.lang.String.valueOf(r4);
        r6 = java.lang.String.valueOf(r6);
        r8 = r6.length();
        if (r8 == 0) goto L_0x006c;
    L_0x0067:
        r6 = r7.concat(r6);
        goto L_0x0071;
    L_0x006c:
        r6 = new java.lang.String;
        r6.<init>(r7);
    L_0x0071:
        r3.add(r6);
        goto L_0x004d;
    L_0x0075:
        r0 = r3.isEmpty();
        if (r0 != 0) goto L_0x007c;
    L_0x007b:
        goto L_0x007d;
    L_0x007c:
        r3 = r1;
    L_0x007d:
        if (r3 == 0) goto L_0x00cd;
    L_0x007f:
        r0 = r3.isEmpty();
        if (r0 == 0) goto L_0x0086;
    L_0x0085:
        return r1;
    L_0x0086:
        r0 = "SHA-256";
        r0 = java.security.MessageDigest.getInstance(r0);	 Catch:{ NoSuchAlgorithmException -> 0x008d }
        goto L_0x008e;
    L_0x008d:
        r0 = r1;
    L_0x008e:
        if (r0 != 0) goto L_0x0091;
    L_0x0090:
        return r1;
    L_0x0091:
        r2 = new java.util.ArrayList;
        r4 = r3.size();
        r2.<init>(r4);
        r3 = r3.iterator();
    L_0x009e:
        r4 = r3.hasNext();
        if (r4 == 0) goto L_0x00c6;
    L_0x00a4:
        r4 = r3.next();
        r4 = (java.lang.String) r4;
        r5 = android.text.TextUtils.isEmpty(r4);
        if (r5 != 0) goto L_0x009e;
    L_0x00b0:
        r5 = "UTF-8";
        r4 = r4.getBytes(r5);	 Catch:{ UnsupportedEncodingException -> 0x00c2 }
        r4 = r0.digest(r4);	 Catch:{ UnsupportedEncodingException -> 0x00c2 }
        r5 = new com.google.android.gms.internal.zzcsp;	 Catch:{ UnsupportedEncodingException -> 0x00c2 }
        r5.<init>(r4);	 Catch:{ UnsupportedEncodingException -> 0x00c2 }
        r2.add(r5);	 Catch:{ UnsupportedEncodingException -> 0x00c2 }
    L_0x00c2:
        r0.reset();
        goto L_0x009e;
    L_0x00c6:
        r0 = r2.isEmpty();
        if (r0 != 0) goto L_0x00cd;
    L_0x00cc:
        return r2;
    L_0x00cd:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcss.zzAk():java.util.List");
    }
}
