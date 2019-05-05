package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.firebase.crash.FirebaseCrash.zza;

public final class me extends mb {
    private final String zzbYi;

    public me(@NonNull Context context, @NonNull zza zza, @NonNull String str) {
        super(context, zza);
        this.zzbYi = str;
    }

    /* Access modifiers changed, original: protected|final */
    @NonNull
    public final String getErrorMessage() {
        return "Failed to log message";
    }

    public final /* bridge */ /* synthetic */ void run() {
        super.run();
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzd(@NonNull mj mjVar) throws RemoteException {
        mjVar.log(this.zzbYi);
    }
}
