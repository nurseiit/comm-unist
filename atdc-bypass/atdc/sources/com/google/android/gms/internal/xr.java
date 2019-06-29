package com.google.android.gms.internal;

public final class xr extends xe {
    private static final xr zzciB = new xr();

    private xr() {
    }

    public static xr zzJl() {
        return zzciB;
    }

    public final /* synthetic */ int compare(Object obj, Object obj2) {
        xl xlVar = (xl) obj;
        xl xlVar2 = (xl) obj2;
        xm zzIR = xlVar.zzFn().zzIR();
        xm zzIR2 = xlVar2.zzFn().zzIR();
        wp zzJk = xlVar.zzJk();
        wp zzJk2 = xlVar2.zzJk();
        int compareTo = zzIR.compareTo(zzIR2);
        return compareTo != 0 ? compareTo : zzJk.compareTo(zzJk2);
    }

    public final boolean equals(Object obj) {
        return obj instanceof xr;
    }

    public final int hashCode() {
        return 3155577;
    }

    public final String toString() {
        return "PriorityIndex";
    }

    public final xl zzJc() {
        return zzf(wp.zzIK(), xm.zzciw);
    }

    public final String zzJd() {
        throw new IllegalArgumentException("Can't get query definition on priority index!");
    }

    public final xl zzf(wp wpVar, xm xmVar) {
        return new xl(wpVar, new xu("[PRIORITY-POST]", xmVar));
    }

    public final boolean zzi(xm xmVar) {
        return !xmVar.zzIR().isEmpty();
    }
}
