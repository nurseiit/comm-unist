package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzi;
import java.util.HashMap;
import java.util.Map;

public final class ef {
    private final Context mContext;
    private String zzbEa;
    private Map<String, Object> zzbKw;
    private final Map<String, Object> zzbKx;
    private final ep zzbLI;
    private final zze zzvw;

    public ef(Context context) {
        this(context, new HashMap(), new ep(context), zzi.zzrY());
    }

    private ef(Context context, Map<String, Object> map, ep epVar, zze zze) {
        this.zzbEa = null;
        this.zzbKw = new HashMap();
        this.mContext = context;
        this.zzvw = zze;
        this.zzbLI = epVar;
        this.zzbKx = map;
    }

    public final void zzgc(String str) {
        this.zzbEa = str;
    }
}
