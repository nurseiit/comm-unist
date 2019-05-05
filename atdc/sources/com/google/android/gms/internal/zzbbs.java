package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import android.support.v4.util.ArrayMap;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.zza;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.Collections;
import java.util.Map;

final class zzbbs implements OnCompleteListener<Void> {
    private /* synthetic */ zzbbp zzaCP;
    private zzbei zzaCQ;

    zzbbs(zzbbp zzbbp, zzbei zzbei) {
        this.zzaCP = zzbbp;
        this.zzaCQ = zzbei;
    }

    /* Access modifiers changed, original: final */
    public final void cancel() {
        this.zzaCQ.zzmF();
    }

    public final void onComplete(@NonNull Task<Void> task) {
        this.zzaCP.zzaCv.lock();
        try {
            zzbei zzbei;
            if (this.zzaCP.zzaCK) {
                if (task.isSuccessful()) {
                    this.zzaCP.zzaCM = new ArrayMap(this.zzaCP.zzaCC.size());
                    for (zzbbo zzph : this.zzaCP.zzaCC.values()) {
                        this.zzaCP.zzaCM.put(zzph.zzph(), ConnectionResult.zzazX);
                    }
                } else if (task.getException() instanceof zza) {
                    zza zza = (zza) task.getException();
                    if (this.zzaCP.zzaCI) {
                        this.zzaCP.zzaCM = new ArrayMap(this.zzaCP.zzaCC.size());
                        for (zzbbo zzbbo : this.zzaCP.zzaCC.values()) {
                            Map zzg;
                            zzbat zzph2 = zzbbo.zzph();
                            Object zza2 = zza.zza(zzbbo);
                            if (this.zzaCP.zza(zzbbo, (ConnectionResult) zza2)) {
                                zzg = this.zzaCP.zzaCM;
                                zza2 = new ConnectionResult(16);
                            } else {
                                zzg = this.zzaCP.zzaCM;
                            }
                            zzg.put(zzph2, zza2);
                        }
                    } else {
                        this.zzaCP.zzaCM = zza.zzpf();
                    }
                } else {
                    Log.e("ConnectionlessGAC", "Unexpected availability exception", task.getException());
                    this.zzaCP.zzaCM = Collections.emptyMap();
                }
                if (this.zzaCP.isConnected()) {
                    this.zzaCP.zzaCL.putAll(this.zzaCP.zzaCM);
                    if (this.zzaCP.zzpN() == null) {
                        this.zzaCP.zzpL();
                        this.zzaCP.zzpM();
                        this.zzaCP.zzaCG.signalAll();
                    }
                }
                zzbei = this.zzaCQ;
            } else {
                zzbei = this.zzaCQ;
            }
            zzbei.zzmF();
        } finally {
            this.zzaCP.zzaCv.unlock();
        }
    }
}
