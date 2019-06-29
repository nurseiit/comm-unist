package com.google.android.gms.internal;

import android.accounts.Account;
import com.google.android.gms.common.api.Status;

final class zzaqr extends zzaqu {
    private /* synthetic */ zzaqq zzakC;

    zzaqr(zzaqq zzaqq) {
        this.zzakC = zzaqq;
    }

    public final void zzd(Account account) {
        this.zzakC.setResult(new zzaqv(account != null ? Status.zzaBm : zzaqn.zzakA, account));
    }
}
