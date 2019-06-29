package com.google.firebase.database;

import com.google.android.gms.internal.za;
import com.google.firebase.database.DatabaseReference.CompletionListener;

final class zzo implements Runnable {
    private /* synthetic */ za zzbYN;
    private /* synthetic */ OnDisconnect zzbZg;

    zzo(OnDisconnect onDisconnect, za zaVar) {
        this.zzbZg = onDisconnect;
        this.zzbYN = zaVar;
    }

    public final void run() {
        this.zzbZg.zzbYY.zza(this.zzbZg.zzbZf, (CompletionListener) this.zzbYN.zzJG());
    }
}
