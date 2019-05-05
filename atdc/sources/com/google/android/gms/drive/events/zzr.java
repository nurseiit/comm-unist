package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.internal.zzbkp;
import java.util.Arrays;
import java.util.List;

public final class zzr extends zza implements DriveEvent {
    public static final Creator<zzr> CREATOR = new zzs();
    private List<zzbkp> zzaNn;
    private String zzakh;

    public zzr(String str, List<zzbkp> list) {
        this.zzakh = str;
        this.zzaNn = list;
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzr zzr = (zzr) obj;
        return zzbe.equal(this.zzakh, zzr.zzakh) && zzbe.equal(this.zzaNn, zzr.zzaNn);
    }

    public final int getType() {
        return 7;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzakh, this.zzaNn});
    }

    public final String toString() {
        return String.format("TransferStateEvent[%s]", new Object[]{TextUtils.join("','", this.zzaNn)});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzakh, false);
        zzd.zzc(parcel, 3, this.zzaNn, false);
        zzd.zzI(parcel, i);
    }
}
