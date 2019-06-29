package com.google.android.gms.tagmanager;

final class zzed implements zzfx {
    private /* synthetic */ zzec zzbFA;

    zzed(zzec zzec) {
        this.zzbFA = zzec;
    }

    public final void zza(zzbx zzbx) {
        this.zzbFA.zzp(zzbx.zzBm());
    }

    public final void zzb(zzbx zzbx) {
        this.zzbFA.zzp(zzbx.zzBm());
        long zzBm = zzbx.zzBm();
        StringBuilder stringBuilder = new StringBuilder(57);
        stringBuilder.append("Permanent failure dispatching hitId: ");
        stringBuilder.append(zzBm);
        zzdj.v(stringBuilder.toString());
    }

    public final void zzc(zzbx zzbx) {
        long zzBn = zzbx.zzBn();
        if (zzBn == 0) {
            this.zzbFA.zzh(zzbx.zzBm(), this.zzbFA.zzvw.currentTimeMillis());
            return;
        }
        if (zzBn + 14400000 < this.zzbFA.zzvw.currentTimeMillis()) {
            this.zzbFA.zzp(zzbx.zzBm());
            zzBn = zzbx.zzBm();
            StringBuilder stringBuilder = new StringBuilder(47);
            stringBuilder.append("Giving up on failed hitId: ");
            stringBuilder.append(zzBn);
            zzdj.v(stringBuilder.toString());
        }
    }
}
