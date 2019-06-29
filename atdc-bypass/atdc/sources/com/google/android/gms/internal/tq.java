package com.google.android.gms.internal;

import java.util.List;

final class tq implements uz<tm> {
    private /* synthetic */ boolean zzcfw;
    private /* synthetic */ List zzcfx;
    private /* synthetic */ qr zzcfy;

    tq(tp tpVar, boolean z, List list, qr qrVar) {
        this.zzcfw = z;
        this.zzcfx = list;
        this.zzcfy = qrVar;
    }

    public final /* synthetic */ boolean zzaj(Object obj) {
        tm tmVar = (tm) obj;
        return (tmVar.isVisible() || this.zzcfw) && !this.zzcfx.contains(Long.valueOf(tmVar.zzHt())) && (tmVar.zzFq().zzi(this.zzcfy) || this.zzcfy.zzi(tmVar.zzFq()));
    }
}
