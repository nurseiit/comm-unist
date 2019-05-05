package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;

public final class zzcog extends zza {
    public static final Creator<zzcog> CREATOR = new zzcoh();
    private final int statusCode;
    private final String zzbwY;

    public zzcog(int i, String str) {
        this.statusCode = i;
        this.zzbwY = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzcog) {
            zzcog zzcog = (zzcog) obj;
            return zzbe.equal(Integer.valueOf(this.statusCode), Integer.valueOf(zzcog.statusCode)) && zzbe.equal(this.zzbwY, zzcog.zzbwY);
        }
    }

    public final String getLocalEndpointName() {
        return this.zzbwY;
    }

    public final int getStatusCode() {
        return this.statusCode;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.statusCode), this.zzbwY});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.statusCode);
        zzd.zza(parcel, 2, this.zzbwY, false);
        zzd.zzI(parcel, i);
    }
}
