package com.google.android.gms.vision;

import android.util.SparseArray;

public final class zzc {
    private static int zzbMY;
    private static final Object zzuF = new Object();
    private SparseArray<Integer> zzbMZ = new SparseArray();
    private SparseArray<Integer> zzbNa = new SparseArray();

    public final int zzbL(int i) {
        synchronized (zzuF) {
            Integer num = (Integer) this.zzbMZ.get(i);
            if (num != null) {
                i = num.intValue();
                return i;
            }
            int i2 = zzbMY;
            zzbMY++;
            this.zzbMZ.append(i, Integer.valueOf(i2));
            this.zzbNa.append(i2, Integer.valueOf(i));
            return i2;
        }
    }

    public final int zzbM(int i) {
        synchronized (zzuF) {
            i = ((Integer) this.zzbNa.get(i)).intValue();
        }
        return i;
    }
}
