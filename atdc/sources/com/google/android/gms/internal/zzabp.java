package com.google.android.gms.internal;

final class zzabp implements zzajq {
    private /* synthetic */ zzabn zzUE;

    zzabp(zzabn zzabn) {
        this.zzUE = zzabn;
    }

    public final void run() {
        zzajc.e("JS engine could not be obtained. Cancelling ad request");
        this.zzUE.zzUA.fail();
    }
}
