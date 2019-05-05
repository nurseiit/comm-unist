package com.google.android.gms.internal;

public final class xk extends xh<xk> {
    private final long value;

    public xk(Long l, xm xmVar) {
        super(xmVar);
        this.value = l.longValue();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof xk)) {
            return false;
        }
        xk xkVar = (xk) obj;
        return this.value == xkVar.value && this.zzchS.equals(xkVar.zzchS);
    }

    public final Object getValue() {
        return Long.valueOf(this.value);
    }

    public final int hashCode() {
        return ((int) (this.value ^ (this.value >>> 32))) + this.zzchS.hashCode();
    }

    /* Access modifiers changed, original: protected|final */
    public final xj zzII() {
        return xj.Number;
    }

    public final String zza(xo xoVar) {
        String valueOf = String.valueOf(String.valueOf(zzb(xoVar)).concat("number:"));
        String valueOf2 = String.valueOf(zd.zzj((double) this.value));
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    public final /* synthetic */ xm zzf(xm xmVar) {
        return new xk(Long.valueOf(this.value), xmVar);
    }
}
