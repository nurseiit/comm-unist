package com.google.firebase.auth;

import android.support.annotation.NonNull;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;

final class zzl implements Continuation<GetTokenResult, Task<Void>> {
    private /* synthetic */ FirebaseUser zzbWm;

    zzl(FirebaseUser firebaseUser) {
        this.zzbWm = firebaseUser;
    }

    public final /* synthetic */ Object then(@NonNull Task task) throws Exception {
        return this.zzbWm.zzEJ().zzgp(((GetTokenResult) task.getResult()).getToken());
    }
}
