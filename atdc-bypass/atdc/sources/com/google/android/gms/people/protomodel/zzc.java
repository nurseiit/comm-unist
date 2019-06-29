package com.google.android.gms.people.protomodel;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class zzc extends zza implements zza {
    public static final Creator<zzc> CREATOR = new zzb();
    private final String zzapa;
    private final List<zzg> zzbzU;
    private final String zzbzV;
    private final Long zzbzW;
    private final Long zzbzX;
    private List<zze> zzbzY;

    public zzc(String str, List<zzg> list, String str2, Long l, Long l2) {
        this.zzapa = str;
        this.zzbzU = list;
        this.zzbzV = str2;
        this.zzbzW = l;
        this.zzbzX = l2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zza)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zza zza = (zza) obj;
        return zzbe.equal(getDeviceId(), zza.getDeviceId()) && zzbe.equal(zzzY(), zza.zzzY()) && zzbe.equal(zzzZ(), zza.zzzZ()) && zzbe.equal(zzAa(), zza.zzAa()) && zzbe.equal(zzAb(), zza.zzAb());
    }

    public final /* bridge */ /* synthetic */ Object freeze() {
        return this;
    }

    public final String getDeviceId() {
        return this.zzapa;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{getDeviceId(), zzzY(), zzzZ(), zzAa(), zzAb()});
    }

    public final boolean isDataValid() {
        return true;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzapa, false);
        zzd.zzc(parcel, 3, zzzY(), false);
        zzd.zza(parcel, 4, this.zzbzV, false);
        zzd.zza(parcel, 5, this.zzbzW, false);
        zzd.zza(parcel, 6, this.zzbzX, false);
        zzd.zzI(parcel, i);
    }

    public final Long zzAa() {
        return this.zzbzW;
    }

    public final Long zzAb() {
        return this.zzbzX;
    }

    public final List<zze> zzzY() {
        if (this.zzbzY == null && this.zzbzU != null) {
            this.zzbzY = new ArrayList(this.zzbzU.size());
            for (zze add : this.zzbzU) {
                this.zzbzY.add(add);
            }
        }
        return this.zzbzY;
    }

    public final String zzzZ() {
        return this.zzbzV;
    }
}
