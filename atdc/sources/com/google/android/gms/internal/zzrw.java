package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Color;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.google.android.gms.ads.internal.overlay.zzaa;
import com.google.android.gms.ads.internal.overlay.zzaq;
import com.google.android.gms.ads.internal.zzbs;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

@zzzn
public final class zzrw implements zzrd {
    private boolean zzJK;

    private static int zza(Context context, Map<String, String> map, String str, int i) {
        String str2 = (String) map.get(str);
        if (str2 != null) {
            try {
                zzji.zzds();
                return zzaiy.zzc(context, Integer.parseInt(str2));
            } catch (NumberFormatException unused) {
                StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 34) + String.valueOf(str2).length());
                stringBuilder.append("Could not parse ");
                stringBuilder.append(str);
                stringBuilder.append(" in a video GMSG: ");
                stringBuilder.append(str2);
                zzajc.zzaT(stringBuilder.toString());
            }
        }
        return i;
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        String str = (String) map.get("action");
        if (str == null) {
            zzajc.zzaT("Action missing from video GMSG.");
            return;
        }
        if (zzajc.zzz(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String valueOf = String.valueOf(jSONObject.toString());
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 13) + String.valueOf(valueOf).length());
            stringBuilder.append("Video GMSG: ");
            stringBuilder.append(str);
            stringBuilder.append(" ");
            stringBuilder.append(valueOf);
            zzajc.zzaC(stringBuilder.toString());
        }
        String str2;
        if ("background".equals(str)) {
            str2 = (String) map.get("color");
            if (TextUtils.isEmpty(str2)) {
                zzajc.zzaT("Color parameter missing from color video GMSG.");
                return;
            }
            try {
                zzaka.setBackgroundColor(Color.parseColor(str2));
                return;
            } catch (IllegalArgumentException unused) {
                zzajc.zzaT("Invalid color parameter in video GMSG.");
                return;
            }
        }
        int i = 0;
        if ("decoderProps".equals(str)) {
            str2 = (String) map.get("mimeTypes");
            if (str2 == null) {
                zzajc.zzaT("No MIME types specified for decoder properties inspection.");
                zzaa.zza(zzaka, "missingMimeTypes");
                return;
            } else if (VERSION.SDK_INT < 16) {
                zzajc.zzaT("Video decoder properties available on API versions >= 16.");
                zzaa.zza(zzaka, "deficientApiVersion");
                return;
            } else {
                HashMap hashMap = new HashMap();
                String[] split = str2.split(",");
                int length = split.length;
                while (i < length) {
                    String str3 = split[i];
                    hashMap.put(str3, zzaiw.zzaQ(str3.trim()));
                    i++;
                }
                zzaa.zzc(zzaka, hashMap);
                return;
            }
        }
        zzajz zziE = zzaka.zziE();
        if (zziE == null) {
            zzajc.zzaT("Could not get underlay container for a video GMSG.");
            return;
        }
        boolean equals = "new".equals(str);
        boolean equals2 = "position".equals(str);
        Context context;
        int zza;
        if (equals || equals2) {
            int min;
            int parseInt;
            context = zzaka.getContext();
            int zza2 = zza(context, map, "x", 0);
            int zza3 = zza(context, map, "y", 0);
            int zza4 = zza(context, map, "w", -1);
            zza = zza(context, map, "h", -1);
            if (((Boolean) zzbs.zzbL().zzd(zzmo.zzFB)).booleanValue()) {
                zza4 = Math.min(zza4, zzaka.getMeasuredWidth() - zza2);
                min = Math.min(zza, zzaka.getMeasuredHeight() - zza3);
            } else {
                min = zza;
            }
            try {
                parseInt = Integer.parseInt((String) map.get("player"));
            } catch (NumberFormatException unused2) {
                parseInt = 0;
            }
            boolean parseBoolean = Boolean.parseBoolean((String) map.get("spherical"));
            if (equals && zziE.zzip() == null) {
                zziE.zza(zza2, zza3, zza4, min, parseInt, parseBoolean, new zzaq((String) map.get("flags")));
                return;
            } else {
                zziE.zze(zza2, zza3, zza4, min);
                return;
            }
        }
        zzaa zzip = zziE.zzip();
        String str4;
        if (zzip == null) {
            zzaa.zzh(zzaka);
        } else if ("click".equals(str)) {
            Context context2 = zzaka.getContext();
            zza = zza(context2, map, "x", 0);
            int zza5 = zza(context2, map, "y", 0);
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, (float) zza, (float) zza5, 0);
            zzip.zze(obtain);
            obtain.recycle();
        } else if ("currentTime".equals(str)) {
            str4 = (String) map.get("time");
            if (str4 == null) {
                zzajc.zzaT("Time parameter missing from currentTime video GMSG.");
                return;
            }
            try {
                zzip.seekTo((int) (Float.parseFloat(str4) * 1000.0f));
            } catch (NumberFormatException unused3) {
                str2 = "Could not parse time parameter from currentTime video GMSG: ";
                str4 = String.valueOf(str4);
                zzajc.zzaT(str4.length() != 0 ? str2.concat(str4) : new String(str2));
            }
        } else if ("hide".equals(str)) {
            zzip.setVisibility(4);
        } else if ("load".equals(str)) {
            zzip.zzfY();
        } else if ("muted".equals(str)) {
            if (Boolean.parseBoolean((String) map.get("muted"))) {
                zzip.zzfZ();
            } else {
                zzip.zzga();
            }
        } else if ("pause".equals(str)) {
            zzip.pause();
        } else if ("play".equals(str)) {
            zzip.play();
        } else if ("show".equals(str)) {
            zzip.setVisibility(0);
        } else if ("src".equals(str)) {
            zzip.zzaq((String) map.get("src"));
        } else if ("touchMove".equals(str)) {
            context = zzaka.getContext();
            zzip.zza((float) zza(context, map, "dx", 0), (float) zza(context, map, "dy", 0));
            if (!this.zzJK) {
                zzaka.zziu().zzfQ();
                this.zzJK = true;
            }
        } else if (MediaRouteProviderProtocol.CLIENT_DATA_VOLUME.equals(str)) {
            str4 = (String) map.get(MediaRouteProviderProtocol.CLIENT_DATA_VOLUME);
            if (str4 == null) {
                zzajc.zzaT("Level parameter missing from volume video GMSG.");
                return;
            }
            try {
                zzip.zzb(Float.parseFloat(str4));
            } catch (NumberFormatException unused4) {
                str2 = "Could not parse volume parameter from volume video GMSG: ";
                str4 = String.valueOf(str4);
                zzajc.zzaT(str4.length() != 0 ? str2.concat(str4) : new String(str2));
            }
        } else if ("watermark".equals(str)) {
            zzip.zzgb();
        } else {
            str4 = "Unknown video action: ";
            str2 = String.valueOf(str);
            zzajc.zzaT(str2.length() != 0 ? str4.concat(str2) : new String(str4));
        }
    }
}
