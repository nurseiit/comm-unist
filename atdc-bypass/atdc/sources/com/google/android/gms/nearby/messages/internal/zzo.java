package com.google.android.gms.nearby.messages.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzef;
import java.util.List;

public final class zzo extends zzed implements zzm {
    zzo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.nearby.messages.internal.IMessageListener");
    }

    public final void zzH(List<Update> list) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeTypedList(list);
        zzc(4, zzZ);
    }

    public final void zza(zzaf zzaf) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzaf);
        zzc(1, zzZ);
    }

    public final void zzb(zzaf zzaf) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzaf);
        zzc(2, zzZ);
    }
}
