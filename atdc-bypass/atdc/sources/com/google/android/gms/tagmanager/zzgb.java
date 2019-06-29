package com.google.android.gms.tagmanager;

import java.util.Map;

final class zzgb implements zzb {
    private /* synthetic */ TagManager zzbGX;

    zzgb(TagManager tagManager) {
        this.zzbGX = tagManager;
    }

    public final void zzp(Map<String, Object> map) {
        Object obj = map.get("event");
        if (obj != null) {
            this.zzbGX.zzfu(obj.toString());
        }
    }
}
