package com.google.android.gms.internal;

final class nc implements uy<Void, Integer> {
    private /* synthetic */ uv zzbZH;

    nc(nb nbVar, uv uvVar) {
        this.zzbZH = uvVar;
    }

    public final /* synthetic */ Object zza(qr qrVar, Object obj, Object obj2) {
        Integer num = (Integer) obj2;
        return Integer.valueOf(this.zzbZH.zzJ(qrVar) == null ? num.intValue() + 1 : num.intValue());
    }
}
