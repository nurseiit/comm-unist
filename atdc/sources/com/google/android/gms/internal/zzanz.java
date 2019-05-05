package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
import java.util.Map;

public final class zzanz extends zzed implements zzany {
    zzanz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.analytics.internal.IAnalyticsService");
    }

    public final void zza(Map map, long j, String str, List<zzane> list) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeMap(map);
        zzZ.writeLong(j);
        zzZ.writeString(str);
        zzZ.writeTypedList(list);
        zzb(1, zzZ);
    }

    public final void zzkk() throws RemoteException {
        zzb(2, zzZ());
    }
}
