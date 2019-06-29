package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Log;
import com.google.android.gms.common.zzp;

final class zzcbs {
    static boolean zzbg(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.google.android.gms", 64);
            if (zzp.zzax(context).zza(context.getPackageManager(), packageInfo)) {
                return true;
            }
            String str = "InstantAppsApi";
            String str2 = "Incorrect signature for package ";
            String valueOf = String.valueOf(packageInfo.packageName);
            Log.e(str, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
            return false;
        } catch (NameNotFoundException unused) {
            return false;
        }
    }
}
