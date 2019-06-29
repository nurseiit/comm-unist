package com.google.android.gms.internal;

import com.google.android.gms.common.ConnectionResult;
import java.util.Collections;

final class zzbdi implements Runnable {
    private /* synthetic */ ConnectionResult zzaEw;
    private /* synthetic */ zzbdh zzaEy;

    zzbdi(zzbdh zzbdh, ConnectionResult connectionResult) {
        this.zzaEy = zzbdh;
        this.zzaEw = connectionResult;
    }

    public final void run() {
        if (this.zzaEw.isSuccess()) {
            this.zzaEy.zzaEx = true;
            if (this.zzaEy.zzaCy.zzmv()) {
                this.zzaEy.zzqz();
                return;
            } else {
                this.zzaEy.zzaCy.zza(null, Collections.emptySet());
                return;
            }
        }
        ((zzbdd) this.zzaEy.zzaEm.zzaCB.get(this.zzaEy.zzaAK)).onConnectionFailed(this.zzaEw);
    }
}
