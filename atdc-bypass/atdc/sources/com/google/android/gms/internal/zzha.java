package com.google.android.gms.internal;

import android.view.View;

final class zzha implements Runnable {
    private /* synthetic */ View zzyI;
    private /* synthetic */ zzgz zzyJ;

    zzha(zzgz zzgz, View view) {
        this.zzyJ = zzgz;
        this.zzyI = view;
    }

    public final void run() {
        this.zzyJ.zzf(this.zzyI);
    }
}
