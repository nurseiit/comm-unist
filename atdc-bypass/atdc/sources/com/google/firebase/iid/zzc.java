package com.google.firebase.iid;

import android.content.Intent;

final class zzc implements Runnable {
    private /* synthetic */ Intent val$intent;
    private /* synthetic */ Intent zzckg;
    private /* synthetic */ zzb zzckh;

    zzc(zzb zzb, Intent intent, Intent intent2) {
        this.zzckh = zzb;
        this.val$intent = intent;
        this.zzckg = intent2;
    }

    public final void run() {
        this.zzckh.handleIntent(this.val$intent);
        this.zzckh.zzm(this.zzckg);
    }
}
