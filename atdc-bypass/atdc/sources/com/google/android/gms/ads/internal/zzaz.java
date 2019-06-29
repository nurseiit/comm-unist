package com.google.android.gms.ads.internal;

import android.content.Context;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.internal.zzacs;
import com.google.android.gms.internal.zzadz;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzua;
import com.google.android.gms.internal.zzub;
import com.google.android.gms.internal.zzut;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

final class zzaz implements Runnable {
    private /* synthetic */ zzay zzuN;

    zzaz(zzay zzay) {
        this.zzuN = zzay;
    }

    public final void run() {
        Context zza = this.zzuN.zzuM.mContext;
        Runnable runnable = this.zzuN.zzuL;
        zzbo.zzcz("Adapters must be initialized on the main thread.");
        Map zzhm = zzbs.zzbD().zzhD().zzhm();
        if (zzhm != null && !zzhm.isEmpty()) {
            if (runnable != null) {
                try {
                    runnable.run();
                } catch (Throwable th) {
                    zzajc.zzc("Could not initialize rewarded ads.", th);
                    return;
                }
            }
            zzacs zzgO = zzacs.zzgO();
            if (zzgO != null) {
                Collection<zzub> values = zzhm.values();
                HashMap hashMap = new HashMap();
                IObjectWrapper zzw = zzn.zzw(zza);
                for (zzub zzub : values) {
                    for (zzua zzua : zzub.zzLY) {
                        String str = zzua.zzLP;
                        for (String str2 : zzua.zzLJ) {
                            if (!hashMap.containsKey(str2)) {
                                hashMap.put(str2, new ArrayList());
                            }
                            if (str != null) {
                                ((Collection) hashMap.get(str2)).add(str);
                            }
                        }
                    }
                }
                for (Entry entry : hashMap.entrySet()) {
                    String str3 = (String) entry.getKey();
                    try {
                        zzadz zzav = zzgO.zzav(str3);
                        if (zzav != null) {
                            zzut zzgW = zzav.zzgW();
                            if (!zzgW.isInitialized()) {
                                if (zzgW.zzfu()) {
                                    zzgW.zza(zzw, zzav.zzgX(), (List) entry.getValue());
                                    String str4 = "Initialized rewarded video mediation adapter ";
                                    String valueOf = String.valueOf(str3);
                                    zzajc.zzaC(valueOf.length() != 0 ? str4.concat(valueOf) : new String(str4));
                                }
                            }
                        }
                    } catch (Throwable th2) {
                        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str3).length() + 56);
                        stringBuilder.append("Failed to initialize rewarded video mediation adapter \"");
                        stringBuilder.append(str3);
                        stringBuilder.append("\"");
                        zzajc.zzc(stringBuilder.toString(), th2);
                    }
                }
            }
        }
    }
}
