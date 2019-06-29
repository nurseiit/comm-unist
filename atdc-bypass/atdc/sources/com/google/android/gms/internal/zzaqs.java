package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.RemoteException;
import com.google.android.gms.auth.account.zzd;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

final class zzaqs extends zzbay<Result, zzaqx> {
    private /* synthetic */ Account zzako;

    zzaqs(zzaqn zzaqn, Api api, GoogleApiClient googleApiClient, Account account) {
        this.zzako = account;
        super(api, googleApiClient);
    }

    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((Result) obj);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzd) ((zzaqx) zzb).zzrf()).zza(new zzaqt(this), this.zzako);
    }

    /* Access modifiers changed, original: protected|final */
    public final Result zzb(Status status) {
        return new zzaqw(status);
    }
}
