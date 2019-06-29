package com.google.firebase.database;

import com.google.android.gms.internal.xm;
import com.google.android.gms.internal.za;
import com.google.firebase.database.DatabaseReference.CompletionListener;

final class zzc implements Runnable {
    private /* synthetic */ xm zzbYM;
    private /* synthetic */ za zzbYN;
    private /* synthetic */ DatabaseReference zzbYO;

    zzc(DatabaseReference databaseReference, xm xmVar, za zaVar) {
        this.zzbYO = databaseReference;
        this.zzbYM = xmVar;
        this.zzbYN = zaVar;
    }

    public final void run() {
        this.zzbYO.zzbYY.zza(this.zzbYO.zzbZf, this.zzbYM, (CompletionListener) this.zzbYN.zzJG());
    }
}
