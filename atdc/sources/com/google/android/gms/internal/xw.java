package com.google.android.gms.internal;

public final class xw extends xe {
    private static final xw zzciF = new xw();

    private xw() {
    }

    public static xw zzJm() {
        return zzciF;
    }

    public final /* synthetic */ int compare(Object obj, Object obj2) {
        xl xlVar = (xl) obj;
        xl xlVar2 = (xl) obj2;
        int compareTo = xlVar.zzFn().compareTo(xlVar2.zzFn());
        return compareTo == 0 ? xlVar.zzJk().compareTo(xlVar2.zzJk()) : compareTo;
    }

    public final boolean equals(Object obj) {
        return obj instanceof xw;
    }

    public final int hashCode() {
        return 4;
    }

    public final String toString() {
        return "ValueIndex";
    }

    public final xl zzJc() {
        return new xl(wp.zzIK(), xm.zzciw);
    }

    public final String zzJd() {
        return ".value";
    }

    public final xl zzf(wp wpVar, xm xmVar) {
        return new xl(wpVar, xmVar);
    }

    public final boolean zzi(xm xmVar) {
        return true;
    }
}
