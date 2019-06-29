package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.CredentialRequest;

public final class zzaru extends zzed implements zzart {
    zzaru(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
    }

    public final void zza(zzarr zzarr) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzarr);
        zzb(4, zzZ);
    }

    public final void zza(zzarr zzarr, CredentialRequest credentialRequest) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzarr);
        zzef.zza(zzZ, (Parcelable) credentialRequest);
        zzb(1, zzZ);
    }

    public final void zza(zzarr zzarr, zzarp zzarp) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzarr);
        zzef.zza(zzZ, (Parcelable) zzarp);
        zzb(3, zzZ);
    }

    public final void zza(zzarr zzarr, zzarv zzarv) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzarr);
        zzef.zza(zzZ, (Parcelable) zzarv);
        zzb(2, zzZ);
    }
}
