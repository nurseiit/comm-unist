package com.google.android.gms.internal;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.nearby.messages.internal.zzq;

public final class zzcpq extends zzq implements zzcpn<zzbaz<Status>> {
    private final zzbdw<zzbaz<Status>> zzbzE;
    private boolean zzbzG = false;

    public zzcpq(zzbdw<zzbaz<Status>> zzbdw) {
        this.zzbzE = zzbdw;
    }

    public final synchronized void zzG(Status status) throws RemoteException {
        if (this.zzbzG) {
            String valueOf = String.valueOf(status);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 28);
            stringBuilder.append("Received multiple statuses: ");
            stringBuilder.append(valueOf);
            Log.wtf("NearbyMessagesCallbackWrapper", stringBuilder.toString(), new Exception());
            return;
        }
        this.zzbzE.zza(new zzcpr(this, status));
        this.zzbzG = true;
    }

    public final zzbdw<zzbaz<Status>> zzzX() {
        return this.zzbzE;
    }
}
