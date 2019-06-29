package com.google.android.gms.internal;

import com.google.firebase.database.DatabaseError;

final class rq implements pf {
    private /* synthetic */ qu zzcdA;
    private /* synthetic */ tm zzcdU;

    rq(qu quVar, tm tmVar) {
        this.zzcdA = quVar;
        this.zzcdU = tmVar;
    }

    public final void zzaa(String str, String str2) {
        DatabaseError zzac = qu.zzab(str, str2);
        this.zzcdA.zza("Persisted write", this.zzcdU.zzFq(), zzac);
        this.zzcdA.zza(this.zzcdU.zzHt(), this.zzcdU.zzFq(), zzac);
    }
}
