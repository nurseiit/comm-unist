package com.google.android.gms.internal;

final class zzht implements Runnable {
    private /* synthetic */ zzhs zzzs;

    zzht(zzhs zzhs) {
        this.zzzs = zzhs;
    }

    public final void run() {
        this.zzzs.disconnect();
    }
}
