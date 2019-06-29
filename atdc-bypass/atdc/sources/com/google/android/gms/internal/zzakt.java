package com.google.android.gms.internal;

import java.util.Map;

final class zzakt implements Runnable {
    private /* synthetic */ Map zzacB;
    private /* synthetic */ zzaks zzacC;

    zzakt(zzaks zzaks, Map map) {
        this.zzacC = zzaks;
        this.zzacB = map;
    }

    public final void run() {
        this.zzacC.zzJH.zza("pubVideoCmd", this.zzacB);
    }
}
