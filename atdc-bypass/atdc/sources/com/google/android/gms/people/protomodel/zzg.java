package com.google.android.gms.people.protomodel;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;

public final class zzg extends zza implements zze {
    public static final Creator<zzg> CREATOR = new zzf();
    private final String zzaeK;
    private int zzaku;
    private final Integer zzbAb;

    zzg(int i, String str, Integer num) {
        this.zzaeK = str;
        this.zzbAb = num;
        this.zzaku = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zze)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zze zze = (zze) obj;
        return zzbe.equal(getSource(), zze.getSource()) && zzbe.equal(zzAd(), zze.zzAd());
    }

    public final /* bridge */ /* synthetic */ Object freeze() {
        return this;
    }

    public final String getSource() {
        return this.zzaeK;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{getSource(), zzAd()});
    }

    public final boolean isDataValid() {
        return true;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzaku);
        zzd.zza(parcel, 2, this.zzaeK, false);
        zzd.zza(parcel, 3, this.zzbAb, false);
        zzd.zzI(parcel, i);
    }

    public final Integer zzAd() {
        return this.zzbAb;
    }
}
