package com.google.android.gms.internal;

public final class tv extends tx {
    public tv(tz tzVar, qr qrVar) {
        super(ty.ListenComplete, tzVar, qrVar);
    }

    public final String toString() {
        return String.format("ListenComplete { path=%s, source=%s }", new Object[]{this.zzbZf, this.zzcfH});
    }

    public final tx zzc(wp wpVar) {
        return this.zzbZf.isEmpty() ? new tv(this.zzcfH, qr.zzGZ()) : new tv(this.zzcfH, this.zzbZf.zzHd());
    }
}
