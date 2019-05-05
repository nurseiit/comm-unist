package com.google.android.gms.internal;

import com.bumptech.glide.load.Key;
import com.google.android.gms.common.internal.zzbo;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

public final class w extends zzcxq {
    static String encode(String str, String str2) throws UnsupportedEncodingException {
        StringBuilder stringBuilder = new StringBuilder();
        Charset forName = Charset.forName(Key.STRING_CHARSET_NAME);
        int i = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (str2.indexOf(charAt) != -1) {
                stringBuilder.append((char) charAt);
                i++;
            } else {
                int i2;
                if (Character.isHighSurrogate((char) charAt)) {
                    i2 = i + 1;
                    if (i2 >= str.length()) {
                        throw new UnsupportedEncodingException();
                    } else if (Character.isLowSurrogate(str.charAt(i2))) {
                        i2 = 2;
                    } else {
                        throw new UnsupportedEncodingException();
                    }
                }
                i2 = 1;
                i2 += i;
                byte[] bytes = str.substring(i, i2).getBytes(forName);
                for (int i3 = 0; i3 < bytes.length; i3++) {
                    stringBuilder.append("%");
                    stringBuilder.append(Character.toUpperCase(Character.forDigit((bytes[i3] >> 4) & 15, 16)));
                    stringBuilder.append(Character.toUpperCase(Character.forDigit(bytes[i3] & 15, 16)));
                }
                i = i2;
            }
        }
        return stringBuilder.toString().replaceAll(" ", "%20");
    }

    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        zzbo.zzaf(true);
        try {
            return new eb(encode(zzcxp.zzd(dpVarArr.length > 0 ? (dp) zzbo.zzu(dpVarArr[0]) : dv.zzbLu), "#;/?:@&=+$,abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_.!~*'()0123456789"));
        } catch (UnsupportedEncodingException unused) {
            return dv.zzbLu;
        }
    }
}
