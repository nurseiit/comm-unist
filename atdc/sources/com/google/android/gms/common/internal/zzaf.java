package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Intent;
import java.util.Arrays;

public final class zzaf {
    private final String zzaHN;
    private final ComponentName zzaHO;
    private final String zzaeX;

    public zzaf(ComponentName componentName) {
        this.zzaeX = null;
        this.zzaHN = null;
        this.zzaHO = (ComponentName) zzbo.zzu(componentName);
    }

    public zzaf(String str, String str2) {
        this.zzaeX = zzbo.zzcF(str);
        this.zzaHN = zzbo.zzcF(str2);
        this.zzaHO = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaf)) {
            return false;
        }
        zzaf zzaf = (zzaf) obj;
        return zzbe.equal(this.zzaeX, zzaf.zzaeX) && zzbe.equal(this.zzaHN, zzaf.zzaHN) && zzbe.equal(this.zzaHO, zzaf.zzaHO);
    }

    public final ComponentName getComponentName() {
        return this.zzaHO;
    }

    public final String getPackage() {
        return this.zzaHN;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaeX, this.zzaHN, this.zzaHO});
    }

    public final String toString() {
        return this.zzaeX == null ? this.zzaHO.flattenToString() : this.zzaeX;
    }

    public final Intent zzrB() {
        return this.zzaeX != null ? new Intent(this.zzaeX).setPackage(this.zzaHN) : new Intent().setComponent(this.zzaHO);
    }
}
