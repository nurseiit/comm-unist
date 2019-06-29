package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public final class zzcqd extends zzed implements zzcqc {
    zzcqd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.panorama.internal.IPanoramaService");
    }

    public final void zza(zzcqa zzcqa, Uri uri, Bundle bundle, boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzcqa);
        zzef.zza(zzZ, (Parcelable) uri);
        zzef.zza(zzZ, (Parcelable) bundle);
        zzef.zza(zzZ, z);
        zzc(1, zzZ);
    }
}
