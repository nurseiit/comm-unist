package com.google.android.gms.nearby.messages.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.nearby.messages.Strategy;

public final class zzax extends zza {
    public static final Creator<zzax> CREATOR = new zzay();
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
    private Strategy zzbzq;
    @Deprecated
    private boolean zzbzr;
    private zzu zzbzs;

    zzax(int i, zzaf zzaf, Strategy strategy, IBinder iBinder, String str, String str2, boolean z, IBinder iBinder2, boolean z2, ClientAppContext clientAppContext) {
        zzp zzp;
        this.zzaku = i;
        this.zzbzp = zzaf;
        this.zzbzq = strategy;
        zzu zzu = null;
        if (iBinder == null) {
            zzp = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.nearby.messages.internal.INearbyMessagesCallback");
            zzp = queryLocalInterface instanceof zzp ? (zzp) queryLocalInterface : new zzr(iBinder);
        }
        this.zzbza = zzp;
        this.zzbye = str;
        this.zzbyW = str2;
        this.zzbzr = z;
        if (!(iBinder2 == null || iBinder2 == null)) {
            IInterface queryLocalInterface2 = iBinder2.queryLocalInterface("com.google.android.gms.nearby.messages.internal.IPublishCallback");
            zzu = queryLocalInterface2 instanceof zzu ? (zzu) queryLocalInterface2 : new zzw(iBinder2);
        }
        this.zzbzs = zzu;
        this.zzbyf = z2;
        this.zzbzb = ClientAppContext.zza(clientAppContext, str2, str, z2);
    }

    public zzax(zzaf zzaf, Strategy strategy, IBinder iBinder, IBinder iBinder2) {
        this(2, zzaf, strategy, iBinder, null, null, false, iBinder2, false, null);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzaku);
        zzd.zza(parcel, 2, this.zzbzp, i, false);
        zzd.zza(parcel, 3, this.zzbzq, i, false);
        zzd.zza(parcel, 4, this.zzbza.asBinder(), false);
        zzd.zza(parcel, 5, this.zzbye, false);
        zzd.zza(parcel, 6, this.zzbyW, false);
        zzd.zza(parcel, 7, this.zzbzr);
        zzd.zza(parcel, 8, this.zzbzs == null ? null : this.zzbzs.asBinder(), false);
        zzd.zza(parcel, 9, this.zzbyf);
        zzd.zza(parcel, 10, this.zzbzb, i, false);
        zzd.zzI(parcel, zze);
    }
}
