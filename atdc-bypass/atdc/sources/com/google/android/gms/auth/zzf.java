package com.google.android.gms.auth;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.zzeh;
import java.io.IOException;

final class zzf implements zzi<Void> {
    private /* synthetic */ Bundle val$extras;
    private /* synthetic */ String zzakq;

    zzf(String str, Bundle bundle) {
        this.zzakq = str;
        this.val$extras = bundle;
    }

    public final /* synthetic */ Object zzy(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
        Bundle bundle = (Bundle) zzd.zzl(zzeh.zza(iBinder).zza(this.zzakq, this.val$extras));
        String string = bundle.getString("Error");
        if (bundle.getBoolean("booleanResult")) {
            return null;
        }
        throw new GoogleAuthException(string);
    }
}
