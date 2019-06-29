package com.google.android.gms.internal;

public final class wo extends xh<wo> {
    private final boolean value;

    public wo(Boolean bool, xm xmVar) {
        super(xmVar);
        this.value = bool.booleanValue();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof wo)) {
            return false;
        }
        wo woVar = (wo) obj;
        return this.value == woVar.value && this.zzchS.equals(woVar.zzchS);
    }

    public final Object getValue() {
        return Boolean.valueOf(this.value);
    }

    public final int hashCode() {
        return this.value + this.zzchS.hashCode();
    }

    /* Access modifiers changed, original: protected|final */
    public final xj zzII() {
        return xj.Boolean;
    }

    public final String zza(xo xoVar) {
        String valueOf = String.valueOf(zzb(xoVar));
        boolean z = this.value;
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 13);
        stringBuilder.append(valueOf);
        stringBuilder.append("boolean:");
        stringBuilder.append(z);
        return stringBuilder.toString();
    }

    public final /* synthetic */ xm zzf(xm xmVar) {
        return new wo(Boolean.valueOf(this.value), xmVar);
    }
}
