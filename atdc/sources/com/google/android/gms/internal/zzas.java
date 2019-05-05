package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.http.AndroidHttpClient;
import android.os.Build.VERSION;
import java.io.File;

public final class zzas {
    public static zzs zza(Context context, zzan zzan) {
        String stringBuilder;
        File file = new File(context.getCacheDir(), "volley");
        String str = "volley/0";
        try {
            String packageName = context.getPackageName();
            int i = context.getPackageManager().getPackageInfo(packageName, 0).versionCode;
            StringBuilder stringBuilder2 = new StringBuilder(String.valueOf(packageName).length() + 12);
            stringBuilder2.append(packageName);
            stringBuilder2.append("/");
            stringBuilder2.append(i);
            stringBuilder = stringBuilder2.toString();
        } catch (NameNotFoundException unused) {
            stringBuilder = str;
        }
        zzs zzs = new zzs(new zzag(file), new zzad(VERSION.SDK_INT >= 9 ? new zzao() : new zzak(AndroidHttpClient.newInstance(stringBuilder))));
        zzs.start();
        return zzs;
    }
}
