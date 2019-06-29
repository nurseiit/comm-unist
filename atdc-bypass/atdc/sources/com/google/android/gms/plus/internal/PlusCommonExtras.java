package com.google.android.gms.plus.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;

@KeepName
public class PlusCommonExtras extends zza {
    public static final Creator<PlusCommonExtras> CREATOR = new zzl();
    private final int zzaku;
    private String zzbAE;
    private String zzbAF;

    public PlusCommonExtras() {
        this.zzaku = 1;
        this.zzbAE = "";
        this.zzbAF = "";
    }

    PlusCommonExtras(int i, String str, String str2) {
        this.zzaku = i;
        this.zzbAE = str;
        this.zzbAF = str2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PlusCommonExtras)) {
            return false;
        }
        PlusCommonExtras plusCommonExtras = (PlusCommonExtras) obj;
        return this.zzaku == plusCommonExtras.zzaku && zzbe.equal(this.zzbAE, plusCommonExtras.zzbAE) && zzbe.equal(this.zzbAF, plusCommonExtras.zzbAF);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zzaku), this.zzbAE, this.zzbAF});
    }

    public String toString() {
        return zzbe.zzt(this).zzg("versionCode", Integer.valueOf(this.zzaku)).zzg("Gpsrc", this.zzbAE).zzg("ClientCallingPackage", this.zzbAF).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzbAE, false);
        zzd.zza(parcel, 2, this.zzbAF, false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, i);
    }
}
