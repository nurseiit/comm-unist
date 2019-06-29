package com.google.android.gms.internal;

import android.support.annotation.Nullable;

public final class zzhn {
    final long value;
    final String zzze;
    final int zzzf;

    zzhn(long j, String str, int i) {
        this.value = j;
        this.zzze = str;
        this.zzzf = i;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == null || !(obj instanceof zzhn)) {
            return false;
        }
        zzhn zzhn = (zzhn) obj;
        if (zzhn.value == this.value && zzhn.zzzf == this.zzzf) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (int) this.value;
    }
}
