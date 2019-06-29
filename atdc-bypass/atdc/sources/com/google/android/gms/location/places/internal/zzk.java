package com.google.android.gms.location.places.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.places.zzm;
import com.google.android.gms.location.places.zzm.zzc;
import java.util.Arrays;

final class zzk extends zzc<zzm> {
    private /* synthetic */ String[] zzbkl;

    zzk(zzh zzh, Api api, GoogleApiClient googleApiClient, String[] strArr) {
        this.zzbkl = strArr;
        super(api, googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzm) zzb).zza(new zzm((zzc) this), Arrays.asList(this.zzbkl));
    }
}
