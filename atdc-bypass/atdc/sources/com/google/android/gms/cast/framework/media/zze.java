package com.google.android.gms.cast.framework.media;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzef;

public final class zze extends zzed implements zzd {
    zze(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.media.IMediaNotificationService");
    }

    public final IBinder onBind(Intent intent) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) intent);
        Parcel zza = zza(3, zzZ);
        IBinder readStrongBinder = zza.readStrongBinder();
        zza.recycle();
        return readStrongBinder;
    }

    public final void onCreate() throws RemoteException {
        zzb(1, zzZ());
    }

    public final void onDestroy() throws RemoteException {
        zzb(4, zzZ());
    }

    public final int onStartCommand(Intent intent, int i, int i2) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) intent);
        zzZ.writeInt(i);
        zzZ.writeInt(i2);
        Parcel zza = zza(2, zzZ);
        i = zza.readInt();
        zza.recycle();
        return i;
    }
}
