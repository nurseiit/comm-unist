package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;

public final class zzcot extends zza {
    public static final Creator<zzcot> CREATOR = new zzcou();
    @Nullable
    private final String name;
    @Nullable
    private final zzcni zzbwE;
    @Nullable
    private final zzcmp zzbwF;
    private final String zzbwG;
    @Nullable
    private final byte[] zzbwH;
    @Nullable
    private final zzcmv zzbxH;
    @Nullable
    private final zzcms zzbxI;

    public zzcot(@Nullable IBinder iBinder, @Nullable IBinder iBinder2, @Nullable IBinder iBinder3, @Nullable String str, String str2, @Nullable byte[] bArr, @Nullable IBinder iBinder4) {
        zzcni zzcni;
        zzcmp zzcmp;
        IInterface queryLocalInterface;
        zzcmv zzcmv;
        IBinder iBinder5 = iBinder;
        IBinder iBinder6 = iBinder2;
        IBinder iBinder7 = iBinder3;
        IBinder iBinder8 = iBinder4;
        zzcms zzcms = null;
        if (iBinder5 == null) {
            zzcni = null;
        } else {
            IInterface queryLocalInterface2 = iBinder5.queryLocalInterface("com.google.android.gms.nearby.internal.connection.IResultListener");
            zzcni = queryLocalInterface2 instanceof zzcni ? (zzcni) queryLocalInterface2 : new zzcnk(iBinder5);
        }
        if (iBinder6 == null) {
            zzcmp = null;
        } else {
            queryLocalInterface = iBinder6.queryLocalInterface("com.google.android.gms.nearby.internal.connection.IConnectionEventListener");
            zzcmp = queryLocalInterface instanceof zzcmp ? (zzcmp) queryLocalInterface : new zzcmr(iBinder6);
        }
        if (iBinder7 == null) {
            zzcmv = null;
        } else {
            queryLocalInterface = iBinder7.queryLocalInterface("com.google.android.gms.nearby.internal.connection.IConnectionResponseListener");
            zzcmv = queryLocalInterface instanceof zzcmv ? (zzcmv) queryLocalInterface : new zzcmx(iBinder7);
        }
        if (iBinder8 != null) {
            queryLocalInterface = iBinder8.queryLocalInterface("com.google.android.gms.nearby.internal.connection.IConnectionLifecycleListener");
            zzcms = queryLocalInterface instanceof zzcms ? (zzcms) queryLocalInterface : new zzcmu(iBinder8);
        }
        this(zzcni, zzcmp, zzcmv, str, str2, bArr, zzcms);
    }

    private zzcot(@Nullable zzcni zzcni, @Nullable zzcmp zzcmp, @Nullable zzcmv zzcmv, @Nullable String str, String str2, @Nullable byte[] bArr, @Nullable zzcms zzcms) {
        this.zzbwE = zzcni;
        this.zzbwF = zzcmp;
        this.zzbxH = zzcmv;
        this.name = str;
        this.zzbwG = str2;
        this.zzbwH = bArr;
        this.zzbxI = zzcms;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzcot) {
            zzcot zzcot = (zzcot) obj;
            return zzbe.equal(this.zzbwE, zzcot.zzbwE) && zzbe.equal(this.zzbwF, zzcot.zzbwF) && zzbe.equal(this.zzbxH, zzcot.zzbxH) && zzbe.equal(this.name, zzcot.name) && zzbe.equal(this.zzbwG, zzcot.zzbwG) && zzbe.equal(this.zzbwH, zzcot.zzbwH) && zzbe.equal(this.zzbxI, zzcot.zzbxI);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbwE, this.zzbwF, this.zzbxH, this.name, this.zzbwG, this.zzbwH, this.zzbxI});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        IBinder iBinder = null;
        zzd.zza(parcel, 1, this.zzbwE == null ? null : this.zzbwE.asBinder(), false);
        zzd.zza(parcel, 2, this.zzbwF == null ? null : this.zzbwF.asBinder(), false);
        zzd.zza(parcel, 3, this.zzbxH == null ? null : this.zzbxH.asBinder(), false);
        zzd.zza(parcel, 4, this.name, false);
        zzd.zza(parcel, 5, this.zzbwG, false);
        zzd.zza(parcel, 6, this.zzbwH, false);
        if (this.zzbxI != null) {
            iBinder = this.zzbxI.asBinder();
        }
        zzd.zza(parcel, 7, iBinder, false);
        zzd.zzI(parcel, i);
    }
}
