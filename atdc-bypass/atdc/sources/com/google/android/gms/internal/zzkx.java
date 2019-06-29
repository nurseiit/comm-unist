package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class zzkx extends zzed implements zzkv {
    zzkx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    public final void onVideoEnd() throws RemoteException {
        zzb(4, zzZ());
    }

    public final void onVideoMute(boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, z);
        zzb(5, zzZ);
    }

    public final void onVideoPause() throws RemoteException {
        zzb(3, zzZ());
    }

    public final void onVideoPlay() throws RemoteException {
        zzb(2, zzZ());
    }

    public final void onVideoStart() throws RemoteException {
        zzb(1, zzZ());
    }
}
