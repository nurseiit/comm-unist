package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.ArrayList;

final class zzcsd extends zzf {
    private /* synthetic */ String zzbBP;
    private /* synthetic */ String zzbBR;
    private /* synthetic */ int[] zzbBS;
    private /* synthetic */ int zzbBT;

    zzcsd(GoogleApiClient googleApiClient, int[] iArr, int i, String str, String str2) {
        this.zzbBS = iArr;
        this.zzbBT = i;
        this.zzbBR = str;
        this.zzbBP = str2;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzcsn zzcsn = (zzcsn) zzb;
        ArrayList arrayList = new ArrayList();
        for (int valueOf : this.zzbBS) {
            arrayList.add(Integer.valueOf(valueOf));
        }
        zzcsn.zza(this.zzbBW, arrayList, this.zzbBT, this.zzbBR, this.zzbBP);
    }
}
