package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.request.zzba;
import com.google.android.gms.fitness.result.SessionStopResult;
import java.util.Collections;

final class zzbzb extends zzbvp<SessionStopResult> {
    private /* synthetic */ String val$name = null;
    private /* synthetic */ String zzaWd;

    zzbzb(zzbyz zzbyz, GoogleApiClient googleApiClient, String str, String str2) {
        this.zzaWd = str2;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwv) ((zzbvo) zzb).zzrf()).zza(new zzba(this.val$name, this.zzaWd, new zzbzh(this, null)));
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return new SessionStopResult(status, Collections.emptyList());
    }
}
