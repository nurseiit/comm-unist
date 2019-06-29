package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources.NotFoundException;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.util.zzj;
import com.google.firebase.auth.PhoneAuthProvider;

public final class zzbui {
    private static int zzaVq = -1;

    public static int zzaU(Context context) {
        if (zzaVq == -1) {
            int i;
            if (zzj.zzaG(context)) {
                i = 3;
            } else {
                PackageManager packageManager = context.getPackageManager();
                int i2 = 0;
                Object obj = (packageManager.hasSystemFeature("com.google.android.tv") || packageManager.hasSystemFeature("android.hardware.type.television") || packageManager.hasSystemFeature("android.software.leanback")) ? 1 : null;
                if (obj != null) {
                    zzaVq = 0;
                } else {
                    Object obj2 = (!zzj.zza(context.getResources()) || zzaV(context)) ? null : 1;
                    if (obj2 != null) {
                        i = 2;
                    } else {
                        if (!TextUtils.isEmpty(Build.PRODUCT) && Build.PRODUCT.startsWith("glass_")) {
                            i2 = 1;
                        }
                        if (i2 != 0) {
                            i = 6;
                        } else {
                            zzaVq = 1;
                        }
                    }
                }
            }
            zzaVq = i;
        }
        return zzaVq;
    }

    private static boolean zzaV(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService(PhoneAuthProvider.PROVIDER_ID)).getPhoneType() != 0;
        } catch (NotFoundException e) {
            Log.wtf("Fitness", "Unable to determine type of device, assuming phone.", e);
            return true;
        }
    }
}
