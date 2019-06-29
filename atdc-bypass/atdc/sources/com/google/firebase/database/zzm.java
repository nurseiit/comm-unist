package com.google.firebase.database;

import com.google.android.gms.internal.xm;
import com.google.android.gms.internal.za;
import com.google.firebase.database.DatabaseReference.CompletionListener;

final class zzm implements Runnable {
    private /* synthetic */ xm zzbYM;
    private /* synthetic */ za zzbYN;
    private /* synthetic */ OnDisconnect zzbZg;

    zzm(OnDisconnect onDisconnect, xm xmVar, za zaVar) {
        this.zzbZg = onDisconnect;
        this.zzbYM = xmVar;
        this.zzbYN = zaVar;
    }

    public final void run() {
        this.zzbZg.zzbYY.zzb(this.zzbZg.zzbZf, this.zzbYM, (CompletionListener) this.zzbYN.zzJG());
    }
}
