package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.zzbo;

public final class bz {
    private final String zzbDw;
    @Nullable
    private final String zzbFX;
    @Nullable
    private final String zzbHI;
    @Nullable
    private final String zzbKq;
    private final boolean zzbKr;
    @Nullable
    private final String zzbKs;

    public bz(String str, String str2, @Nullable String str3, boolean z, @Nullable String str4) {
        this(str, str2, str3, z, str4, "");
    }

    private bz(String str, String str2, @Nullable String str3, boolean z, @Nullable String str4, String str5) {
        zzbo.zzu(str);
        zzbo.zzu(str5);
        this.zzbDw = str;
        this.zzbHI = str2;
        this.zzbKq = str3;
        this.zzbKr = z;
        this.zzbKs = str4;
        this.zzbFX = str5;
    }

    public final String getContainerId() {
        return this.zzbDw;
    }

    public final String zzCI() {
        return this.zzbHI;
    }

    public final String zzCJ() {
        return this.zzbKq;
    }

    public final String zzCK() {
        if (this.zzbKq == null) {
            return this.zzbDw;
        }
        String str = this.zzbKq;
        String str2 = this.zzbDw;
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 1) + String.valueOf(str2).length());
        stringBuilder.append(str);
        stringBuilder.append("_");
        stringBuilder.append(str2);
        return stringBuilder.toString();
    }

    public final boolean zzCL() {
        return this.zzbKr;
    }

    public final String zzCM() {
        return this.zzbKs;
    }

    public final String zzCN() {
        return this.zzbFX;
    }
}
