package com.google.android.gms.cast.framework.media;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.internal.zzayo;

public class CastMediaOptions extends zza {
    public static final Creator<CastMediaOptions> CREATOR = new zza();
    private static final zzayo zzarK = new zzayo("CastMediaOptions");
    private final String zzatD;
    private final String zzatE;
    private final zzb zzatF;
    private final NotificationOptions zzatG;

    public static final class Builder {
        private String zzatD = MediaIntentReceiver.class.getName();
        private String zzatE;
        private NotificationOptions zzatG = new com.google.android.gms.cast.framework.media.NotificationOptions.Builder().build();
        private ImagePicker zzatH;

        public final CastMediaOptions build() {
            return new CastMediaOptions(this.zzatD, this.zzatE, this.zzatH == null ? null : this.zzatH.zznU().asBinder(), this.zzatG);
        }

        public final Builder setExpandedControllerActivityClassName(String str) {
            this.zzatE = str;
            return this;
        }

        public final Builder setImagePicker(ImagePicker imagePicker) {
            this.zzatH = imagePicker;
            return this;
        }

        public final Builder setMediaIntentReceiverClassName(String str) {
            this.zzatD = str;
            return this;
        }

        public final Builder setNotificationOptions(NotificationOptions notificationOptions) {
            this.zzatG = notificationOptions;
            return this;
        }
    }

    CastMediaOptions(String str, String str2, IBinder iBinder, NotificationOptions notificationOptions) {
        zzb zzb;
        this.zzatD = str;
        this.zzatE = str2;
        if (iBinder == null) {
            zzb = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.media.IImagePicker");
            zzb = queryLocalInterface instanceof zzb ? (zzb) queryLocalInterface : new zzc(iBinder);
        }
        this.zzatF = zzb;
        this.zzatG = notificationOptions;
    }

    public String getExpandedControllerActivityClassName() {
        return this.zzatE;
    }

    public ImagePicker getImagePicker() {
        if (this.zzatF != null) {
            try {
                return (ImagePicker) zzn.zzE(this.zzatF.zznT());
            } catch (RemoteException e) {
                zzarK.zzb(e, "Unable to call %s on %s.", "getWrappedClientObject", zzb.class.getSimpleName());
            }
        }
        return null;
    }

    public String getMediaIntentReceiverClassName() {
        return this.zzatD;
    }

    public NotificationOptions getNotificationOptions() {
        return this.zzatG;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, getMediaIntentReceiverClassName(), false);
        zzd.zza(parcel, 3, getExpandedControllerActivityClassName(), false);
        zzd.zza(parcel, 4, this.zzatF == null ? null : this.zzatF.asBinder(), false);
        zzd.zza(parcel, 5, getNotificationOptions(), i, false);
        zzd.zzI(parcel, zze);
    }
}
