package com.google.android.gms.internal;

import java.util.Map;

final class sb implements Runnable {
    private /* synthetic */ qd zzcet;
    private /* synthetic */ ry zzceu;

    sb(ry ryVar, qd qdVar) {
        this.zzceu = ryVar;
        this.zzcet = qdVar;
    }

    public final void run() {
        synchronized (this.zzceu.zzces) {
            if (this.zzceu.zzces.containsKey(this.zzcet)) {
                Object obj;
                loop0:
                while (true) {
                    obj = 1;
                    for (qu quVar : ((Map) this.zzceu.zzces.get(this.zzcet)).values()) {
                        quVar.interrupt();
                        if (obj == null || quVar.zzHj()) {
                            obj = null;
                        }
                    }
                    break loop0;
                }
                if (obj != null) {
                    this.zzcet.stop();
                }
            }
        }
    }
}
