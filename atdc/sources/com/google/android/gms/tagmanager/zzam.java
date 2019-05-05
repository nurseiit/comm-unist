package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbf;
import com.google.android.gms.internal.zzbg;
import com.google.android.gms.internal.zzbr;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

final class zzam extends zzbr {
    private static final String ID = zzbf.FUNCTION_CALL.toString();
    private static final String zzbDq = zzbg.ADDITIONAL_PARAMS.toString();
    private static final String zzbEb = zzbg.FUNCTION_CALL_NAME.toString();
    private final zzan zzbEc;

    public zzam(zzan zzan) {
        super(ID, zzbEb);
        this.zzbEc = zzan;
    }

    public final boolean zzAE() {
        return false;
    }

    public final zzbr zzo(Map<String, zzbr> map) {
        String str;
        String zzb = zzgk.zzb((zzbr) map.get(zzbEb));
        HashMap hashMap = new HashMap();
        zzbr zzbr = (zzbr) map.get(zzbDq);
        if (zzbr != null) {
            Object zzg = zzgk.zzg(zzbr);
            if (zzg instanceof Map) {
                for (Entry entry : ((Map) zzg).entrySet()) {
                    hashMap.put(entry.getKey().toString(), entry.getValue());
                }
            } else {
                str = "FunctionCallMacro: expected ADDITIONAL_PARAMS to be a map.";
                zzdj.zzaT(str);
                return zzgk.zzCh();
            }
        }
        try {
            return zzgk.zzI(this.zzbEc.zzd(zzb, hashMap));
        } catch (Exception e) {
            str = String.valueOf(e.getMessage());
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(zzb).length() + 34) + String.valueOf(str).length());
            stringBuilder.append("Custom macro/tag ");
            stringBuilder.append(zzb);
            stringBuilder.append(" threw exception ");
            stringBuilder.append(str);
            str = stringBuilder.toString();
        }
    }
}
