package com.google.android.gms.people.protomodel;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class FetchBackUpDeviceContactInfoResponseEntity extends zza implements FetchBackUpDeviceContactInfoResponse {
    public static final Creator<FetchBackUpDeviceContactInfoResponseEntity> CREATOR = new zzd();
    private int zzaku;
    private List<zza> zzbAa;
    private final List<zzc> zzbzZ;

    FetchBackUpDeviceContactInfoResponseEntity(int i, List<zzc> list) {
        this.zzbzZ = list;
        this.zzaku = i;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FetchBackUpDeviceContactInfoResponse)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        return zzbe.equal(zzAc(), ((FetchBackUpDeviceContactInfoResponse) obj).zzAc());
    }

    public /* bridge */ /* synthetic */ Object freeze() {
        return this;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{zzAc()});
    }

    public boolean isDataValid() {
        return true;
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzaku);
        zzd.zzc(parcel, 2, zzAc(), false);
        zzd.zzI(parcel, i);
    }

    public final List<zza> zzAc() {
        if (this.zzbAa == null && this.zzbzZ != null) {
            this.zzbAa = new ArrayList(this.zzbzZ.size());
            for (zza add : this.zzbzZ) {
                this.zzbAa.add(add);
            }
        }
        return this.zzbAa;
    }
}
