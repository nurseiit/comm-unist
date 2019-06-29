package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.RemoteException;
import com.google.android.gms.internal.zzbaz;
import com.google.android.gms.internal.zzbdw;
import com.google.android.gms.wearable.ChannelApi.ChannelListener;

final class zzar implements zzc<ChannelListener> {
    private /* synthetic */ String zzakq;
    private /* synthetic */ IntentFilter[] zzbRX;

    zzar(String str, IntentFilter[] intentFilterArr) {
        this.zzakq = str;
        this.zzbRX = intentFilterArr;
    }

    public final /* synthetic */ void zza(zzfw zzfw, zzbaz zzbaz, Object obj, zzbdw zzbdw) throws RemoteException {
        zzfw.zza(zzbaz, (ChannelListener) obj, zzbdw, this.zzakq, this.zzbRX);
    }
}
