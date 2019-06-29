package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public final class zzku extends zzed implements zzks {
    zzku(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoController");
    }

    public final float getAspectRatio() throws RemoteException {
        Parcel zza = zza(9, zzZ());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    public final int getPlaybackState() throws RemoteException {
        Parcel zza = zza(5, zzZ());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    public final boolean isCustomControlsEnabled() throws RemoteException {
        Parcel zza = zza(10, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final boolean isMuted() throws RemoteException {
        Parcel zza = zza(4, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final void mute(boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, z);
        zzb(3, zzZ);
    }

    public final void pause() throws RemoteException {
        zzb(2, zzZ());
    }

    public final void play() throws RemoteException {
        zzb(1, zzZ());
    }

    public final void zza(zzkv zzkv) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzkv);
        zzb(8, zzZ);
    }

    public final float zzdv() throws RemoteException {
        Parcel zza = zza(6, zzZ());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    public final float zzdw() throws RemoteException {
        Parcel zza = zza(7, zzZ());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }
}
