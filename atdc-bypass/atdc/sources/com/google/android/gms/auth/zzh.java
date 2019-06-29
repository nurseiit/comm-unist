package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.zzeh;
import java.io.IOException;

final class zzh implements zzi<Bundle> {
    private /* synthetic */ Account zzako;

    zzh(Account account) {
        this.zzako = account;
    }

    public final /* synthetic */ Object zzy(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
        return (Bundle) zzd.zzl(zzeh.zza(iBinder).zza(this.zzako));
    }
}
