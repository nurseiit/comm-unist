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

public final class zzcor extends zza {
    public static final Creator<zzcor> CREATOR = new zzcos();
    @Nullable
    private final zzcni zzbwE;
    private final String zzbwG;

    public zzcor(@Nullable IBinder iBinder, String str) {
        zzcni zzcni;
        if (iBinder == null) {
            zzcni = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.nearby.internal.connection.IResultListener");
            zzcni = queryLocalInterface instanceof zzcni ? (zzcni) queryLocalInterface : new zzcnk(iBinder);
        }
        this(zzcni, str);
    }

    private zzcor(@Nullable zzcni zzcni, String str) {
        this.zzbwE = zzcni;
        this.zzbwG = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzcor) {
            zzcor zzcor = (zzcor) obj;
            return zzbe.equal(this.zzbwE, zzcor.zzbwE) && zzbe.equal(this.zzbwG, zzcor.zzbwG);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbwE, this.zzbwG});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzbwE == null ? null : this.zzbwE.asBinder(), false);
        zzd.zza(parcel, 2, this.zzbwG, false);
        zzd.zzI(parcel, i);
    }
}
