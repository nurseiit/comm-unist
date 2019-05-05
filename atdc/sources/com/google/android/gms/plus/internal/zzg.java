package com.google.android.gms.plus.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.zzao;
import com.google.android.gms.common.internal.zzap;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzef;
import java.util.List;

public final class zzg extends zzed implements zzf {
    zzg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.plus.internal.IPlusService");
    }

    public final String getAccountName() throws RemoteException {
        Parcel zza = zza(5, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final void zzAe() throws RemoteException {
        zzb(6, zzZ());
    }

    public final zzao zza(zzb zzb, int i, int i2, int i3, String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzb);
        zzZ.writeInt(i);
        zzZ.writeInt(i2);
        zzZ.writeInt(-1);
        zzZ.writeString(str);
        Parcel zza = zza(16, zzZ);
        zzao zzH = zzap.zzH(zza.readStrongBinder());
        zza.recycle();
        return zzH;
    }

    public final void zza(zzb zzb) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzb);
        zzb(19, zzZ);
    }

    public final void zza(zzb zzb, List<String> list) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzb);
        zzZ.writeStringList(list);
        zzb(34, zzZ);
    }
}
