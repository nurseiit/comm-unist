package com.google.android.gms.internal;

public final class vi {
    private final xf zzcgD;
    private final vl zzcgI;
    private final xf zzcgJ;
    private final wp zzcgK;
    private final wp zzcgL;

    private vi(vl vlVar, xf xfVar, wp wpVar, wp wpVar2, xf xfVar2) {
        this.zzcgI = vlVar;
        this.zzcgD = xfVar;
        this.zzcgK = wpVar;
        this.zzcgL = wpVar2;
        this.zzcgJ = xfVar2;
    }

    public static vi zza(wp wpVar, xf xfVar) {
        return new vi(vl.CHILD_ADDED, xfVar, wpVar, null, null);
    }

    public static vi zza(wp wpVar, xf xfVar, xf xfVar2) {
        return new vi(vl.CHILD_CHANGED, xfVar, wpVar, null, xfVar2);
    }

    public static vi zza(wp wpVar, xm xmVar, xm xmVar2) {
        return zza(wpVar, xf.zzj(xmVar), xf.zzj(xmVar2));
    }

    public static vi zza(xf xfVar) {
        return new vi(vl.VALUE, xfVar, null, null, null);
    }

    public static vi zzb(wp wpVar, xf xfVar) {
        return new vi(vl.CHILD_REMOVED, xfVar, wpVar, null, null);
    }

    public static vi zzc(wp wpVar, xf xfVar) {
        return new vi(vl.CHILD_MOVED, xfVar, wpVar, null, null);
    }

    public static vi zzc(wp wpVar, xm xmVar) {
        return zza(wpVar, xf.zzj(xmVar));
    }

    public static vi zzd(wp wpVar, xm xmVar) {
        return zzb(wpVar, xf.zzj(xmVar));
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzcgI);
        String valueOf2 = String.valueOf(this.zzcgK);
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 9) + String.valueOf(valueOf2).length());
        stringBuilder.append("Change: ");
        stringBuilder.append(valueOf);
        stringBuilder.append(" ");
        stringBuilder.append(valueOf2);
        return stringBuilder.toString();
    }

    public final xf zzHW() {
        return this.zzcgD;
    }

    public final wp zzHY() {
        return this.zzcgK;
    }

    public final vl zzHZ() {
        return this.zzcgI;
    }

    public final wp zzIa() {
        return this.zzcgL;
    }

    public final xf zzIb() {
        return this.zzcgJ;
    }

    public final vi zzg(wp wpVar) {
        return new vi(this.zzcgI, this.zzcgD, this.zzcgK, wpVar, this.zzcgJ);
    }
}
