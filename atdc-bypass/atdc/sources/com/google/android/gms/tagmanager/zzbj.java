package com.google.android.gms.tagmanager;

import java.util.Map;

final class zzbj extends zzcf {
    zzbj() {
    }

    public final void zze(String str, Map map) {
        CustomTagProvider customTagProvider;
        if (zzbf.zzbEC.containsKey(str)) {
            customTagProvider = (CustomTagProvider) zzbf.zzbEC.get(str);
        } else {
            customTagProvider = (CustomTagProvider) zzbf.zzb(str, CustomTagProvider.class);
            zzbf.zzbEC.put(str, customTagProvider);
        }
        if (customTagProvider != null) {
            customTagProvider.execute(map);
        }
    }

    public final String zzf(String str, Map map) {
        CustomVariableProvider customVariableProvider;
        if (zzbf.zzbED.containsKey(str)) {
            customVariableProvider = (CustomVariableProvider) zzbf.zzbED.get(str);
        } else {
            customVariableProvider = (CustomVariableProvider) zzbf.zzb(str, CustomVariableProvider.class);
            zzbf.zzbED.put(str, customVariableProvider);
        }
        return customVariableProvider != null ? customVariableProvider.getValue(map) : null;
    }
}
