package com.google.android.gms.cast.framework;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzef;

public final class zzn extends zzed implements zzm {
    zzn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.ICastSession");
    }

    public final void onConnected(Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) bundle);
        zzb(1, zzZ);
    }

    public final void onConnectionFailed(ConnectionResult connectionResult) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) connectionResult);
        zzb(3, zzZ);
    }

    public final void onConnectionSuspended(int i) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeInt(i);
        zzb(2, zzZ);
    }

    public final void zzZ(int i) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeInt(i);
        zzb(5, zzZ);
    }

    public final void zza(ApplicationMetadata applicationMetadata, String str, String str2, boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) applicationMetadata);
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzef.zza(zzZ, z);
        zzb(4, zzZ);
    }

    public final void zzb(boolean z, int i) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, z);
        zzZ.writeInt(i);
        zzb(6, zzZ);
    }
}
