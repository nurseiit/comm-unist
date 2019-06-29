package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzbpx extends zza {
    public static final Creator<zzbpx> CREATOR = new zzbpy();
    private ParcelFileDescriptor zzaPm;
    private IBinder zzaPn;
    private String zzyi;

    zzbpx(ParcelFileDescriptor parcelFileDescriptor, IBinder iBinder, String str) {
        this.zzaPm = parcelFileDescriptor;
        this.zzaPn = iBinder;
        this.zzyi = str;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i |= 1;
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaPm, i, false);
        zzd.zza(parcel, 3, this.zzaPn, false);
        zzd.zza(parcel, 4, this.zzyi, false);
        zzd.zzI(parcel, zze);
    }
}
