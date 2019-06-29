package com.google.android.gms.internal;

import java.util.List;

final class nd implements uy<Void, Void> {
    private /* synthetic */ uv zzbZH;
    private /* synthetic */ List zzbZI;
    private /* synthetic */ qr zzbZJ;
    private /* synthetic */ xm zzbZK;

    nd(nb nbVar, uv uvVar, List list, qr qrVar, xm xmVar) {
        this.zzbZH = uvVar;
        this.zzbZI = list;
        this.zzbZJ = qrVar;
        this.zzbZK = xmVar;
    }

    public final /* synthetic */ Object zza(qr qrVar, Object obj, Object obj2) {
        if (this.zzbZH.zzJ(qrVar) == null) {
            this.zzbZI.add(new za(this.zzbZJ.zzh(qrVar), this.zzbZK.zzN(qrVar)));
        }
        return null;
    }
}
