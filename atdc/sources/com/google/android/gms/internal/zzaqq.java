package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.auth.account.WorkAccountApi.AddAccountResult;
import com.google.android.gms.auth.account.zzd;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

final class zzaqq extends zzbay<AddAccountResult, zzaqx> {
    private /* synthetic */ String zzakq;

    zzaqq(zzaqn zzaqn, Api api, GoogleApiClient googleApiClient, String str) {
        this.zzakq = str;
        super(api, googleApiClient);
    }

    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((AddAccountResult) obj);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzd) ((zzaqx) zzb).zzrf()).zza(new zzaqr(this), this.zzakq);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return new zzaqv(status, null);
    }
}
