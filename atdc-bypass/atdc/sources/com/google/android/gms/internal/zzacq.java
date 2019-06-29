package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbe;

@zzzn
public final class zzacq extends zzacw {
    private final String zzVB;
    private final int zzWp;

    public zzacq(String str, int i) {
        this.zzVB = str;
        this.zzWp = i;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzacq)) {
            return false;
        }
        zzacq zzacq = (zzacq) obj;
        if (zzbe.equal(this.zzVB, zzacq.zzVB) && zzbe.equal(Integer.valueOf(this.zzWp), Integer.valueOf(zzacq.zzWp))) {
            return true;
        }
        return false;
    }

    public final int getAmount() {
        return this.zzWp;
    }

    public final String getType() {
        return this.zzVB;
    }
}
