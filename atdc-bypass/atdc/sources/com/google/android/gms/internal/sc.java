package com.google.android.gms.internal;

import java.util.Map;

final class sc implements Runnable {
    private /* synthetic */ qd zzcet;
    private /* synthetic */ ry zzceu;

    sc(ry ryVar, qd qdVar) {
        this.zzceu = ryVar;
        this.zzcet = qdVar;
    }

    public final void run() {
        synchronized (this.zzceu.zzces) {
            if (this.zzceu.zzces.containsKey(this.zzcet)) {
                for (qu resume : ((Map) this.zzceu.zzces.get(this.zzcet)).values()) {
                    resume.resume();
                }
            }
        }
    }
}
