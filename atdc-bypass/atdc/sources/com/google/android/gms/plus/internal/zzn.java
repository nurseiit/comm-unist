package com.google.android.gms.plus.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.safeparcel.zze;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;

public final class zzn extends zza {
    public static final Creator<zzn> CREATOR = new zzo();
    private final String zzakh;
    private final int zzaku;
    private final String zzaxq;
    private final String[] zzbAH;
    private final String[] zzbAI;
    private final String[] zzbAJ;
    private final String zzbAK;
    private final String zzbAL;
    private final String zzbAM;
    private final PlusCommonExtras zzbAN;

    zzn(int i, String str, String[] strArr, String[] strArr2, String[] strArr3, String str2, String str3, String str4, String str5, PlusCommonExtras plusCommonExtras) {
        this.zzaku = i;
        this.zzakh = str;
        this.zzbAH = strArr;
        this.zzbAI = strArr2;
        this.zzbAJ = strArr3;
        this.zzbAK = str2;
        this.zzbAL = str3;
        this.zzaxq = str4;
        this.zzbAM = str5;
        this.zzbAN = plusCommonExtras;
    }

    public zzn(String str, String[] strArr, String[] strArr2, String[] strArr3, String str2, String str3, String str4, PlusCommonExtras plusCommonExtras) {
        this.zzaku = 1;
        this.zzakh = str;
        this.zzbAH = strArr;
        this.zzbAI = strArr2;
        this.zzbAJ = strArr3;
        this.zzbAK = str2;
        this.zzbAL = str3;
        this.zzaxq = null;
        this.zzbAM = null;
        this.zzbAN = plusCommonExtras;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzn)) {
            return false;
        }
        zzn zzn = (zzn) obj;
        return this.zzaku == zzn.zzaku && zzbe.equal(this.zzakh, zzn.zzakh) && Arrays.equals(this.zzbAH, zzn.zzbAH) && Arrays.equals(this.zzbAI, zzn.zzbAI) && Arrays.equals(this.zzbAJ, zzn.zzbAJ) && zzbe.equal(this.zzbAK, zzn.zzbAK) && zzbe.equal(this.zzbAL, zzn.zzbAL) && zzbe.equal(this.zzaxq, zzn.zzaxq) && zzbe.equal(this.zzbAM, zzn.zzbAM) && zzbe.equal(this.zzbAN, zzn.zzbAN);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zzaku), this.zzakh, this.zzbAH, this.zzbAI, this.zzbAJ, this.zzbAK, this.zzbAL, this.zzaxq, this.zzbAM, this.zzbAN});
    }

    public final String toString() {
        return zzbe.zzt(this).zzg("versionCode", Integer.valueOf(this.zzaku)).zzg("accountName", this.zzakh).zzg("requestedScopes", this.zzbAH).zzg("visibleActivities", this.zzbAI).zzg("requiredFeatures", this.zzbAJ).zzg("packageNameForAuth", this.zzbAK).zzg("callingPackageName", this.zzbAL).zzg("applicationName", this.zzaxq).zzg("extra", this.zzbAN.toString()).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzakh, false);
        zzd.zza(parcel, 2, this.zzbAH, false);
        zzd.zza(parcel, 3, this.zzbAI, false);
        zzd.zza(parcel, 4, this.zzbAJ, false);
        zzd.zza(parcel, 5, this.zzbAK, false);
        zzd.zza(parcel, 6, this.zzbAL, false);
        zzd.zza(parcel, 7, this.zzaxq, false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zza(parcel, 8, this.zzbAM, false);
        zzd.zza(parcel, 9, this.zzbAN, i, false);
        zzd.zzI(parcel, zze);
    }

    public final String[] zzAg() {
        return this.zzbAI;
    }

    public final String zzAh() {
        return this.zzbAK;
    }

    public final Bundle zzAi() {
        Bundle bundle = new Bundle();
        bundle.setClassLoader(PlusCommonExtras.class.getClassLoader());
        bundle.putByteArray("android.gms.plus.internal.PlusCommonExtras.extraPlusCommon", zze.zza(this.zzbAN));
        return bundle;
    }
}
