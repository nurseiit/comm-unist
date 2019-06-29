package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.RemoteException;
import com.google.android.gms.internal.zzbaz;
import com.google.android.gms.internal.zzbdw;
import com.google.android.gms.wearable.DataApi.DataListener;

final class zzbq implements zzc<DataListener> {
    private /* synthetic */ IntentFilter[] zzbRX;

    zzbq(IntentFilter[] intentFilterArr) {
        this.zzbRX = intentFilterArr;
    }

    public final /* synthetic */ void zza(zzfw zzfw, zzbaz zzbaz, Object obj, zzbdw zzbdw) throws RemoteException {
        zzfw.zza(zzbaz, (DataListener) obj, zzbdw, this.zzbRX);
    }
}
