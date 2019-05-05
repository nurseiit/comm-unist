package com.google.android.gms.internal;

import java.util.Map;

final class ow implements oy {
    private /* synthetic */ op zzcbf;

    ow(op opVar) {
        this.zzcbf = opVar;
    }

    public final void zzC(Map<String, Object> map) {
        String str = (String) map.get("s");
        if (!str.equals("ok")) {
            String str2 = (String) map.get("d");
            if (this.zzcbf.zzbZE.zzIH()) {
                wl zza = this.zzcbf.zzbZE;
                StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 34) + String.valueOf(str2).length());
                stringBuilder.append("Failed to send stats: ");
                stringBuilder.append(str);
                stringBuilder.append(" (message: ");
                stringBuilder.append(str2);
                stringBuilder.append(")");
                zza.zzb(stringBuilder.toString(), null, new Object[0]);
            }
        }
    }
}
