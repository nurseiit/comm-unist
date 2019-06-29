package com.google.android.gms.cast.framework.media;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.internal.zzef;

public interface zzb extends IInterface {

    public static abstract class zza extends zzee implements zzb {
        public zza() {
            attachInterface(this, "com.google.android.gms.cast.framework.media.IImagePicker");
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (zza(i, parcel, parcel2, i2)) {
                return true;
            }
            Parcelable onPickImage;
            switch (i) {
                case 1:
                    onPickImage = onPickImage((MediaMetadata) zzef.zza(parcel, MediaMetadata.CREATOR), parcel.readInt());
                    break;
                case 2:
                    IInterface zznT = zznT();
                    parcel2.writeNoException();
                    zzef.zza(parcel2, zznT);
                    return true;
                case 3:
                    i = zznm();
                    parcel2.writeNoException();
                    parcel2.writeInt(i);
                    return true;
                case 4:
                    onPickImage = zza((MediaMetadata) zzef.zza(parcel, MediaMetadata.CREATOR), (ImageHints) zzef.zza(parcel, ImageHints.CREATOR));
                    break;
                default:
                    return false;
            }
            parcel2.writeNoException();
            zzef.zzb(parcel2, onPickImage);
            return true;
        }
    }

    WebImage onPickImage(MediaMetadata mediaMetadata, int i) throws RemoteException;

    WebImage zza(MediaMetadata mediaMetadata, ImageHints imageHints) throws RemoteException;

    IObjectWrapper zznT() throws RemoteException;

    int zznm() throws RemoteException;
}
