package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;

@zzzn
public final class zzaia {
    private final String[] zzZS;
    private final double[] zzZT;
    private final double[] zzZU;
    private final int[] zzZV;
    private int zzZW;

    private zzaia(zzaid zzaid) {
        int size = zzaid.zzaab.size();
        this.zzZS = (String[]) zzaid.zzaaa.toArray(new String[size]);
        this.zzZT = zzo(zzaid.zzaab);
        this.zzZU = zzo(zzaid.zzaac);
        this.zzZV = new int[size];
        this.zzZW = 0;
    }

    /* synthetic */ zzaia(zzaid zzaid, zzaib zzaib) {
        this(zzaid);
    }

    private static double[] zzo(List<Double> list) {
        double[] dArr = new double[list.size()];
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = ((Double) list.get(i)).doubleValue();
        }
        return dArr;
    }

    public final List<zzaic> getBuckets() {
        ArrayList arrayList = new ArrayList(this.zzZS.length);
        for (int i = 0; i < this.zzZS.length; i++) {
            arrayList.add(new zzaic(this.zzZS[i], this.zzZU[i], this.zzZT[i], ((double) this.zzZV[i]) / ((double) this.zzZW), this.zzZV[i]));
        }
        return arrayList;
    }

    public final void zza(double d) {
        this.zzZW++;
        int i = 0;
        while (i < this.zzZU.length) {
            if (this.zzZU[i] <= d && d < this.zzZT[i]) {
                int[] iArr = this.zzZV;
                iArr[i] = iArr[i] + 1;
            }
            if (d >= this.zzZU[i]) {
                i++;
            } else {
                return;
            }
        }
    }
}
