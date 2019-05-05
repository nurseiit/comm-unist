package com.google.android.gms.cast.framework;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.internal.zzef;

public interface zzm extends IInterface {

    public static abstract class zza extends zzee implements zzm {
        public static zzm zzB(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.ICastSession");
            return queryLocalInterface instanceof zzm ? (zzm) queryLocalInterface : new zzn(iBinder);
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (zza(i, parcel, parcel2, i2)) {
                return true;
            }
            switch (i) {
                case 1:
                    onConnected((Bundle) zzef.zza(parcel, Bundle.CREATOR));
                    break;
                case 2:
                    onConnectionSuspended(parcel.readInt());
                    break;
                case 3:
                    onConnectionFailed((ConnectionResult) zzef.zza(parcel, ConnectionResult.CREATOR));
                    break;
                case 4:
                    zza((ApplicationMetadata) zzef.zza(parcel, ApplicationMetadata.CREATOR), parcel.readString(), parcel.readString(), zzef.zza(parcel));
                    break;
                case 5:
                    zzZ(parcel.readInt());
                    break;
                case 6:
                    zzb(zzef.zza(parcel), parcel.readInt());
                    break;
                default:
                    return false;
            }
            parcel2.writeNoException();
            return true;
        }
    }

    void onConnected(Bundle bundle) throws RemoteException;

    void onConnectionFailed(ConnectionResult connectionResult) throws RemoteException;

    void onConnectionSuspended(int i) throws RemoteException;

    void zzZ(int i) throws RemoteException;

    void zza(ApplicationMetadata applicationMetadata, String str, String str2, boolean z) throws RemoteException;

    void zzb(boolean z, int i) throws RemoteException;
}
