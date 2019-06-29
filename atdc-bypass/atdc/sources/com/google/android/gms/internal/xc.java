package com.google.android.gms.internal;

public final class xc extends xh<xc> {
    private final Double zzcii;

    public xc(Double d, xm xmVar) {
        super(xmVar);
        this.zzcii = d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof xc)) {
            return false;
        }
        xc xcVar = (xc) obj;
        return this.zzcii.equals(xcVar.zzcii) && this.zzchS.equals(xcVar.zzchS);
    }

    public final Object getValue() {
        return this.zzcii;
    }

    public final int hashCode() {
        return this.zzcii.hashCode() + this.zzchS.hashCode();
    }

    /* Access modifiers changed, original: protected|final */
    public final xj zzII() {
        return xj.Number;
    }

    public final String zza(xo xoVar) {
        String valueOf = String.valueOf(String.valueOf(zzb(xoVar)).concat("number:"));
        String valueOf2 = String.valueOf(zd.zzj(this.zzcii.doubleValue()));
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    public final /* synthetic */ xm zzf(xm xmVar) {
        return new xc(this.zzcii, xmVar);
    }
}
