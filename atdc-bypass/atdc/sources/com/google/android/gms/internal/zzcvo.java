package com.google.android.gms.internal;

final class zzcvo implements zzcwl {
    private /* synthetic */ zzcvn zzbIB;

    zzcvo(zzcvn zzcvn) {
        this.zzbIB = zzcvn;
    }

    public final void zza(zzcuw zzcuw) {
        this.zzbIB.zzp(zzcuw.zzBm());
    }

    public final void zzb(zzcuw zzcuw) {
        this.zzbIB.zzp(zzcuw.zzBm());
        long zzBm = zzcuw.zzBm();
        StringBuilder stringBuilder = new StringBuilder(57);
        stringBuilder.append("Permanent failure dispatching hitId: ");
        stringBuilder.append(zzBm);
        zzcvk.v(stringBuilder.toString());
    }

    public final void zzc(zzcuw zzcuw) {
        long zzBn = zzcuw.zzBn();
        if (zzBn == 0) {
            this.zzbIB.zzh(zzcuw.zzBm(), this.zzbIB.zzvw.currentTimeMillis());
            return;
        }
        if (zzBn + 14400000 < this.zzbIB.zzvw.currentTimeMillis()) {
            this.zzbIB.zzp(zzcuw.zzBm());
            zzBn = zzcuw.zzBm();
            StringBuilder stringBuilder = new StringBuilder(47);
            stringBuilder.append("Giving up on failed hitId: ");
            stringBuilder.append(zzBn);
            zzcvk.v(stringBuilder.toString());
        }
    }
}
