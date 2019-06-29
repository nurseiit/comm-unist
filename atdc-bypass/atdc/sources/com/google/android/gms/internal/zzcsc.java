package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.List;

final class zzcsc extends zzf {
    private /* synthetic */ String zzbBP;
    private /* synthetic */ List zzbBQ;
    private /* synthetic */ String zzbBR;

    zzcsc(zzcsa zzcsa, GoogleApiClient googleApiClient, List list, String str, String str2) {
        this.zzbBQ = list;
        this.zzbBR = str;
        this.zzbBP = str2;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzcsn) zzb).zza(this.zzbBW, this.zzbBQ, 2, this.zzbBR, this.zzbBP);
    }
}
