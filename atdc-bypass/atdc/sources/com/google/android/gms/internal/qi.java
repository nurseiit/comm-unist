package com.google.android.gms.internal;

import com.google.firebase.database.DatabaseError;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class qi {
    private AtomicBoolean zzccX = new AtomicBoolean(false);
    private qj zzccY;
    private boolean zzccZ = false;

    public abstract vt zzGH();

    public final void zzGV() {
        if (this.zzccX.compareAndSet(false, true) && this.zzccY != null) {
            this.zzccY.zzd(this);
            this.zzccY = null;
        }
    }

    public final boolean zzGW() {
        return this.zzccX.get();
    }

    public abstract qi zza(vt vtVar);

    public abstract vj zza(vi viVar, vt vtVar);

    public final void zza(qj qjVar) {
        this.zzccY = qjVar;
    }

    public abstract void zza(vj vjVar);

    public abstract void zza(DatabaseError databaseError);

    public abstract boolean zza(vl vlVar);

    public final void zzaE(boolean z) {
        this.zzccZ = true;
    }

    public abstract boolean zzc(qi qiVar);
}
