package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.SystemClock;

@zzzn
final class zzafi {
    private long zzYi = -1;
    private long zzYj = -1;

    public final Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putLong("topen", this.zzYi);
        bundle.putLong("tclose", this.zzYj);
        return bundle;
    }

    public final long zzhf() {
        return this.zzYj;
    }

    public final void zzhg() {
        this.zzYj = SystemClock.elapsedRealtime();
    }

    public final void zzhh() {
        this.zzYi = SystemClock.elapsedRealtime();
    }
}
