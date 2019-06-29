package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import com.google.android.gms.internal.zzbf;
import com.google.android.gms.internal.zzbg;
import com.google.android.gms.internal.zzbr;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class zzm extends zzgi {
    private static final String ID = zzbf.ARBITRARY_PIXEL.toString();
    private static final String URL = zzbg.URL.toString();
    private static final String zzbDq = zzbg.ADDITIONAL_PARAMS.toString();
    private static final String zzbDr = zzbg.UNREPEATABLE.toString();
    private static String zzbDs;
    private static final Set<String> zzbDt = new HashSet();
    private final Context mContext;
    private final zza zzbDu;

    public interface zza {
        zzby zzAF();
    }

    static {
        String str = ID;
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 17);
        stringBuilder.append("gtm_");
        stringBuilder.append(str);
        stringBuilder.append("_unrepeatable");
        zzbDs = stringBuilder.toString();
    }

    public zzm(Context context) {
        this(context, new zzn(context));
    }

    private zzm(Context context, zza zza) {
        super(ID, URL);
        this.zzbDu = zza;
        this.mContext = context;
    }

    private final synchronized boolean zzeW(String str) {
        if (zzbDt.contains(str)) {
            return true;
        }
        if (!this.mContext.getSharedPreferences(zzbDs, 0).contains(str)) {
            return false;
        }
        zzbDt.add(str);
        return true;
    }

    public final void zzq(Map<String, zzbr> map) {
        String zzb = map.get(zzbDr) != null ? zzgk.zzb((zzbr) map.get(zzbDr)) : null;
        if (zzb == null || !zzeW(zzb)) {
            String str;
            Builder buildUpon = Uri.parse(zzgk.zzb((zzbr) map.get(URL))).buildUpon();
            zzbr zzbr = (zzbr) map.get(zzbDq);
            if (zzbr != null) {
                Object zzg = zzgk.zzg(zzbr);
                if (zzg instanceof List) {
                    for (Object next : (List) zzg) {
                        if (next instanceof Map) {
                            for (Entry entry : ((Map) next).entrySet()) {
                                buildUpon.appendQueryParameter(entry.getKey().toString(), entry.getValue().toString());
                            }
                        } else {
                            str = "ArbitraryPixel: additional params contains non-map: not sending partial hit: ";
                            zzb = String.valueOf(buildUpon.build().toString());
                            zzdj.e(zzb.length() != 0 ? str.concat(zzb) : new String(str));
                            return;
                        }
                    }
                }
                str = "ArbitraryPixel: additional params not a list: not sending partial hit: ";
                zzb = String.valueOf(buildUpon.build().toString());
                zzdj.e(zzb.length() != 0 ? str.concat(zzb) : new String(str));
                return;
            }
            str = buildUpon.build().toString();
            this.zzbDu.zzAF().zzfh(str);
            String str2 = "ArbitraryPixel: url = ";
            str = String.valueOf(str);
            zzdj.v(str.length() != 0 ? str2.concat(str) : new String(str2));
            if (zzb != null) {
                synchronized (zzm.class) {
                    zzbDt.add(zzb);
                    zzfu.zzd(this.mContext, zzbDs, zzb, "true");
                }
            }
        }
    }
}
