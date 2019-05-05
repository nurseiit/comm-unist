package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.nearby.connection.AdvertisingOptions;
import java.util.Arrays;

public final class zzcox extends zza {
    public static final Creator<zzcox> CREATOR = new zzcoy();
    private final long durationMillis;
    private final String name;
    private final String zzbwr;
    @Nullable
    private final zzcms zzbxI;
    @Nullable
    private final zzcnl zzbxL;
    @Nullable
    private final zzcmm zzbxM;
    private final AdvertisingOptions zzbxN;

    public zzcox(@Nullable IBinder iBinder, @Nullable IBinder iBinder2, String str, String str2, long j, AdvertisingOptions advertisingOptions, @Nullable IBinder iBinder3) {
        zzcnl zzcnl;
        zzcmm zzcmm;
        IInterface queryLocalInterface;
        IBinder iBinder4 = iBinder;
        IBinder iBinder5 = iBinder2;
        IBinder iBinder6 = iBinder3;
        zzcms zzcms = null;
        if (iBinder4 == null) {
            zzcnl = null;
        } else {
            IInterface queryLocalInterface2 = iBinder4.queryLocalInterface("com.google.android.gms.nearby.internal.connection.IStartAdvertisingResultListener");
            zzcnl = queryLocalInterface2 instanceof zzcnl ? (zzcnl) queryLocalInterface2 : new zzcnn(iBinder4);
        }
        if (iBinder5 == null) {
            zzcmm = null;
        } else {
            queryLocalInterface = iBinder5.queryLocalInterface("com.google.android.gms.nearby.internal.connection.IAdvertisingCallback");
            zzcmm = queryLocalInterface instanceof zzcmm ? (zzcmm) queryLocalInterface : new zzcmo(iBinder5);
        }
        if (iBinder6 != null) {
            queryLocalInterface = iBinder6.queryLocalInterface("com.google.android.gms.nearby.internal.connection.IConnectionLifecycleListener");
            zzcms = queryLocalInterface instanceof zzcms ? (zzcms) queryLocalInterface : new zzcmu(iBinder6);
        }
        this(zzcnl, zzcmm, str, str2, j, advertisingOptions, zzcms);
    }

    private zzcox(@Nullable zzcnl zzcnl, @Nullable zzcmm zzcmm, String str, String str2, long j, AdvertisingOptions advertisingOptions, @Nullable zzcms zzcms) {
        this.zzbxL = zzcnl;
        this.zzbxM = zzcmm;
        this.name = str;
        this.zzbwr = str2;
        this.durationMillis = j;
        this.zzbxN = advertisingOptions;
        this.zzbxI = zzcms;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzcox) {
            zzcox zzcox = (zzcox) obj;
            return zzbe.equal(this.zzbxL, zzcox.zzbxL) && zzbe.equal(this.zzbxM, zzcox.zzbxM) && zzbe.equal(this.name, zzcox.name) && zzbe.equal(this.zzbwr, zzcox.zzbwr) && zzbe.equal(Long.valueOf(this.durationMillis), Long.valueOf(zzcox.durationMillis)) && zzbe.equal(this.zzbxN, zzcox.zzbxN) && zzbe.equal(this.zzbxI, zzcox.zzbxI);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbxL, this.zzbxM, this.name, this.zzbwr, Long.valueOf(this.durationMillis), this.zzbxN, this.zzbxI});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        IBinder iBinder = null;
        zzd.zza(parcel, 1, this.zzbxL == null ? null : this.zzbxL.asBinder(), false);
        zzd.zza(parcel, 2, this.zzbxM == null ? null : this.zzbxM.asBinder(), false);
        zzd.zza(parcel, 3, this.name, false);
        zzd.zza(parcel, 4, this.zzbwr, false);
        zzd.zza(parcel, 5, this.durationMillis);
        zzd.zza(parcel, 6, this.zzbxN, i, false);
        if (this.zzbxI != null) {
            iBinder = this.zzbxI.asBinder();
        }
        zzd.zza(parcel, 7, iBinder, false);
        zzd.zzI(parcel, zze);
    }
}
