package com.google.android.gms.internal;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.auth.GetTokenResult;

final class mt implements OnSuccessListener<GetTokenResult> {
    private /* synthetic */ pv zzbZu;

    mt(mr mrVar, pv pvVar) {
        this.zzbZu = pvVar;
    }

    public final /* synthetic */ void onSuccess(Object obj) {
        this.zzbZu.zzgF(((GetTokenResult) obj).getToken());
    }
}
