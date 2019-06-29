package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import com.google.firebase.FirebaseApp.zza;

final class mu implements zza {
    final /* synthetic */ pw zzbZv;
    private /* synthetic */ mr zzbZw;

    mu(mr mrVar, pw pwVar) {
        this.zzbZw = mrVar;
        this.zzbZv = pwVar;
    }

    public final void zzb(@NonNull aae aae) {
        this.zzbZw.zzbZs.execute(new mv(this, aae));
    }
}
