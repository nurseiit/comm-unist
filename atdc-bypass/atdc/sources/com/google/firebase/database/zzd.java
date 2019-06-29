package com.google.firebase.database;

import com.google.android.gms.internal.wp;
import com.google.android.gms.internal.xm;
import com.google.android.gms.internal.za;
import com.google.firebase.database.DatabaseReference.CompletionListener;

final class zzd implements Runnable {
    private /* synthetic */ za zzbYN;
    private /* synthetic */ DatabaseReference zzbYO;
    private /* synthetic */ xm zzbYP;

    zzd(DatabaseReference databaseReference, xm xmVar, za zaVar) {
        this.zzbYO = databaseReference;
        this.zzbYP = xmVar;
        this.zzbYN = zaVar;
    }

    public final void run() {
        this.zzbYO.zzbYY.zza(this.zzbYO.zzbZf.zza(wp.zzIL()), this.zzbYP, (CompletionListener) this.zzbYN.zzJG());
    }
}
