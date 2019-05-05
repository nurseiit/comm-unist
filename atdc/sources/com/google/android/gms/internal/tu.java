package com.google.android.gms.internal;

public final class tu extends tx {
    private final boolean zzcfD;
    private final uv<Boolean> zzcfE;

    public tu(qr qrVar, uv<Boolean> uvVar, boolean z) {
        super(ty.AckUserWrite, tz.zzcfN, qrVar);
        this.zzcfE = uvVar;
        this.zzcfD = z;
    }

    public final String toString() {
        return String.format("AckUserWrite { path=%s, revert=%s, affectedTree=%s }", new Object[]{this.zzbZf, Boolean.valueOf(this.zzcfD), this.zzcfE});
    }

    public final uv<Boolean> zzHB() {
        return this.zzcfE;
    }

    public final boolean zzHC() {
        return this.zzcfD;
    }

    public final tx zzc(wp wpVar) {
        if (!this.zzbZf.isEmpty()) {
            zd.zzb(this.zzbZf.zzHc().equals(wpVar), "operationForChild called for unrelated child.");
            return new tu(this.zzbZf.zzHd(), this.zzcfE, this.zzcfD);
        } else if (this.zzcfE.getValue() != null) {
            zd.zzb(this.zzcfE.zzHS().isEmpty(), "affectedTree should not have overlapping affected paths.");
            return this;
        } else {
            return new tu(qr.zzGZ(), this.zzcfE.zzH(new qr(wpVar)), this.zzcfD);
        }
    }
}
