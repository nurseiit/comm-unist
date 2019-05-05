package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.measurement.AppMeasurement.Param;
import com.google.android.gms.plus.PlusShare;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Map;

@zzzn
public final class zzqm implements zzrd {
    public final void zza(zzaka zzaka, Map<String, String> map) {
        String str = (String) map.get("action");
        String str2;
        zznb zzdR;
        if ("tick".equals(str)) {
            str = (String) map.get(PlusShare.KEY_CALL_TO_ACTION_LABEL);
            String str3 = (String) map.get("start_label");
            str2 = (String) map.get(Param.TIMESTAMP);
            if (TextUtils.isEmpty(str)) {
                zzajc.zzaT("No label given for CSI tick.");
            } else if (TextUtils.isEmpty(str2)) {
                zzajc.zzaT("No timestamp given for CSI tick.");
            } else {
                try {
                    long elapsedRealtime = zzbs.zzbF().elapsedRealtime() + (Long.parseLong(str2) - zzbs.zzbF().currentTimeMillis());
                    if (TextUtils.isEmpty(str3)) {
                        str3 = "native:view_load";
                    }
                    zzaka.zziG().zza(str, str3, elapsedRealtime);
                } catch (NumberFormatException e) {
                    zzajc.zzc("Malformed timestamp for CSI tick.", e);
                }
            }
        } else if ("experiment".equals(str)) {
            str2 = (String) map.get(FirebaseAnalytics.Param.VALUE);
            if (TextUtils.isEmpty(str2)) {
                zzajc.zzaT("No value given for CSI experiment.");
                return;
            }
            zzdR = zzaka.zziG().zzdR();
            if (zzdR == null) {
                zzajc.zzaT("No ticker for WebView, dropping experiment ID.");
            } else {
                zzdR.zzh("e", str2);
            }
        } else {
            if ("extra".equals(str)) {
                str = (String) map.get("name");
                str2 = (String) map.get(FirebaseAnalytics.Param.VALUE);
                if (TextUtils.isEmpty(str2)) {
                    zzajc.zzaT("No value given for CSI extra.");
                } else if (TextUtils.isEmpty(str)) {
                    zzajc.zzaT("No name given for CSI extra.");
                } else {
                    zzdR = zzaka.zziG().zzdR();
                    if (zzdR == null) {
                        zzajc.zzaT("No ticker for WebView, dropping extra parameter.");
                        return;
                    }
                    zzdR.zzh(str, str2);
                }
            }
        }
    }
}
