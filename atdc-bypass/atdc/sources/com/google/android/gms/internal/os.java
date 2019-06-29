package com.google.android.gms.internal;

import java.util.Map;

final class os implements oy {
    private /* synthetic */ pf zzcbi;

    os(op opVar, pf pfVar) {
        this.zzcbi = pfVar;
    }

    public final void zzC(Map<String, Object> map) {
        String str = (String) map.get("s");
        String str2 = null;
        if (str.equals("ok")) {
            str = null;
        } else {
            str2 = (String) map.get("d");
        }
        if (this.zzcbi != null) {
            this.zzcbi.zzaa(str, str2);
        }
    }
}
