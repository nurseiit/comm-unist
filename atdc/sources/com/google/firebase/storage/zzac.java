package com.google.firebase.storage;

import com.google.android.gms.internal.abz;
import com.google.android.gms.internal.acf;

final class zzac implements Runnable {
    private /* synthetic */ acf zzcpS;
    private /* synthetic */ UploadTask zzcpT;

    zzac(UploadTask uploadTask, acf acf) {
        this.zzcpT = uploadTask;
        this.zzcpS = acf;
    }

    public final void run() {
        this.zzcpS.zze(abz.zzf(this.zzcpT.zzcoe.getStorage().getApp()), this.zzcpT.zzcoe.getStorage().getApp().getApplicationContext());
    }
}
