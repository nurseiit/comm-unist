package com.google.android.gms.internal;

import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference.CompletionListener;

final class ru implements pf {
    private /* synthetic */ qr zzccH;
    private /* synthetic */ qu zzcdA;
    private /* synthetic */ CompletionListener zzcdD;
    private /* synthetic */ xm zzcdY;

    ru(qu quVar, qr qrVar, xm xmVar, CompletionListener completionListener) {
        this.zzcdA = quVar;
        this.zzccH = qrVar;
        this.zzcdY = xmVar;
        this.zzcdD = completionListener;
    }

    public final void zzaa(String str, String str2) {
        DatabaseError zzac = qu.zzab(str, str2);
        this.zzcdA.zza("onDisconnect().setValue", this.zzccH, zzac);
        if (zzac == null) {
            this.zzcdA.zzcdl.zzh(this.zzccH, this.zzcdY);
        }
        this.zzcdA.zza(this.zzcdD, zzac, this.zzccH);
    }
}
