package com.google.android.gms.internal;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzbo;

public final class zzare {
    public static String zzbN(String str) {
        boolean z = true;
        zzbo.zzb(TextUtils.isEmpty(str) ^ 1, (Object) "account type cannot be empty");
        String scheme = Uri.parse(str).getScheme();
        if (!("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme))) {
            z = false;
        }
        zzbo.zzb(z, (Object) "Account type must be an http or https URI");
        return str;
    }
}
