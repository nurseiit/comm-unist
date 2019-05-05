package com.google.android.gms.internal;

final class wz implements xa {
    private final long zzcig;

    public wz(xm xmVar) {
        this.zzcig = Math.max(512, (long) Math.sqrt((double) (yy.zzn(xmVar) * 100)));
    }

    public final boolean zze(wy wyVar) {
        return ((long) wyVar.zzIV()) > this.zzcig && (wyVar.zzIW().isEmpty() || !wyVar.zzIW().zzHf().equals(wp.zzIL()));
    }
}
