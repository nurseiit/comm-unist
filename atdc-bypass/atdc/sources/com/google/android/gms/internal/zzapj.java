package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

public final class zzapj {
    private final String mName;
    private boolean zzajA;
    private final List<zzapd> zzajB = new ArrayList();
    private BitSet zzajC;
    private String zzajD;
    private String zzajx;
    private boolean zzajy;
    private int zzajz = 1;

    public zzapj(String str) {
        this.mName = str;
    }

    public final zzapj zzK(boolean z) {
        this.zzajy = true;
        return this;
    }

    public final zzapj zzL(boolean z) {
        this.zzajA = true;
        return this;
    }

    public final zzapj zzR(int i) {
        if (this.zzajC == null) {
            this.zzajC = new BitSet();
        }
        this.zzajC.set(i);
        return this;
    }

    public final zzapj zzbI(String str) {
        this.zzajx = str;
        return this;
    }

    public final zzapj zzbJ(String str) {
        this.zzajD = str;
        return this;
    }

    public final zzapi zzml() {
        int[] iArr;
        if (this.zzajC != null) {
            iArr = new int[this.zzajC.cardinality()];
            int i = 0;
            int nextSetBit = this.zzajC.nextSetBit(0);
            while (nextSetBit >= 0) {
                int i2 = i + 1;
                iArr[i] = nextSetBit;
                nextSetBit = this.zzajC.nextSetBit(nextSetBit + 1);
                i = i2;
            }
        } else {
            iArr = null;
        }
        return new zzapi(this.mName, this.zzajx, this.zzajy, this.zzajz, this.zzajA, null, (zzapd[]) this.zzajB.toArray(new zzapd[this.zzajB.size()]), iArr, this.zzajD);
    }
}
