package com.google.firebase.database;

import com.google.android.gms.internal.pz;
import com.google.android.gms.internal.za;
import com.google.firebase.database.DatabaseReference.CompletionListener;
import java.util.Map;

final class zze implements Runnable {
    private /* synthetic */ za zzbYN;
    private /* synthetic */ DatabaseReference zzbYO;
    private /* synthetic */ pz zzbYQ;
    private /* synthetic */ Map zzbYR;

    zze(DatabaseReference databaseReference, pz pzVar, za zaVar, Map map) {
        this.zzbYO = databaseReference;
        this.zzbYQ = pzVar;
        this.zzbYN = zaVar;
        this.zzbYR = map;
    }

    public final void run() {
        this.zzbYO.zzbYY.zza(this.zzbYO.zzbZf, this.zzbYQ, (CompletionListener) this.zzbYN.zzJG(), this.zzbYR);
    }
}
