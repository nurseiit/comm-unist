package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.firebase.FirebaseApiNotAvailableException;

final class ms implements OnFailureListener {
    private /* synthetic */ pv zzbZu;

    ms(mr mrVar, pv pvVar) {
        this.zzbZu = pvVar;
    }

    public final void onFailure(@NonNull Exception exception) {
        Object obj = ((exception instanceof FirebaseApiNotAvailableException) || (exception instanceof aaf)) ? 1 : null;
        if (obj != null) {
            this.zzbZu.zzgF(null);
        } else {
            this.zzbZu.onError(exception.getMessage());
        }
    }
}
