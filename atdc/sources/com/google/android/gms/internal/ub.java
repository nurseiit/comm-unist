package com.google.android.gms.internal;

public final class ub extends tx {
    private final xm zzcfV;

    public ub(tz tzVar, qr qrVar, xm xmVar) {
        super(ty.Overwrite, tzVar, qrVar);
        this.zzcfV = xmVar;
    }

    public final String toString() {
        return String.format("Overwrite { path=%s, source=%s, snapshot=%s }", new Object[]{this.zzbZf, this.zzcfH, this.zzcfV});
    }

    public final xm zzHJ() {
        return this.zzcfV;
    }

    public final tx zzc(wp wpVar) {
        return this.zzbZf.isEmpty() ? new ub(this.zzcfH, qr.zzGZ(), this.zzcfV.zzm(wpVar)) : new ub(this.zzcfH, this.zzbZf.zzHd(), this.zzcfV);
    }
}
