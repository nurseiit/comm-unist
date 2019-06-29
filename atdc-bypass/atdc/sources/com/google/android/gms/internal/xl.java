package com.google.android.gms.internal;

public final class xl {
    private static final xl zzciu = new xl(wp.zzIJ(), xd.zzJb());
    private static final xl zzciv = new xl(wp.zzIK(), xm.zzciw);
    private final wp zzcgy;
    private final xm zzcil;

    public xl(wp wpVar, xm xmVar) {
        this.zzcgy = wpVar;
        this.zzcil = xmVar;
    }

    public static xl zzJi() {
        return zzciu;
    }

    public static xl zzJj() {
        return zzciv;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        xl xlVar = (xl) obj;
        return this.zzcgy.equals(xlVar.zzcgy) && this.zzcil.equals(xlVar.zzcil);
    }

    public final int hashCode() {
        return (this.zzcgy.hashCode() * 31) + this.zzcil.hashCode();
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzcgy);
        String valueOf2 = String.valueOf(this.zzcil);
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 23) + String.valueOf(valueOf2).length());
        stringBuilder.append("NamedNode{name=");
        stringBuilder.append(valueOf);
        stringBuilder.append(", node=");
        stringBuilder.append(valueOf2);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    public final xm zzFn() {
        return this.zzcil;
    }

    public final wp zzJk() {
        return this.zzcgy;
    }
}
