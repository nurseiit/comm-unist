package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

public final class zzwz extends zzed implements zzwx {
    zzwz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    public final void onActivityResult(int i, int i2, Intent intent) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeInt(i);
        zzZ.writeInt(i2);
        zzef.zza(zzZ, (Parcelable) intent);
        zzb(12, zzZ);
    }

    public final void onBackPressed() throws RemoteException {
        zzb(10, zzZ());
    }

    public final void onCreate(Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) bundle);
        zzb(1, zzZ);
    }

    public final void onDestroy() throws RemoteException {
        zzb(8, zzZ());
    }

    public final void onPause() throws RemoteException {
        zzb(5, zzZ());
    }

    public final void onRestart() throws RemoteException {
        zzb(2, zzZ());
    }

    public final void onResume() throws RemoteException {
        zzb(4, zzZ());
    }

    public final void onSaveInstanceState(Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) bundle);
        zzZ = zza(6, zzZ);
        if (zzZ.readInt() != 0) {
            bundle.readFromParcel(zzZ);
        }
        zzZ.recycle();
    }

    public final void onStart() throws RemoteException {
        zzb(3, zzZ());
    }

    public final void onStop() throws RemoteException {
        zzb(7, zzZ());
    }

    public final void zzaa() throws RemoteException {
        zzb(9, zzZ());
    }

    public final boolean zzfK() throws RemoteException {
        Parcel zza = zza(11, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final void zzo(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzb(13, zzZ);
    }
}
