package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.nearby.connection.DiscoveryOptions;
import java.util.Arrays;

public final class zzcoz extends zza {
    public static final Creator<zzcoz> CREATOR = new zzcpa();
    private final long durationMillis;
    @Nullable
    private final zzcni zzbwE;
    private final String zzbwr;
    @Nullable
    private final zzcmy zzbxO;
    private final DiscoveryOptions zzbxP;
    @Nullable
    private final zzcna zzbxQ;

    public zzcoz(@Nullable IBinder iBinder, @Nullable IBinder iBinder2, String str, long j, DiscoveryOptions discoveryOptions, @Nullable IBinder iBinder3) {
        zzcni zzcni;
        zzcmy zzcmy;
        IInterface queryLocalInterface;
        IBinder iBinder4 = iBinder;
        IBinder iBinder5 = iBinder2;
        IBinder iBinder6 = iBinder3;
        zzcna zzcna = null;
        if (iBinder4 == null) {
            zzcni = null;
        } else {
            IInterface queryLocalInterface2 = iBinder4.queryLocalInterface("com.google.android.gms.nearby.internal.connection.IResultListener");
            zzcni = queryLocalInterface2 instanceof zzcni ? (zzcni) queryLocalInterface2 : new zzcnk(iBinder4);
        }
        if (iBinder5 == null) {
            zzcmy = null;
        } else {
            queryLocalInterface = iBinder5.queryLocalInterface("com.google.android.gms.nearby.internal.connection.IDiscoveryCallback");
            zzcmy = queryLocalInterface instanceof zzcmy ? (zzcmy) queryLocalInterface : new zzcmz(iBinder5);
        }
        if (iBinder6 != null) {
            queryLocalInterface = iBinder6.queryLocalInterface("com.google.android.gms.nearby.internal.connection.IDiscoveryListener");
            zzcna = queryLocalInterface instanceof zzcna ? (zzcna) queryLocalInterface : new zzcnc(iBinder6);
        }
        this(zzcni, zzcmy, str, j, discoveryOptions, zzcna);
    }

    private zzcoz(@Nullable zzcni zzcni, @Nullable zzcmy zzcmy, String str, long j, DiscoveryOptions discoveryOptions, @Nullable zzcna zzcna) {
        this.zzbwE = zzcni;
        this.zzbxO = zzcmy;
        this.zzbwr = str;
        this.durationMillis = j;
        this.zzbxP = discoveryOptions;
        this.zzbxQ = zzcna;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzcoz) {
            zzcoz zzcoz = (zzcoz) obj;
            return zzbe.equal(this.zzbwE, zzcoz.zzbwE) && zzbe.equal(this.zzbxO, zzcoz.zzbxO) && zzbe.equal(this.zzbwr, zzcoz.zzbwr) && zzbe.equal(Long.valueOf(this.durationMillis), Long.valueOf(zzcoz.durationMillis)) && zzbe.equal(this.zzbxP, zzcoz.zzbxP) && zzbe.equal(this.zzbxQ, zzcoz.zzbxQ);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbwE, this.zzbxO, this.zzbwr, Long.valueOf(this.durationMillis), this.zzbxP, this.zzbxQ});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        IBinder iBinder = null;
        zzd.zza(parcel, 1, this.zzbwE == null ? null : this.zzbwE.asBinder(), false);
        zzd.zza(parcel, 2, this.zzbxO == null ? null : this.zzbxO.asBinder(), false);
        zzd.zza(parcel, 3, this.zzbwr, false);
        zzd.zza(parcel, 4, this.durationMillis);
        zzd.zza(parcel, 5, this.zzbxP, i, false);
        if (this.zzbxQ != null) {
            iBinder = this.zzbxQ.asBinder();
        }
        zzd.zza(parcel, 6, iBinder, false);
        zzd.zzI(parcel, zze);
    }
}
