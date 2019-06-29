package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.List;

public final class ea extends dp<String> {
    private final String zzbLD;
    private final List<dp<?>> zzbLE;

    public ea(String str, List<dp<?>> list) {
        zzbo.zzb((Object) str, (Object) "Instruction name must be a string.");
        zzbo.zzu(list);
        this.zzbLD = str;
        this.zzbLE = list;
    }

    /* renamed from: toString */
    public final String zzDl() {
        String str = this.zzbLD;
        String valueOf = String.valueOf(this.zzbLE.toString());
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 3) + String.valueOf(valueOf).length());
        stringBuilder.append("*");
        stringBuilder.append(str);
        stringBuilder.append(": ");
        stringBuilder.append(valueOf);
        return stringBuilder.toString();
    }

    public final String zzDv() {
        return this.zzbLD;
    }

    public final List<dp<?>> zzDw() {
        return this.zzbLE;
    }
}
