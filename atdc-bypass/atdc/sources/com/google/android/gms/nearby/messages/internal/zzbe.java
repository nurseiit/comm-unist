package com.google.android.gms.nearby.messages.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzbe extends zza {
    public static final Creator<zzbe> CREATOR = new zzbf();
    private PendingIntent zzaLr;
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
    private zzm zzbzv;
    @Deprecated
    private int zzbzx;

    @VisibleForTesting
    public zzbe(int i, IBinder iBinder, IBinder iBinder2, PendingIntent pendingIntent, int i2, String str, String str2, boolean z, ClientAppContext clientAppContext) {
        zzm zzm;
        this.zzaku = i;
        zzp zzp = null;
        if (iBinder == null) {
            zzm = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.nearby.messages.internal.IMessageListener");
            zzm = queryLocalInterface instanceof zzm ? (zzm) queryLocalInterface : new zzo(iBinder);
        }
        this.zzbzv = zzm;
        if (iBinder2 != null) {
            IInterface queryLocalInterface2 = iBinder2.queryLocalInterface("com.google.android.gms.nearby.messages.internal.INearbyMessagesCallback");
            zzp = queryLocalInterface2 instanceof zzp ? (zzp) queryLocalInterface2 : new zzr(iBinder2);
        }
        this.zzbza = zzp;
        this.zzaLr = pendingIntent;
        this.zzbzx = i2;
        this.zzbye = str;
        this.zzbyW = str2;
        this.zzbyf = z;
        this.zzbzb = ClientAppContext.zza(clientAppContext, str2, str, z);
    }

    @VisibleForTesting
    public zzbe(IBinder iBinder, IBinder iBinder2, PendingIntent pendingIntent) {
        this(1, iBinder, iBinder2, pendingIntent, 0, null, null, false, null);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzaku);
        zzd.zza(parcel, 2, this.zzbzv == null ? null : this.zzbzv.asBinder(), false);
        zzd.zza(parcel, 3, this.zzbza.asBinder(), false);
        zzd.zza(parcel, 4, this.zzaLr, i, false);
        zzd.zzc(parcel, 5, this.zzbzx);
        zzd.zza(parcel, 6, this.zzbye, false);
        zzd.zza(parcel, 7, this.zzbyW, false);
        zzd.zza(parcel, 8, this.zzbyf);
        zzd.zza(parcel, 9, this.zzbzb, i, false);
        zzd.zzI(parcel, zze);
    }
}
