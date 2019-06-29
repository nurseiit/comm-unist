package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Api.zze;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.internal.zzbx;

public final class zzbca implements zzbcw {
    private final zzbcx zzaCZ;
    private boolean zzaDa = false;

    public zzbca(zzbcx zzbcx) {
        this.zzaCZ = zzbcx;
    }

    public final void begin() {
    }

    public final void connect() {
        if (this.zzaDa) {
            this.zzaDa = false;
            this.zzaCZ.zza(new zzbcc(this, this));
        }
    }

    public final boolean disconnect() {
        if (this.zzaDa) {
            return false;
        }
        if (this.zzaCZ.zzaCl.zzqf()) {
            this.zzaDa = true;
            for (zzbes zzqK : this.zzaCZ.zzaCl.zzaDK) {
                zzqK.zzqK();
            }
            return false;
        }
        this.zzaCZ.zzg(null);
        return true;
    }

    public final void onConnected(Bundle bundle) {
    }

    public final void onConnectionSuspended(int i) {
        this.zzaCZ.zzg(null);
        this.zzaCZ.zzaDY.zze(i, this.zzaDa);
    }

    public final void zza(ConnectionResult connectionResult, Api<?> api, boolean z) {
    }

    public final <A extends zzb, R extends Result, T extends zzbay<R, A>> T zzd(T t) {
        return zze(t);
    }

    public final <A extends zzb, T extends zzbay<? extends Result, A>> T zze(T t) {
        try {
            this.zzaCZ.zzaCl.zzaDL.zzb(t);
            zzbcp zzbcp = this.zzaCZ.zzaCl;
            zzb zzb = (zze) zzbcp.zzaDF.get(t.zzpd());
            zzbo.zzb((Object) zzb, (Object) "Appropriate Api was not requested.");
            if (zzb.isConnected() || !this.zzaCZ.zzaDU.containsKey(t.zzpd())) {
                if (zzb instanceof zzbx) {
                    zzbx zzbx = (zzbx) zzb;
                    zzb = null;
                }
                t.zzb(zzb);
                return t;
            }
            t.zzr(new Status(17));
            return t;
        } catch (DeadObjectException unused) {
            this.zzaCZ.zza(new zzbcb(this, this));
            return t;
        }
    }

    /* Access modifiers changed, original: final */
    public final void zzpU() {
        if (this.zzaDa) {
            this.zzaDa = false;
            this.zzaCZ.zzaCl.zzaDL.release();
            disconnect();
        }
    }
}
