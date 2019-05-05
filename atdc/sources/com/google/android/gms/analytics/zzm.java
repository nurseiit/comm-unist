package com.google.android.gms.analytics;

import java.util.Iterator;

final class zzm implements Runnable {
    private /* synthetic */ zzi zzaej;
    private /* synthetic */ zzl zzaek;

    zzm(zzl zzl, zzi zzi) {
        this.zzaek = zzl;
        this.zzaej = zzi;
    }

    public final void run() {
        this.zzaej.zzjw().zza(this.zzaej);
        Iterator it = this.zzaek.zzaee.iterator();
        while (it.hasNext()) {
            it.next();
        }
        zzl.zzb(this.zzaej);
    }
}
