package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyRequest;

public final class zzasc extends zzed implements zzasb {
    zzasc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.internal.IAuthService");
    }

    public final void zza(zzarz zzarz, ProxyRequest proxyRequest) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzarz);
        zzef.zza(zzZ, (Parcelable) proxyRequest);
        zzb(1, zzZ);
    }
}
