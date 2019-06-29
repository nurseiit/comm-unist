package com.google.firebase.iid;

import android.content.Intent;
import android.util.Log;

final class zze implements Runnable {
    private /* synthetic */ Intent val$intent;
    private /* synthetic */ zzd zzckl;

    zze(zzd zzd, Intent intent) {
        this.zzckl = zzd;
        this.val$intent = intent;
    }

    public final void run() {
        String valueOf = String.valueOf(this.val$intent.getAction());
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 61);
        stringBuilder.append("Service took too long to process intent: ");
        stringBuilder.append(valueOf);
        stringBuilder.append(" App may get closed.");
        Log.w("EnhancedIntentService", stringBuilder.toString());
        this.zzckl.finish();
    }
}
