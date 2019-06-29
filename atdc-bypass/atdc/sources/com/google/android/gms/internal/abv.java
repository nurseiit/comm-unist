package com.google.android.gms.internal;

import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzbo;
import java.io.UnsupportedEncodingException;

public final class abv {
    @NonNull
    public static String zzhI(@Nullable String str) throws UnsupportedEncodingException {
        return TextUtils.isEmpty(str) ? "" : zzhJ(Uri.encode(str));
    }

    @NonNull
    public static String zzhJ(@NonNull String str) {
        zzbo.zzu(str);
        return str.replace("%2F", "/");
    }

    @NonNull
    public static String zzhK(@NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (!str.startsWith("/") && !str.endsWith("/") && !str.contains("//")) {
            return str;
        }
        StringBuilder stringBuilder = new StringBuilder();
        for (CharSequence charSequence : str.split("/")) {
            if (!TextUtils.isEmpty(charSequence)) {
                if (stringBuilder.length() > 0) {
                    stringBuilder.append("/");
                }
                stringBuilder.append(charSequence);
            }
        }
        return stringBuilder.toString();
    }
}
