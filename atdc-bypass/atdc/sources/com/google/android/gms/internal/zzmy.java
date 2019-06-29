package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import android.text.TextUtils;

final class zzmy extends zzmv {
    zzmy() {
    }

    @Nullable
    private static String zzN(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int i = 0;
        int length = str.length();
        while (i < str.length() && str.charAt(i) == ',') {
            i++;
        }
        while (length > 0 && str.charAt(length - 1) == ',') {
            length--;
        }
        return (i == 0 && length == str.length()) ? str : str.substring(i, length);
    }

    public final String zzg(@Nullable String str, String str2) {
        str = zzN(str);
        str2 = zzN(str2);
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 1) + String.valueOf(str2).length());
        stringBuilder.append(str);
        stringBuilder.append(",");
        stringBuilder.append(str2);
        return stringBuilder.toString();
    }
}
