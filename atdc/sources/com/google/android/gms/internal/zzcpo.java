package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.nearby.messages.MessageListener;
import com.google.android.gms.nearby.messages.internal.Update;
import com.google.android.gms.nearby.messages.internal.zzaf;
import com.google.android.gms.nearby.messages.internal.zzn;
import java.util.List;

public final class zzcpo extends zzn implements zzcpn<MessageListener> {
    private final zzbdw<MessageListener> zzbzE;

    zzcpo(zzbdw<MessageListener> zzbdw) {
        this.zzbzE = zzbdw;
    }

    public final void zzH(List<Update> list) throws RemoteException {
        this.zzbzE.zza(new zzcpp(this, list));
    }

    public final void zza(zzaf zzaf) {
    }

    public final void zzb(zzaf zzaf) {
    }

    public final zzbdw<MessageListener> zzzX() {
        return this.zzbzE;
    }
}
