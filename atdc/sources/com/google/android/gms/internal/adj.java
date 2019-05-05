package com.google.android.gms.internal;

import java.io.IOException;

public abstract class adj<M extends adj<M>> extends adp {
    protected adl zzcso;

    /* renamed from: zzLN */
    public M clone() throws CloneNotSupportedException {
        adj adj = (adj) super.clone();
        adn.zza(this, adj);
        return adj;
    }

    public /* synthetic */ adp zzLO() throws CloneNotSupportedException {
        return (adj) clone();
    }

    public final <T> T zza(adk<M, T> adk) {
        if (this.zzcso == null) {
            return null;
        }
        adm zzcx = this.zzcso.zzcx(adk.tag >>> 3);
        return zzcx == null ? null : zzcx.zzb(adk);
    }

    public void zza(adh adh) throws IOException {
        if (this.zzcso != null) {
            for (int i = 0; i < this.zzcso.size(); i++) {
                this.zzcso.zzcy(i).zza(adh);
            }
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean zza(adg adg, int i) throws IOException {
        int position = adg.getPosition();
        if (!adg.zzcm(i)) {
            return false;
        }
        int i2 = i >>> 3;
        adr adr = new adr(i, adg.zzp(position, adg.getPosition() - position));
        adm adm = null;
        if (this.zzcso == null) {
            this.zzcso = new adl();
        } else {
            adm = this.zzcso.zzcx(i2);
        }
        if (adm == null) {
            adm = new adm();
            this.zzcso.zza(i2, adm);
        }
        adm.zza(adr);
        return true;
    }

    /* Access modifiers changed, original: protected */
    public int zzn() {
        if (this.zzcso == null) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.zzcso.size(); i2++) {
            i += this.zzcso.zzcy(i2).zzn();
        }
        return i;
    }
}
