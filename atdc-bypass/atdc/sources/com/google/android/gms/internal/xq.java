package com.google.android.gms.internal;

public final class xq extends xe {
    private final qr zzciA;

    public xq(qr qrVar) {
        if (qrVar.size() == 1 && qrVar.zzHc().zzIN()) {
            throw new IllegalArgumentException("Can't create PathIndex with '.priority' as key. Please use PriorityIndex instead!");
        }
        this.zzciA = qrVar;
    }

    public final /* synthetic */ int compare(Object obj, Object obj2) {
        xl xlVar = (xl) obj;
        xl xlVar2 = (xl) obj2;
        int compareTo = xlVar.zzFn().zzN(this.zzciA).compareTo(xlVar2.zzFn().zzN(this.zzciA));
        return compareTo == 0 ? xlVar.zzJk().compareTo(xlVar2.zzJk()) : compareTo;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.zzciA.equals(((xq) obj).zzciA);
    }

    public final int hashCode() {
        return this.zzciA.hashCode();
    }

    public final xl zzJc() {
        return new xl(wp.zzIK(), xd.zzJb().zzl(this.zzciA, xm.zzciw));
    }

    public final String zzJd() {
        return this.zzciA.zzHa();
    }

    public final xl zzf(wp wpVar, xm xmVar) {
        return new xl(wpVar, xd.zzJb().zzl(this.zzciA, xmVar));
    }

    public final boolean zzi(xm xmVar) {
        return !xmVar.zzN(this.zzciA).isEmpty();
    }
}
