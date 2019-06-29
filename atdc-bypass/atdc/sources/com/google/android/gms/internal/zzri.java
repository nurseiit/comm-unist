package com.google.android.gms.internal;

import java.net.URL;
import java.util.ArrayList;

@zzzn
final class zzri {
    private final String zzJt;
    private final URL zzJu;
    private final ArrayList<zzrh> zzJv;
    private final String zzJw;

    public zzri(String str, URL url, ArrayList<zzrh> arrayList, String str2) {
        this.zzJt = str;
        this.zzJu = url;
        this.zzJv = arrayList;
        this.zzJw = str2;
    }

    public final ArrayList<zzrh> zzeA() {
        return this.zzJv;
    }

    public final String zzeB() {
        return this.zzJw;
    }

    public final String zzey() {
        return this.zzJt;
    }

    public final URL zzez() {
        return this.zzJu;
    }
}
