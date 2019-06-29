package com.google.android.gms.internal;

import java.util.Arrays;

final class adr {
    final int tag;
    final byte[] zzbws;

    adr(int i, byte[] bArr) {
        this.tag = i;
        this.zzbws = bArr;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof adr)) {
            return false;
        }
        adr adr = (adr) obj;
        return this.tag == adr.tag && Arrays.equals(this.zzbws, adr.zzbws);
    }

    public final int hashCode() {
        return ((this.tag + 527) * 31) + Arrays.hashCode(this.zzbws);
    }
}
