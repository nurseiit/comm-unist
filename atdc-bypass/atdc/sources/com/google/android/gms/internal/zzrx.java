package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzbs;
import java.util.Map;

@zzzn
final class zzrx implements zzrd {
    zzrx() {
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        if (((Boolean) zzbs.zzbL().zzd(zzmo.zzEC)).booleanValue()) {
            zzaks zziH = zzaka.zziH();
            if (zziH == null) {
                try {
                    zzaks zzaks = new zzaks(zzaka, Float.parseFloat((String) map.get("duration")), "1".equals(map.get("customControlsAllowed")));
                    zzaka.zza(zzaks);
                    zziH = zzaks;
                } catch (NullPointerException | NumberFormatException e) {
                    zzajc.zzb("Unable to parse videoMeta message.", e);
                    zzbs.zzbD().zza(e, "VideoMetaGmsgHandler.onGmsg");
                    return;
                }
            }
            boolean equals = "1".equals(map.get("muted"));
            float parseFloat = Float.parseFloat((String) map.get("currentTime"));
            int parseInt = Integer.parseInt((String) map.get("playbackState"));
            if (parseInt < 0 || 3 < parseInt) {
                parseInt = 0;
            }
            String str = (String) map.get("aspectRatio");
            float parseFloat2 = TextUtils.isEmpty(str) ? 0.0f : Float.parseFloat(str);
            if (zzajc.zzz(3)) {
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 79);
                stringBuilder.append("Video Meta GMSG: isMuted : ");
                stringBuilder.append(equals);
                stringBuilder.append(" , playbackState : ");
                stringBuilder.append(parseInt);
                stringBuilder.append(" , aspectRatio : ");
                stringBuilder.append(str);
                zzajc.zzaC(stringBuilder.toString());
            }
            zziH.zza(parseFloat, parseInt, equals, parseFloat2);
        }
    }
}
