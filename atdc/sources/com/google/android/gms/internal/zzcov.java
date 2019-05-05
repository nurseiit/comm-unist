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

public final class zzcov extends zza {
    public static final Creator<zzcov> CREATOR = new zzcow();
    @Nullable
    private final zzcni zzbwE;
    private final String[] zzbxJ;
    private final boolean zzbxK;
    @Nullable
    private final zzcoo zzbxr;

    public zzcov(@Nullable IBinder iBinder, String[] strArr, @Nullable zzcoo zzcoo, boolean z) {
        zzcni zzcni;
        if (iBinder == null) {
            zzcni = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.nearby.internal.connection.IResultListener");
            zzcni = queryLocalInterface instanceof zzcni ? (zzcni) queryLocalInterface : new zzcnk(iBinder);
        }
        this(zzcni, strArr, zzcoo, z);
    }

    private zzcov(@Nullable zzcni zzcni, String[] strArr, @Nullable zzcoo zzcoo, boolean z) {
        this.zzbwE = zzcni;
        this.zzbxJ = strArr;
        this.zzbxr = zzcoo;
        this.zzbxK = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzcov) {
            zzcov zzcov = (zzcov) obj;
            return zzbe.equal(this.zzbwE, zzcov.zzbwE) && Arrays.equals(this.zzbxJ, zzcov.zzbxJ) && zzbe.equal(this.zzbxr, zzcov.zzbxr) && zzbe.equal(Boolean.valueOf(this.zzbxK), Boolean.valueOf(zzcov.zzbxK));
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbwE, this.zzbxJ, this.zzbxr, Boolean.valueOf(this.zzbxK)});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzbwE == null ? null : this.zzbwE.asBinder(), false);
        zzd.zza(parcel, 2, this.zzbxJ, false);
        zzd.zza(parcel, 3, this.zzbxr, i, false);
        zzd.zza(parcel, 4, this.zzbxK);
        zzd.zzI(parcel, zze);
    }
}
