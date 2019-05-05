package com.google.android.gms.internal;

import java.util.List;

final class su extends ns<wp, uv<sn>> {
    private /* synthetic */ List zzcdE;
    private /* synthetic */ so zzceR;
    private /* synthetic */ xm zzceW;
    private /* synthetic */ ts zzceX;
    private /* synthetic */ tx zzceY;

    su(so soVar, xm xmVar, ts tsVar, tx txVar, List list) {
        this.zzceR = soVar;
        this.zzceW = xmVar;
        this.zzceX = tsVar;
        this.zzceY = txVar;
        this.zzcdE = list;
    }

    public final /* synthetic */ void zzh(Object obj, Object obj2) {
        wp wpVar = (wp) obj;
        uv uvVar = (uv) obj2;
        xm zzm = this.zzceW != null ? this.zzceW.zzm(wpVar) : null;
        ts zzb = this.zzceX.zzb(wpVar);
        tx zzc = this.zzceY.zzc(wpVar);
        if (zzc != null) {
            this.zzcdE.addAll(this.zzceR.zzb(zzc, uvVar, zzm, zzb));
        }
    }
}
