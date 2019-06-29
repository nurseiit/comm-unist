package com.google.android.gms.fitness.request;

import java.util.HashMap;
import java.util.Map;

public final class zzc {
    private static final zzc zzaWk = new zzc();
    private final Map<BleScanCallback, zza> zzaWl = new HashMap();

    private zzc() {
    }

    public static zzc zztT() {
        return zzaWk;
    }

    public final zza zza(BleScanCallback bleScanCallback) {
        zza zza;
        synchronized (this.zzaWl) {
            zza = (zza) this.zzaWl.get(bleScanCallback);
            if (zza == null) {
                zza = new zza(bleScanCallback);
                this.zzaWl.put(bleScanCallback, zza);
            }
        }
        return zza;
    }

    public final zza zzb(BleScanCallback bleScanCallback) {
        synchronized (this.zzaWl) {
            zza zza = (zza) this.zzaWl.get(bleScanCallback);
            if (zza != null) {
                return zza;
            }
            zza = new zza(bleScanCallback);
            return zza;
        }
    }
}
