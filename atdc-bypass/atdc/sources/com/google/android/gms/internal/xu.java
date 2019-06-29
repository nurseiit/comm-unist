package com.google.android.gms.internal;

public final class xu extends xh<xu> {
    private final String value;

    public xu(String str, xm xmVar) {
        super(xmVar);
        this.value = str;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof xu)) {
            return false;
        }
        xu xuVar = (xu) obj;
        return this.value.equals(xuVar.value) && this.zzchS.equals(xuVar.zzchS);
    }

    public final Object getValue() {
        return this.value;
    }

    public final int hashCode() {
        return this.value.hashCode() + this.zzchS.hashCode();
    }

    /* Access modifiers changed, original: protected|final */
    public final xj zzII() {
        return xj.String;
    }

    public final String zza(xo xoVar) {
        String valueOf;
        String str;
        StringBuilder stringBuilder;
        switch (xv.zzcio[xoVar.ordinal()]) {
            case 1:
                valueOf = String.valueOf(zzb(xoVar));
                str = this.value;
                stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 7) + String.valueOf(str).length());
                break;
            case 2:
                valueOf = String.valueOf(zzb(xoVar));
                str = String.valueOf(zd.zzgZ(this.value));
                stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 7) + String.valueOf(str).length());
                break;
            default:
                valueOf = String.valueOf(xoVar);
                stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 38);
                stringBuilder.append("Invalid hash version for string node: ");
                stringBuilder.append(valueOf);
                throw new IllegalArgumentException(stringBuilder.toString());
        }
        stringBuilder.append(valueOf);
        stringBuilder.append("string:");
        stringBuilder.append(str);
        return stringBuilder.toString();
    }

    public final /* synthetic */ xm zzf(xm xmVar) {
        return new xu(this.value, xmVar);
    }
}
