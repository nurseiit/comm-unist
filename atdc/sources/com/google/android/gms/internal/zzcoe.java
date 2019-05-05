package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.nearby.connection.PayloadTransferUpdate;
import java.util.Arrays;

public final class zzcoe extends zza {
    public static final Creator<zzcoe> CREATOR = new zzcof();
    private final String zzbwG;
    private final PayloadTransferUpdate zzbxt;

    public zzcoe(String str, PayloadTransferUpdate payloadTransferUpdate) {
        this.zzbwG = str;
        this.zzbxt = payloadTransferUpdate;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzcoe) {
            zzcoe zzcoe = (zzcoe) obj;
            return zzbe.equal(this.zzbwG, zzcoe.zzbwG) && zzbe.equal(this.zzbxt, zzcoe.zzbxt);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbwG, this.zzbxt});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzbwG, false);
        zzd.zza(parcel, 2, this.zzbxt, i, false);
        zzd.zzI(parcel, zze);
    }

    public final String zzzF() {
        return this.zzbwG;
    }

    public final PayloadTransferUpdate zzzM() {
        return this.zzbxt;
    }
}
