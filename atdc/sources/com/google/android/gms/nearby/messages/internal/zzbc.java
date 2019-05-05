package com.google.android.gms.nearby.messages.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzbc extends zza {
    public static final Creator<zzbc> CREATOR = new zzbd();
    private int zzaku;
    @Deprecated
    private String zzbyW;
    @Deprecated
    private String zzbye;
    @Deprecated
    private boolean zzbyf;
    private zzp zzbza;
    @Deprecated
    private ClientAppContext zzbzb;
    private zzaf zzbzp;

    zzbc(int i, zzaf zzaf, IBinder iBinder, String str, String str2, boolean z, ClientAppContext clientAppContext) {
        zzp zzp;
        this.zzaku = i;
        this.zzbzp = zzaf;
        if (iBinder == null) {
            zzp = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.nearby.messages.internal.INearbyMessagesCallback");
            zzp = queryLocalInterface instanceof zzp ? (zzp) queryLocalInterface : new zzr(iBinder);
        }
        this.zzbza = zzp;
        this.zzbye = str;
        this.zzbyW = str2;
        this.zzbyf = z;
        this.zzbzb = ClientAppContext.zza(clientAppContext, str2, str, z);
    }

    public zzbc(zzaf zzaf, IBinder iBinder, ClientAppContext clientAppContext) {
        this(1, zzaf, iBinder, null, null, false, clientAppContext);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzaku);
        zzd.zza(parcel, 2, this.zzbzp, i, false);
        zzd.zza(parcel, 3, this.zzbza.asBinder(), false);
        zzd.zza(parcel, 4, this.zzbye, false);
        zzd.zza(parcel, 5, this.zzbyW, false);
        zzd.zza(parcel, 6, this.zzbyf);
        zzd.zza(parcel, 7, this.zzbzb, i, false);
        zzd.zzI(parcel, zze);
    }
}
