package com.google.android.gms.cast.framework.media;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.IObjectWrapper.zza;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzef;

public final class zzc extends zzed implements zzb {
    zzc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.media.IImagePicker");
    }

    public final WebImage onPickImage(MediaMetadata mediaMetadata, int i) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) mediaMetadata);
        zzZ.writeInt(i);
        Parcel zza = zza(1, zzZ);
        WebImage webImage = (WebImage) zzef.zza(zza, WebImage.CREATOR);
        zza.recycle();
        return webImage;
    }

    public final WebImage zza(MediaMetadata mediaMetadata, ImageHints imageHints) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) mediaMetadata);
        zzef.zza(zzZ, (Parcelable) imageHints);
        Parcel zza = zza(4, zzZ);
        WebImage webImage = (WebImage) zzef.zza(zza, WebImage.CREATOR);
        zza.recycle();
        return webImage;
    }

    public final IObjectWrapper zznT() throws RemoteException {
        Parcel zza = zza(2, zzZ());
        IObjectWrapper zzM = zza.zzM(zza.readStrongBinder());
        zza.recycle();
        return zzM;
    }

    public final int zznm() throws RemoteException {
        Parcel zza = zza(3, zzZ());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }
}
