package com.google.android.gms.tagmanager;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;

abstract class zzbr {
    private final Set<String> zzbEL;
    private final String zzbEM;

    public zzbr(String str, String... strArr) {
        this.zzbEM = str;
        this.zzbEL = new HashSet(strArr.length);
        for (Object add : strArr) {
            this.zzbEL.add(add);
        }
    }

    public abstract boolean zzAE();

    public String zzBk() {
        return this.zzbEM;
    }

    public Set<String> zzBl() {
        return this.zzbEL;
    }

    /* Access modifiers changed, original: final */
    public final boolean zzd(Set<String> set) {
        return set.containsAll(this.zzbEL);
    }

    public abstract com.google.android.gms.internal.zzbr zzo(Map<String, com.google.android.gms.internal.zzbr> map);
}
