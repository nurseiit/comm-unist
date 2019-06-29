package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;

public final class zzaid {
    private final List<String> zzaaa = new ArrayList();
    private final List<Double> zzaab = new ArrayList();
    private final List<Double> zzaac = new ArrayList();

    public final zzaid zza(String str, double d, double d2) {
        int i = 0;
        while (i < this.zzaaa.size()) {
            double doubleValue = ((Double) this.zzaac.get(i)).doubleValue();
            double doubleValue2 = ((Double) this.zzaab.get(i)).doubleValue();
            if (d < doubleValue || (doubleValue == d && d2 < doubleValue2)) {
                break;
            }
            i++;
        }
        this.zzaaa.add(i, str);
        this.zzaac.add(i, Double.valueOf(d));
        this.zzaab.add(i, Double.valueOf(d2));
        return this;
    }

    public final zzaia zzid() {
        return new zzaia(this, null);
    }
}
