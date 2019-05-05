package com.google.android.gms.auth;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.zzeh;
import java.io.IOException;
import java.util.List;

final class zzg implements zzi<List<AccountChangeEvent>> {
    private /* synthetic */ String zzakr;
    private /* synthetic */ int zzaks;

    zzg(String str, int i) {
        this.zzakr = str;
        this.zzaks = i;
    }

    public final /* synthetic */ Object zzy(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
        return ((AccountChangeEventsResponse) zzd.zzl(zzeh.zza(iBinder).zza(new AccountChangeEventsRequest().setAccountName(this.zzakr).setEventIndex(this.zzaks)))).getEvents();
    }
}
