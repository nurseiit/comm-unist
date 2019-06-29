package com.google.android.gms.internal;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.ads.internal.zzw;
import java.net.URISyntaxException;
import java.util.Map;

@zzzn
public final class zzrq implements zzrd {
    private final zzw zzJE;
    private final zzwk zzJF;

    public zzrq(zzw zzw, zzwk zzwk) {
        this.zzJE = zzw;
        this.zzJF = zzwk;
    }

    private static boolean zze(Map<String, String> map) {
        return "1".equals(map.get("custom_close"));
    }

    private static int zzf(Map<String, String> map) {
        String str = (String) map.get("o");
        if (str != null) {
            if ("p".equalsIgnoreCase(str)) {
                return zzbs.zzbB().zzhU();
            }
            if ("l".equalsIgnoreCase(str)) {
                return zzbs.zzbB().zzhT();
            }
            if ("c".equalsIgnoreCase(str)) {
                return zzbs.zzbB().zzhV();
            }
        }
        return -1;
    }

    private final void zzj(boolean z) {
        if (this.zzJF != null) {
            this.zzJF.zzk(z);
        }
    }

    public final void zza(zzaka zzaka, Map<String, String> map) {
        String zzb = zzaez.zzb((String) map.get("u"), zzaka.getContext());
        String str = (String) map.get("a");
        if (str == null) {
            zzajc.zzaT("Action missing from an open GMSG.");
        } else if (this.zzJE == null || this.zzJE.zzaR()) {
            zzakb zziw = zzaka.zziw();
            if ("expand".equalsIgnoreCase(str)) {
                if (zzaka.zziA()) {
                    zzajc.zzaT("Cannot expand WebView that is already expanded.");
                    return;
                }
                zzj(false);
                zziw.zza(zze(map), zzf(map));
            } else if ("webapp".equalsIgnoreCase(str)) {
                zzj(false);
                if (zzb != null) {
                    zziw.zza(zze(map), zzf(map), zzb);
                } else {
                    zziw.zza(zze(map), zzf(map), (String) map.get("html"), (String) map.get("baseurl"));
                }
            } else {
                if (!"in_app_purchase".equalsIgnoreCase(str)) {
                    if ("app".equalsIgnoreCase(str) && "true".equalsIgnoreCase((String) map.get("system_browser"))) {
                        zzj(true);
                        Context context = zzaka.getContext();
                        if (TextUtils.isEmpty(zzb)) {
                            zzajc.zzaT("Destination url cannot be empty.");
                            return;
                        }
                        try {
                            zzaka.zziw().zza(new zzc(new zzrr(zzaka).zza(context, (Map) map)));
                            return;
                        } catch (ActivityNotFoundException e) {
                            zzajc.zzaT(e.getMessage());
                            return;
                        }
                    }
                    zzj(true);
                    str = (String) map.get("intent_url");
                    Intent intent = null;
                    if (!TextUtils.isEmpty(str)) {
                        try {
                            intent = Intent.parseUri(str, 0);
                        } catch (URISyntaxException e2) {
                            String str2 = "Error parsing the url: ";
                            str = String.valueOf(str);
                            zzajc.zzb(str.length() != 0 ? str2.concat(str) : new String(str2), e2);
                        }
                    }
                    if (!(intent == null || intent.getData() == null)) {
                        Uri data = intent.getData();
                        String uri = data.toString();
                        if (!TextUtils.isEmpty(uri)) {
                            zzbs.zzbz();
                            uri = zzagz.zzb(zzaka, uri);
                            try {
                                data = Uri.parse(uri);
                            } catch (Exception e3) {
                                String str3 = "Error parsing the uri: ";
                                uri = String.valueOf(uri);
                                zzajc.zzb(uri.length() != 0 ? str3.concat(uri) : new String(str3), e3);
                            }
                        }
                        intent.setData(data);
                    }
                    if (intent != null) {
                        zziw.zza(new zzc(intent));
                        return;
                    }
                    if (!TextUtils.isEmpty(zzb)) {
                        zzbs.zzbz();
                        zzb = zzagz.zzb(zzaka, zzb);
                    }
                    zziw.zza(new zzc((String) map.get("i"), zzb, (String) map.get("m"), (String) map.get("p"), (String) map.get("c"), (String) map.get("f"), (String) map.get("e")));
                }
            }
        } else {
            this.zzJE.zzt(zzb);
        }
    }
}
