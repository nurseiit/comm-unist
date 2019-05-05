package com.google.android.gms.location.places.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.places.zzd;
import com.google.android.gms.location.places.zze;

final class zzaq extends zze<zzm> {
    private /* synthetic */ int zzbla;
    private /* synthetic */ int zzblb;
    private /* synthetic */ zzap zzblc;

    zzaq(zzap zzap, Api api, GoogleApiClient googleApiClient, int i, int i2) {
        this.zzblc = zzap;
        this.zzbla = i;
        this.zzblb = i2;
        super(api, googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzm) zzb).zza(new zzd((zze) this), this.zzblc.zzbkY, this.zzbla, this.zzblb, this.zzblc.mIndex);
    }
}
