package com.google.android.gms.internal;

import android.content.Context;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzbs;
import java.math.BigInteger;
import java.util.Locale;

@zzzn
public final class zzafo {
    private static String zzYU;
    private static final Object zzuF = new Object();

    public static String zzb(Context context, String str, String str2) {
        String format;
        synchronized (zzuF) {
            if (zzYU == null && !TextUtils.isEmpty(str)) {
                try {
                    ClassLoader classLoader = context.createPackageContext(str2, 3).getClassLoader();
                    Class cls = Class.forName("com.google.ads.mediation.MediationAdapter", false, classLoader);
                    BigInteger bigInteger = new BigInteger(new byte[1]);
                    String[] split = str.split(",");
                    BigInteger bigInteger2 = bigInteger;
                    for (int i = 0; i < split.length; i++) {
                        zzbs.zzbz();
                        if (zzagz.zza(classLoader, cls, split[i])) {
                            bigInteger2 = bigInteger2.setBit(i);
                        }
                    }
                    format = String.format(Locale.US, "%X", new Object[]{bigInteger2});
                } catch (Throwable unused) {
                    format = NotificationCompat.CATEGORY_ERROR;
                }
                zzYU = format;
            }
            format = zzYU;
        }
        return format;
    }

    public static String zzhK() {
        String str;
        synchronized (zzuF) {
            str = zzYU;
        }
        return str;
    }
}
