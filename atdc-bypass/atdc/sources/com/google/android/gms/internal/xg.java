package com.google.android.gms.internal;

public final class xg extends xe {
    private static final xg zzcin = new xg();

    private xg() {
    }

    public static xg zzJh() {
        return zzcin;
    }

    public final /* synthetic */ int compare(Object obj, Object obj2) {
        return ((xl) obj).zzJk().compareTo(((xl) obj2).zzJk());
    }

    public final boolean equals(Object obj) {
        return obj instanceof xg;
    }

    public final int hashCode() {
        return 37;
    }

    public final String toString() {
        return "KeyIndex";
    }

    public final xl zzJc() {
        return xl.zzJj();
    }

    public final String zzJd() {
        return ".key";
    }

    public final xl zzf(wp wpVar, xm xmVar) {
        return new xl(wp.zzgT((String) xmVar.getValue()), xd.zzJb());
    }

    public final boolean zzi(xm xmVar) {
        return true;
    }
}
