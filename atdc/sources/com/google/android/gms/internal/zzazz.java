package com.google.android.gms.internal;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

final class zzazz extends zzbay<Status, zzbab> {
    private final zzazu zzazM;

    zzazz(zzazu zzazu, GoogleApiClient googleApiClient) {
        super(zzazn.API, googleApiClient);
        this.zzazM = zzazu;
    }

    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((Status) obj);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzbab zzbab = (zzbab) zzb;
        zzbaa zzbaa = new zzbaa(this);
        try {
            zzazu zzazu = this.zzazM;
            if (zzazu.zzazu != null && zzazu.zzazB.zzctX.length == 0) {
                zzazu.zzazB.zzctX = zzazu.zzazu.zzoU();
            }
            if (zzazu.zzazL != null && zzazu.zzazB.zzcue.length == 0) {
                zzazu.zzazB.zzcue = zzazu.zzazL.zzoU();
            }
            zzazu.zzazF = adp.zzc(zzazu.zzazB);
            ((zzbaf) zzbab.zzrf()).zza(zzbaa, this.zzazM);
        } catch (RuntimeException e) {
            Log.e("ClearcutLoggerApiImpl", "derived ClearcutLogger.MessageProducer ", e);
            zzr(new Status(10, "MessageProducer"));
        }
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return status;
    }
}
