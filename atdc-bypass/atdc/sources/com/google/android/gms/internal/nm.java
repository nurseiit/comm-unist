package com.google.android.gms.internal;

import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public final class nm<T> implements Iterable<T> {
    private final nh<T, Void> zzbZV;

    private nm(nh<T, Void> nhVar) {
        this.zzbZV = nhVar;
    }

    public nm(List<T> list, Comparator<T> comparator) {
        this.zzbZV = ni.zzb(list, Collections.emptyMap(), ni.zzFA(), comparator);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nm)) {
            return false;
        }
        return this.zzbZV.equals(((nm) obj).zzbZV);
    }

    public final int hashCode() {
        return this.zzbZV.hashCode();
    }

    public final Iterator<T> iterator() {
        return new nn(this.zzbZV.iterator());
    }

    public final T zzFB() {
        return this.zzbZV.zzFx();
    }

    public final T zzFC() {
        return this.zzbZV.zzFy();
    }

    public final Iterator<T> zzFz() {
        return new nn(this.zzbZV.zzFz());
    }

    public final nm<T> zzac(T t) {
        nh zzX = this.zzbZV.zzX(t);
        return zzX == this.zzbZV ? this : new nm(zzX);
    }

    public final nm<T> zzad(T t) {
        return new nm(this.zzbZV.zzg(t, null));
    }

    public final T zzae(T t) {
        return this.zzbZV.zzY(t);
    }
}
