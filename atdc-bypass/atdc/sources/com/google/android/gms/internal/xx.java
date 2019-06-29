package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;

final class xx implements xy {
    private List<byte[]> zzciG = new ArrayList();
    private int zzciH = 0;

    xx() {
    }

    public final boolean zzC(byte[] bArr) {
        this.zzciG.add(bArr);
        this.zzciH += bArr.length;
        return true;
    }

    public final yl zzJn() {
        byte[] bArr = new byte[this.zzciH];
        int i = 0;
        for (int i2 = 0; i2 < this.zzciG.size(); i2++) {
            byte[] bArr2 = (byte[]) this.zzciG.get(i2);
            System.arraycopy(bArr2, 0, bArr, i, bArr2.length);
            i += bArr2.length;
        }
        return new yl(bArr);
    }
}
