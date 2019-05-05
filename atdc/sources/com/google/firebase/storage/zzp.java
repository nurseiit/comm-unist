package com.google.firebase.storage;

import com.google.android.gms.tasks.OnSuccessListener;

final class zzp implements OnSuccessListener<TContinuationResult> {
    private /* synthetic */ zzo zzcpb;

    zzp(zzo zzo) {
        this.zzcpb = zzo;
    }

    public final void onSuccess(TContinuationResult tContinuationResult) {
        this.zzcpb.zzaIk.setResult(tContinuationResult);
    }
}
