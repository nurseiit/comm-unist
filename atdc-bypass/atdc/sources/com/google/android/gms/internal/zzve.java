package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.IObjectWrapper.zza;
import java.util.ArrayList;
import java.util.List;

public final class zzve extends zzed implements zzvc {
    zzve(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
    }

    public final String getBody() throws RemoteException {
        Parcel zza = zza(4, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final String getCallToAction() throws RemoteException {
        Parcel zza = zza(6, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final Bundle getExtras() throws RemoteException {
        Parcel zza = zza(15, zzZ());
        Bundle bundle = (Bundle) zzef.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    public final String getHeadline() throws RemoteException {
        Parcel zza = zza(2, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final List getImages() throws RemoteException {
        Parcel zza = zza(3, zzZ());
        ArrayList zzb = zzef.zzb(zza);
        zza.recycle();
        return zzb;
    }

    public final boolean getOverrideClickHandling() throws RemoteException {
        Parcel zza = zza(14, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final boolean getOverrideImpressionRecording() throws RemoteException {
        Parcel zza = zza(13, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final String getPrice() throws RemoteException {
        Parcel zza = zza(9, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final double getStarRating() throws RemoteException {
        Parcel zza = zza(7, zzZ());
        double readDouble = zza.readDouble();
        zza.recycle();
        return readDouble;
    }

    public final String getStore() throws RemoteException {
        Parcel zza = zza(8, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final zzks getVideoController() throws RemoteException {
        Parcel zza = zza(17, zzZ());
        zzks zzg = zzkt.zzg(zza.readStrongBinder());
        zza.recycle();
        return zzg;
    }

    public final void recordImpression() throws RemoteException {
        zzb(10, zzZ());
    }

    public final zzos zzeh() throws RemoteException {
        Parcel zza = zza(5, zzZ());
        zzos zzi = zzot.zzi(zza.readStrongBinder());
        zza.recycle();
        return zzi;
    }

    public final IObjectWrapper zzfw() throws RemoteException {
        Parcel zza = zza(18, zzZ());
        IObjectWrapper zzM = zza.zzM(zza.readStrongBinder());
        zza.recycle();
        return zzM;
    }

    public final void zzl(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzb(11, zzZ);
    }

    public final void zzm(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzb(12, zzZ);
    }

    public final void zzn(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzb(16, zzZ);
    }
}
