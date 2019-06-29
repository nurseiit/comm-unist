package com.google.android.gms.internal;

import android.util.Log;
import com.google.ads.AdRequest;
import com.google.android.gms.ads.internal.zzbs;

@zzzn
public final class zzafr extends zzajc {
    public static void v(String str) {
        if (zzhM()) {
            Log.v(AdRequest.LOGTAG, str);
        }
    }

    public static boolean zzhM() {
        if (zzajc.zzz(2)) {
            if (((Boolean) zzbs.zzbL().zzd(zzmo.zzEp)).booleanValue()) {
                return true;
            }
        }
        return false;
    }
}
