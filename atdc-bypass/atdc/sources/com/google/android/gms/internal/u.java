package com.google.android.gms.internal;

import com.bumptech.glide.load.Key;
import com.google.android.gms.common.internal.zzbo;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;

public final class u extends zzcxq {
    static String decode(String str, String str2) throws UnsupportedEncodingException {
        Charset forName = Charset.forName(Key.STRING_CHARSET_NAME);
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt != '%') {
                stringBuilder.append((char) charAt);
                i++;
            } else {
                byte zzv = zzv(str, i);
                int i2 = i + 3;
                if ((zzv & 128) == 0) {
                    if (str2.indexOf(zzv) == -1) {
                        stringBuilder.append((char) zzv);
                    } else {
                        stringBuilder.append(str.substring(i2 - 3, i2));
                    }
                    i = i2;
                } else {
                    int i3 = 0;
                    while (((zzv << i3) & 128) != 0) {
                        i3++;
                    }
                    if (i3 < 2 || i3 > 4) {
                        throw new UnsupportedEncodingException();
                    }
                    byte[] bArr = new byte[i3];
                    bArr[0] = zzv;
                    int i4 = i2;
                    for (i2 = 1; i2 < i3; i2++) {
                        byte zzv2 = zzv(str, i4);
                        i4 += 3;
                        if ((zzv2 & 192) != 128) {
                            throw new UnsupportedEncodingException();
                        }
                        bArr[i2] = zzv2;
                    }
                    CharBuffer decode = forName.decode(ByteBuffer.wrap(bArr));
                    if (decode.length() != 1 || str2.indexOf(decode.charAt(0)) == -1) {
                        stringBuilder.append(decode);
                    } else {
                        stringBuilder.append(str.substring(i, i4));
                    }
                    i = i4;
                }
            }
        }
        return stringBuilder.toString();
    }

    private static byte zzv(String str, int i) throws UnsupportedEncodingException {
        int i2 = i + 3;
        if (i2 > str.length() || str.charAt(i) != '%') {
            throw new UnsupportedEncodingException();
        }
        str = str.substring(i + 1, i2);
        if (str.charAt(0) == '+' || str.charAt(0) == '-') {
            throw new UnsupportedEncodingException();
        }
        try {
            return (byte) Integer.parseInt(str, 16);
        } catch (NumberFormatException unused) {
            throw new UnsupportedEncodingException();
        }
    }

    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzaf(true);
        try {
            return new eb(decode(zzcxp.zzd(dpVarArr.length > 0 ? (dp) zzbo.zzu(dpVarArr[0]) : dv.zzbLu), "#;/?:@&=+$,"));
        } catch (UnsupportedEncodingException unused) {
            return dv.zzbLu;
        }
    }
}
