package com.google.firebase.database;

import com.google.android.gms.internal.za;
import com.google.firebase.database.DatabaseReference.CompletionListener;
import java.util.Map;

final class zzn implements Runnable {
    private /* synthetic */ za zzbYN;
    private /* synthetic */ OnDisconnect zzbZg;
    private /* synthetic */ Map zzbZh;
    private /* synthetic */ Map zzbZi;

    zzn(OnDisconnect onDisconnect, Map map, za zaVar, Map map2) {
        this.zzbZg = onDisconnect;
        this.zzbZh = map;
        this.zzbYN = zaVar;
        this.zzbZi = map2;
    }

    public final void run() {
        this.zzbZg.zzbYY.zza(this.zzbZg.zzbZf, this.zzbZh, (CompletionListener) this.zzbYN.zzJG(), this.zzbZi);
    }
}
