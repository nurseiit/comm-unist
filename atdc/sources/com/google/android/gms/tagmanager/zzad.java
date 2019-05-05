package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.ee;
import com.google.android.gms.internal.zzbn;
import com.google.android.gms.internal.zzbq;

final class zzad implements zzdi<ee> {
    private /* synthetic */ zzy zzbDX;

    private zzad(zzy zzy) {
        this.zzbDX = zzy;
    }

    /* synthetic */ zzad(zzy zzy, zzz zzz) {
        this(zzy);
    }

    public final /* synthetic */ void onSuccess(Object obj) {
        zzbq zzbq;
        ee eeVar = (ee) obj;
        if (eeVar.zzbLH != null) {
            zzbq = eeVar.zzbLH;
        } else {
            zzbn zzbn = eeVar.zzlB;
            zzbq zzbq2 = new zzbq();
            zzbq2.zzlB = zzbn;
            zzbq2.zzlA = null;
            zzbq2.zzlC = zzbn.version;
            zzbq = zzbq2;
        }
        this.zzbDX.zza(zzbq, eeVar.zzbLG, true);
    }

    public final void zzbw(int i) {
        if (!this.zzbDX.zzbDS) {
            this.zzbDX.zzag(0);
        }
    }
}
