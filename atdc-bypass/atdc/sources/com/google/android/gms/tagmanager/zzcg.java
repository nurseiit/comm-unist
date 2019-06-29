package com.google.android.gms.tagmanager;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzed;
import java.util.Map;

public final class zzcg extends zzed implements zzce {
    zzcg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.tagmanager.ICustomEvaluatorProxy");
    }

    public final void zze(String str, Map map) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeMap(map);
        zzb(1, zzZ);
    }

    public final String zzf(String str, Map map) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeMap(map);
        Parcel zza = zza(2, zzZ);
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }
}
