package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.analytics.FirebaseAnalytics.Event;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class eb extends dp<String> {
    private static final Map<String, zzcxo> zzbLo;
    private final String mValue;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("charAt", new e());
        hashMap.put("concat", new f());
        hashMap.put("hasOwnProperty", zzczp.zzbJW);
        hashMap.put("indexOf", new g());
        hashMap.put("lastIndexOf", new h());
        hashMap.put("match", new i());
        hashMap.put("replace", new j());
        hashMap.put(Event.SEARCH, new k());
        hashMap.put("slice", new l());
        hashMap.put("split", new m());
        hashMap.put("substring", new n());
        hashMap.put("toLocaleLowerCase", new o());
        hashMap.put("toLocaleUpperCase", new p());
        hashMap.put("toLowerCase", new q());
        hashMap.put("toUpperCase", new s());
        hashMap.put("toString", new r());
        hashMap.put("trim", new t());
        zzbLo = Collections.unmodifiableMap(hashMap);
    }

    public eb(String str) {
        zzbo.zzu(str);
        this.mValue = str;
    }

    public final boolean equals(Object obj) {
        return this == obj ? true : obj instanceof eb ? this.mValue.equals(((eb) obj).mValue) : false;
    }

    public final String toString() {
        return this.mValue.toString();
    }

    public final String value() {
        return this.mValue;
    }

    public final Iterator<dp<?>> zzDk() {
        return new ec(this);
    }

    public final /* synthetic */ Object zzDl() {
        return this.mValue;
    }

    public final dp<?> zzbI(int i) {
        return (i < 0 || i >= this.mValue.length()) ? dv.zzbLu : new eb(String.valueOf(this.mValue.charAt(i)));
    }

    public final boolean zzga(String str) {
        return zzbLo.containsKey(str);
    }

    public final zzcxo zzgb(String str) {
        if (zzga(str)) {
            return (zzcxo) zzbLo.get(str);
        }
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 51);
        stringBuilder.append("Native Method ");
        stringBuilder.append(str);
        stringBuilder.append(" is not defined for type ListWrapper.");
        throw new IllegalStateException(stringBuilder.toString());
    }
}
