package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.IObjectWrapper.zza;
import java.util.ArrayList;
import java.util.List;

public final class zzpl extends zzed implements zzpj {
    zzpl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    public final void destroy() throws RemoteException {
        zzb(8, zzZ());
    }

    public final List<String> getAvailableAssetNames() throws RemoteException {
        Parcel zza = zza(3, zzZ());
        ArrayList createStringArrayList = zza.createStringArrayList();
        zza.recycle();
        return createStringArrayList;
    }

    public final String getCustomTemplateId() throws RemoteException {
        Parcel zza = zza(4, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final zzks getVideoController() throws RemoteException {
        Parcel zza = zza(7, zzZ());
        zzks zzg = zzkt.zzg(zza.readStrongBinder());
        zza.recycle();
        return zzg;
    }

    public final void performClick(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzb(5, zzZ);
    }

    public final void recordImpression() throws RemoteException {
        zzb(6, zzZ());
    }

    public final String zzP(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        Parcel zza = zza(1, zzZ);
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final zzos zzQ(String str) throws RemoteException {
        zzos zzos;
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        Parcel zza = zza(2, zzZ);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzos = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            zzos = queryLocalInterface instanceof zzos ? (zzos) queryLocalInterface : new zzou(readStrongBinder);
        }
        zza.recycle();
        return zzos;
    }

    public final IObjectWrapper zzei() throws RemoteException {
        Parcel zza = zza(11, zzZ());
        IObjectWrapper zzM = zza.zzM(zza.readStrongBinder());
        zza.recycle();
        return zzM;
    }

    public final IObjectWrapper zzen() throws RemoteException {
        Parcel zza = zza(9, zzZ());
        IObjectWrapper zzM = zza.zzM(zza.readStrongBinder());
        zza.recycle();
        return zzM;
    }

    public final boolean zzj(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        Parcel zza = zza(10, zzZ);
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }
}
