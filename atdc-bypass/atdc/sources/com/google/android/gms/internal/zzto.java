package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.zzal;
import com.google.android.gms.ads.internal.zzbs;

final class zzto {
    boolean zzKA;
    private /* synthetic */ zztn zzKB;
    zzal zzKv;
    @Nullable
    zzir zzKw;
    zzsj zzKx;
    long zzKy;
    boolean zzKz;

    zzto(zztn zztn, zzsi zzsi) {
        this.zzKB = zztn;
        this.zzKv = zzsi.zzX(zztn.zztV);
        this.zzKx = new zzsj();
        zzsj zzsj = this.zzKx;
        zzal zzal = this.zzKv;
        zzal.zza((zzjo) new zzsk(zzsj));
        zzal.zza((zzke) new zzss(zzsj));
        zzal.zza((zznh) new zzsu(zzsj));
        zzal.zza((zzjl) new zzsw(zzsj));
        zzal.zza((zzadd) new zzsy(zzsj));
    }

    zzto(zztn zztn, zzsi zzsi, zzir zzir) {
        this(zztn, zzsi);
        this.zzKw = zzir;
    }

    /* Access modifiers changed, original: final */
    public final boolean load() {
        if (this.zzKz) {
            return false;
        }
        this.zzKA = this.zzKv.zza(zztl.zzj(this.zzKw != null ? this.zzKw : this.zzKB.zzKs));
        this.zzKz = true;
        this.zzKy = zzbs.zzbF().currentTimeMillis();
        return true;
    }
}
