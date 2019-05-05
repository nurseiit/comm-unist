package com.google.android.gms.internal;

public final class zzbdy<L> {
    private final L mListener;
    private final String zzaEP;

    zzbdy(L l, String str) {
        this.mListener = l;
        this.zzaEP = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbdy)) {
            return false;
        }
        zzbdy zzbdy = (zzbdy) obj;
        return this.mListener == zzbdy.mListener && this.zzaEP.equals(zzbdy.zzaEP);
    }

    public final int hashCode() {
        return (System.identityHashCode(this.mListener) * 31) + this.zzaEP.hashCode();
    }
}
