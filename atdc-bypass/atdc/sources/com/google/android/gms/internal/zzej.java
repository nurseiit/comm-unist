package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.zzbo;
import java.util.Arrays;

public final class zzej {
    private static zzej zzrG = new zzej("@@ContextManagerNullAccount@@");
    private static zzek zzrH;
    private final String mName;

    public zzej(String str) {
        this.mName = zzbo.zzcF(str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzej)) {
            return false;
        }
        return TextUtils.equals(this.mName, ((zzej) obj).mName);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.mName});
    }

    public final String toString() {
        return "#account#";
    }
}
