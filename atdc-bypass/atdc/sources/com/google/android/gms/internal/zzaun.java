package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.zzd;
import com.google.android.gms.cast.framework.media.zzd.zza;
import com.google.android.gms.cast.framework.zzac;
import com.google.android.gms.cast.framework.zzi;
import com.google.android.gms.cast.framework.zzk;
import com.google.android.gms.cast.framework.zzm;
import com.google.android.gms.cast.framework.zzs;
import com.google.android.gms.cast.framework.zzu;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;

public final class zzaun extends zzed implements zzaum {
    zzaun(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
    }

    public final zzd zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3, CastMediaOptions castMediaOptions) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (IInterface) iObjectWrapper2);
        zzef.zza(zzZ, (IInterface) iObjectWrapper3);
        zzef.zza(zzZ, (Parcelable) castMediaOptions);
        Parcel zza = zza(4, zzZ);
        zzd zzE = zza.zzE(zza.readStrongBinder());
        zza.recycle();
        return zzE;
    }

    public final zzk zza(IObjectWrapper iObjectWrapper, CastOptions castOptions, zzauo zzauo, Map map) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (Parcelable) castOptions);
        zzef.zza(zzZ, (IInterface) zzauo);
        zzZ.writeMap(map);
        Parcel zza = zza(1, zzZ);
        zzk zzA = zzk.zza.zzA(zza.readStrongBinder());
        zza.recycle();
        return zzA;
    }

    public final zzm zza(CastOptions castOptions, IObjectWrapper iObjectWrapper, zzi zzi) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) castOptions);
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (IInterface) zzi);
        Parcel zza = zza(3, zzZ);
        zzm zzB = zzm.zza.zzB(zza.readStrongBinder());
        zza.recycle();
        return zzB;
    }

    public final zzs zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (IInterface) iObjectWrapper2);
        zzef.zza(zzZ, (IInterface) iObjectWrapper3);
        Parcel zza = zza(5, zzZ);
        zzs zzC = zzs.zza.zzC(zza.readStrongBinder());
        zza.recycle();
        return zzC;
    }

    public final zzu zza(String str, String str2, zzac zzac) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzef.zza(zzZ, (IInterface) zzac);
        Parcel zza = zza(2, zzZ);
        zzu zzD = zzu.zza.zzD(zza.readStrongBinder());
        zza.recycle();
        return zzD;
    }

    public final zzavj zza(IObjectWrapper iObjectWrapper, zzavl zzavl, int i, int i2, boolean z, long j, int i3, int i4, int i5) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (IInterface) zzavl);
        zzZ.writeInt(i);
        zzZ.writeInt(i2);
        zzef.zza(zzZ, z);
        zzZ.writeLong(j);
        zzZ.writeInt(i3);
        zzZ.writeInt(i4);
        zzZ.writeInt(i5);
        Parcel zza = zza(6, zzZ);
        zzavj zzF = zzavj.zza.zzF(zza.readStrongBinder());
        zza.recycle();
        return zzF;
    }
}
