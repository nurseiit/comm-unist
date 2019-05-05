package com.google.android.gms.internal;

final class mz implements Runnable {
    private /* synthetic */ String val$message;
    private /* synthetic */ Throwable zzbZB;

    mz(my myVar, String str, Throwable th) {
        this.val$message = str;
        this.zzbZB = th;
    }

    public final void run() {
        throw new RuntimeException(this.val$message, this.zzbZB);
    }
}
