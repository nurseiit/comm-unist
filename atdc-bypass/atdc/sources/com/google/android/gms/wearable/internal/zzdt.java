package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.MessageApi.SendMessageResult;

final class zzdt extends zzn<SendMessageResult> {
    private /* synthetic */ byte[] zzbKQ;
    private /* synthetic */ String zzbST;
    private /* synthetic */ String zzbSe;

    zzdt(zzds zzds, GoogleApiClient googleApiClient, String str, String str2, byte[] bArr) {
        this.zzbSe = str;
        this.zzbST = str2;
        this.zzbKQ = bArr;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzfw zzfw = (zzfw) zzb;
        ((zzdn) zzfw.zzrf()).zza(new zzfu(this), this.zzbSe, this.zzbST, this.zzbKQ);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return new zzdw(status, -1);
    }
}
