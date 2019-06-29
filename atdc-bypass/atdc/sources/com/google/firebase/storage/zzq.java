package com.google.firebase.storage;

import android.support.annotation.NonNull;
import com.google.android.gms.tasks.OnFailureListener;

final class zzq implements OnFailureListener {
    private /* synthetic */ zzo zzcpb;

    zzq(zzo zzo) {
        this.zzcpb = zzo;
    }

    public final void onFailure(@NonNull Exception exception) {
        this.zzcpb.zzaIk.setException(exception);
    }
}
