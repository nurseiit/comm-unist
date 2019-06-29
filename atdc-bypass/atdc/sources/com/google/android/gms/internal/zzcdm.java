package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.location.LocationSettingsResult;

final class zzcdm extends zzcdc {
    private zzbaz<LocationSettingsResult> zzbiT;

    public zzcdm(zzbaz<LocationSettingsResult> zzbaz) {
        zzbo.zzb(zzbaz != null, (Object) "listener can't be null.");
        this.zzbiT = zzbaz;
    }

    public final void zza(LocationSettingsResult locationSettingsResult) throws RemoteException {
        this.zzbiT.setResult(locationSettingsResult);
        this.zzbiT = null;
    }
}
