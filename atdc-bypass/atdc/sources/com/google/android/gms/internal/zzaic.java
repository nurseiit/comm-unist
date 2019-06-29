package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;

public final class zzaic {
    public final int count;
    public final String name;
    private double zzZX;
    private double zzZY;
    public final double zzZZ;

    public zzaic(String str, double d, double d2, double d3, int i) {
        this.name = str;
        this.zzZY = d;
        this.zzZX = d2;
        this.zzZZ = d3;
        this.count = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzaic)) {
            return false;
        }
        zzaic zzaic = (zzaic) obj;
        return zzbe.equal(this.name, zzaic.name) && this.zzZX == zzaic.zzZX && this.zzZY == zzaic.zzZY && this.count == zzaic.count && Double.compare(this.zzZZ, zzaic.zzZZ) == 0;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.name, Double.valueOf(this.zzZX), Double.valueOf(this.zzZY), Double.valueOf(this.zzZZ), Integer.valueOf(this.count)});
    }

    public final String toString() {
        return zzbe.zzt(this).zzg("name", this.name).zzg("minBound", Double.valueOf(this.zzZY)).zzg("maxBound", Double.valueOf(this.zzZX)).zzg("percent", Double.valueOf(this.zzZZ)).zzg("count", Integer.valueOf(this.count)).toString();
    }
}
