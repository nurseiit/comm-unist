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

public final class zzcki extends zza {
    public static final Creator<zzcki> CREATOR = new zzckj();
    @Nullable
    private final zzcni zzbwE;
    @Nullable
    private final zzcmp zzbwF;
    private final String zzbwG;
    @Nullable
    private final byte[] zzbwH;
    @Nullable
    private final zzcnf zzbwI;

    public zzcki(@Nullable IBinder iBinder, @Nullable IBinder iBinder2, String str, @Nullable byte[] bArr, @Nullable IBinder iBinder3) {
        zzcni zzcni;
        zzcmp zzcmp;
        IInterface queryLocalInterface;
        zzcnf zzcnf = null;
        if (iBinder == null) {
            zzcni = null;
        } else {
            IInterface queryLocalInterface2 = iBinder.queryLocalInterface("com.google.android.gms.nearby.internal.connection.IResultListener");
            zzcni = queryLocalInterface2 instanceof zzcni ? (zzcni) queryLocalInterface2 : new zzcnk(iBinder);
        }
        if (iBinder2 == null) {
            zzcmp = null;
        } else {
            queryLocalInterface = iBinder2.queryLocalInterface("com.google.android.gms.nearby.internal.connection.IConnectionEventListener");
            zzcmp = queryLocalInterface instanceof zzcmp ? (zzcmp) queryLocalInterface : new zzcmr(iBinder2);
        }
        if (iBinder3 != null) {
            queryLocalInterface = iBinder3.queryLocalInterface("com.google.android.gms.nearby.internal.connection.IPayloadListener");
            zzcnf = queryLocalInterface instanceof zzcnf ? (zzcnf) queryLocalInterface : new zzcnh(iBinder3);
        }
        this(zzcni, zzcmp, str, bArr, zzcnf);
    }

    private zzcki(@Nullable zzcni zzcni, @Nullable zzcmp zzcmp, String str, @Nullable byte[] bArr, @Nullable zzcnf zzcnf) {
        this.zzbwE = zzcni;
        this.zzbwF = zzcmp;
        this.zzbwG = str;
        this.zzbwH = bArr;
        this.zzbwI = zzcnf;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzcki) {
            zzcki zzcki = (zzcki) obj;
            return zzbe.equal(this.zzbwE, zzcki.zzbwE) && zzbe.equal(this.zzbwF, zzcki.zzbwF) && zzbe.equal(this.zzbwG, zzcki.zzbwG) && zzbe.equal(this.zzbwH, zzcki.zzbwH) && zzbe.equal(this.zzbwI, zzcki.zzbwI);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbwE, this.zzbwF, this.zzbwG, this.zzbwH, this.zzbwI});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        IBinder iBinder = null;
        zzd.zza(parcel, 1, this.zzbwE == null ? null : this.zzbwE.asBinder(), false);
        zzd.zza(parcel, 2, this.zzbwF == null ? null : this.zzbwF.asBinder(), false);
        zzd.zza(parcel, 3, this.zzbwG, false);
        zzd.zza(parcel, 4, this.zzbwH, false);
        if (this.zzbwI != null) {
            iBinder = this.zzbwI.asBinder();
        }
        zzd.zza(parcel, 5, iBinder, false);
        zzd.zzI(parcel, i);
    }
}
