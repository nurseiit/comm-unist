package com.google.android.gms.internal;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzbs;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@zzzn
public final class zzaby {
    private int mOrientation = -1;
    private String zzHD;
    private final zzaae zzMM;
    private boolean zzMy = false;
    private List<String> zzRy;
    private String zzUS;
    private String zzUT;
    private List<String> zzUU;
    private String zzUV;
    private String zzUW;
    private String zzUX;
    private List<String> zzUY;
    private long zzUZ = -1;
    private boolean zzVa = false;
    private final long zzVb = -1;
    private long zzVc = -1;
    private boolean zzVd = false;
    private boolean zzVe = false;
    private boolean zzVf = false;
    private boolean zzVg = true;
    private boolean zzVh = true;
    private String zzVi = "";
    private boolean zzVj = false;
    private zzaee zzVk;
    private List<String> zzVl;
    private List<String> zzVm;
    private boolean zzVn = false;
    private zzaak zzVo;
    private boolean zzVp = false;
    private String zzVq;
    private List<String> zzVr;
    private boolean zzVs;
    private String zzVt;
    private zzaeq zzVu;
    private boolean zzVv;

    public zzaby(zzaae zzaae, String str) {
        this.zzUT = str;
        this.zzMM = zzaae;
    }

    private static String zza(Map<String, List<String>> map, String str) {
        List list = (List) map.get(str);
        return (list == null || list.isEmpty()) ? null : (String) list.get(0);
    }

    private static long zzb(Map<String, List<String>> map, String str) {
        List list = (List) map.get(str);
        if (!(list == null || list.isEmpty())) {
            String str2 = (String) list.get(0);
            try {
                return (long) (Float.parseFloat(str2) * 1000.0f);
            } catch (NumberFormatException unused) {
                StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 36) + String.valueOf(str2).length());
                stringBuilder.append("Could not parse float from ");
                stringBuilder.append(str);
                stringBuilder.append(" header: ");
                stringBuilder.append(str2);
                zzajc.zzaT(stringBuilder.toString());
            }
        }
        return -1;
    }

    private static List<String> zzc(Map<String, List<String>> map, String str) {
        List list = (List) map.get(str);
        if (!(list == null || list.isEmpty())) {
            String str2 = (String) list.get(0);
            if (str2 != null) {
                return Arrays.asList(str2.trim().split("\\s+"));
            }
        }
        return null;
    }

    private static boolean zzd(Map<String, List<String>> map, String str) {
        List list = (List) map.get(str);
        return (list == null || list.isEmpty() || !Boolean.valueOf((String) list.get(0)).booleanValue()) ? false : true;
    }

    public final void zza(String str, Map<String, List<String>> map, String str2) {
        this.zzHD = str2;
        zzh(map);
    }

    public final zzaai zze(long j) {
        zzaae zzaae = this.zzMM;
        String str = this.zzUT;
        String str2 = this.zzHD;
        List list = this.zzUU;
        List list2 = this.zzUY;
        long j2 = this.zzUZ;
        boolean z = this.zzVa;
        List list3 = this.zzRy;
        long j3 = this.zzVc;
        int i = this.mOrientation;
        String str3 = this.zzUS;
        String str4 = this.zzUW;
        String str5 = str3;
        return new zzaai(zzaae, str, str2, list, list2, j2, z, -1, list3, j3, i, str5, j, str4, this.zzUX, this.zzVd, this.zzVe, this.zzVf, this.zzVg, false, this.zzVi, this.zzVj, this.zzMy, this.zzVk, this.zzVl, this.zzVm, this.zzVn, this.zzVo, this.zzVp, this.zzVq, this.zzVr, this.zzVs, this.zzVt, this.zzVu, this.zzUV, this.zzVh, this.zzVv);
    }

    public final void zzh(Map<String, List<String>> map) {
        String str;
        this.zzUS = zza(map, "X-Afma-Ad-Size");
        this.zzVt = zza(map, "X-Afma-Ad-Slot-Size");
        List zzc = zzc(map, "X-Afma-Click-Tracking-Urls");
        if (zzc != null) {
            this.zzUU = zzc;
        }
        this.zzUV = zza(map, "X-Afma-Debug-Signals");
        zzc = (List) map.get("X-Afma-Debug-Dialog");
        if (!(zzc == null || zzc.isEmpty())) {
            this.zzUW = (String) zzc.get(0);
        }
        zzc = zzc(map, "X-Afma-Tracking-Urls");
        if (zzc != null) {
            this.zzUY = zzc;
        }
        long zzb = zzb(map, "X-Afma-Interstitial-Timeout");
        if (zzb != -1) {
            this.zzUZ = zzb;
        }
        this.zzVa |= zzd(map, "X-Afma-Mediation");
        zzc = zzc(map, "X-Afma-Manual-Tracking-Urls");
        if (zzc != null) {
            this.zzRy = zzc;
        }
        zzb = zzb(map, "X-Afma-Refresh-Rate");
        if (zzb != -1) {
            this.zzVc = zzb;
        }
        zzc = (List) map.get("X-Afma-Orientation");
        if (!(zzc == null || zzc.isEmpty())) {
            int zzhU;
            str = (String) zzc.get(0);
            if ("portrait".equalsIgnoreCase(str)) {
                zzhU = zzbs.zzbB().zzhU();
            } else if ("landscape".equalsIgnoreCase(str)) {
                zzhU = zzbs.zzbB().zzhT();
            }
            this.mOrientation = zzhU;
        }
        this.zzUX = zza(map, "X-Afma-ActiveView");
        zzc = (List) map.get("X-Afma-Use-HTTPS");
        if (!(zzc == null || zzc.isEmpty())) {
            this.zzVf = Boolean.valueOf((String) zzc.get(0)).booleanValue();
        }
        this.zzVd |= zzd(map, "X-Afma-Custom-Rendering-Allowed");
        this.zzVe = "native".equals(zza(map, "X-Afma-Ad-Format"));
        zzc = (List) map.get("X-Afma-Content-Url-Opted-Out");
        if (!(zzc == null || zzc.isEmpty())) {
            this.zzVg = Boolean.valueOf((String) zzc.get(0)).booleanValue();
        }
        zzc = (List) map.get("X-Afma-Content-Vertical-Opted-Out");
        if (!(zzc == null || zzc.isEmpty())) {
            this.zzVh = Boolean.valueOf((String) zzc.get(0)).booleanValue();
        }
        zzc = (List) map.get("X-Afma-Gws-Query-Id");
        if (!(zzc == null || zzc.isEmpty())) {
            this.zzVi = (String) zzc.get(0);
        }
        str = zza(map, "X-Afma-Fluid");
        if (str != null && str.equals("height")) {
            this.zzVj = true;
        }
        this.zzMy = "native_express".equals(zza(map, "X-Afma-Ad-Format"));
        this.zzVk = zzaee.zzaz(zza(map, "X-Afma-Rewards"));
        if (this.zzVl == null) {
            this.zzVl = zzc(map, "X-Afma-Reward-Video-Start-Urls");
        }
        if (this.zzVm == null) {
            this.zzVm = zzc(map, "X-Afma-Reward-Video-Complete-Urls");
        }
        this.zzVn |= zzd(map, "X-Afma-Use-Displayed-Impression");
        this.zzVp |= zzd(map, "X-Afma-Auto-Collect-Location");
        this.zzVq = zza(map, "Set-Cookie");
        str = zza(map, "X-Afma-Auto-Protection-Configuration");
        if (str == null || TextUtils.isEmpty(str)) {
            Builder buildUpon = Uri.parse("https://pagead2.googlesyndication.com/pagead/gen_204").buildUpon();
            buildUpon.appendQueryParameter("id", "gmob-apps-blocked-navigation");
            if (!TextUtils.isEmpty(this.zzUW)) {
                buildUpon.appendQueryParameter("debugDialog", this.zzUW);
            }
            boolean booleanValue = ((Boolean) zzbs.zzbL().zzd(zzmo.zzCf)).booleanValue();
            String[] strArr = new String[1];
            str = String.valueOf(buildUpon.toString());
            String valueOf = String.valueOf("navigationURL");
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 18) + String.valueOf(valueOf).length());
            stringBuilder.append(str);
            stringBuilder.append("&");
            stringBuilder.append(valueOf);
            stringBuilder.append("={NAVIGATION_URL}");
            strArr[0] = stringBuilder.toString();
            this.zzVo = new zzaak(booleanValue, Arrays.asList(strArr));
        } else {
            try {
                this.zzVo = zzaak.zze(new JSONObject(str));
            } catch (JSONException e) {
                zzajc.zzc("Error parsing configuration JSON", e);
                this.zzVo = new zzaak();
            }
        }
        zzc = zzc(map, "X-Afma-Remote-Ping-Urls");
        if (zzc != null) {
            this.zzVr = zzc;
        }
        str = zza(map, "X-Afma-Safe-Browsing");
        if (!TextUtils.isEmpty(str)) {
            try {
                this.zzVu = zzaeq.zzf(new JSONObject(str));
            } catch (JSONException e2) {
                zzajc.zzc("Error parsing safe browsing header", e2);
            }
        }
        this.zzVs |= zzd(map, "X-Afma-Render-In-Browser");
        String zza = zza(map, "X-Afma-Pool");
        if (!TextUtils.isEmpty(zza)) {
            try {
                this.zzVv = new JSONObject(zza).getBoolean("never_pool");
            } catch (JSONException e3) {
                zzajc.zzc("Error parsing interstitial pool header", e3);
            }
        }
    }
}
