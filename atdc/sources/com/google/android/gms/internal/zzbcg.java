package com.google.android.gms.internal;

import android.support.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api.zze;
import com.google.android.gms.common.internal.zzj;
import java.util.Map;

final class zzbcg extends zzbcn {
    final /* synthetic */ zzbcd zzaDp;
    private final Map<zze, zzbcf> zzaDr;

    public zzbcg(zzbcd zzbcd, Map<zze, zzbcf> map) {
        this.zzaDp = zzbcd;
        super(zzbcd, null);
        this.zzaDr = map;
    }

    @WorkerThread
    public final void zzpV() {
        Object obj;
        Object obj2 = 1;
        int i = 0;
        Object obj3 = null;
        Object obj4 = 1;
        for (zze zze : this.zzaDr.keySet()) {
            if (!zze.zzpe()) {
                obj4 = null;
            } else if (!((zzbcf) this.zzaDr.get(zze)).zzaCj) {
                obj = 1;
                break;
            } else {
                obj3 = 1;
            }
        }
        obj2 = obj3;
        obj = null;
        if (obj2 != null) {
            i = this.zzaDp.zzaCF.isGooglePlayServicesAvailable(this.zzaDp.mContext);
        }
        if (i == 0 || (obj == null && obj4 == null)) {
            if (this.zzaDp.zzaDj) {
                this.zzaDp.zzaDh.connect();
            }
            for (zze zze2 : this.zzaDr.keySet()) {
                zzj zzj = (zzj) this.zzaDr.get(zze2);
                if (!zze2.zzpe() || i == 0) {
                    zze2.zza(zzj);
                } else {
                    this.zzaDp.zzaCZ.zza(new zzbci(this, this.zzaDp, zzj));
                }
            }
            return;
        }
        this.zzaDp.zzaCZ.zza(new zzbch(this, this.zzaDp, new ConnectionResult(i, null)));
    }
}
