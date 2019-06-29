package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;
import java.util.List;

@zzzn
public final class zzir extends zza {
    public static final Creator<zzir> CREATOR = new zzit();
    public final Bundle extras;
    public final int versionCode;
    public final String zzAa;
    public final String zzAb;
    public final boolean zzAc;
    public final long zzzN;
    public final int zzzO;
    public final List<String> zzzP;
    public final boolean zzzQ;
    public final int zzzR;
    public final boolean zzzS;
    public final String zzzT;
    public final zzlt zzzU;
    public final Location zzzV;
    public final String zzzW;
    public final Bundle zzzX;
    public final Bundle zzzY;
    public final List<String> zzzZ;

    public zzir(int i, long j, Bundle bundle, int i2, List<String> list, boolean z, int i3, boolean z2, String str, zzlt zzlt, Location location, String str2, Bundle bundle2, Bundle bundle3, List<String> list2, String str3, String str4, boolean z3) {
        this.versionCode = i;
        this.zzzN = j;
        this.extras = bundle == null ? new Bundle() : bundle;
        this.zzzO = i2;
        this.zzzP = list;
        this.zzzQ = z;
        this.zzzR = i3;
        this.zzzS = z2;
        this.zzzT = str;
        this.zzzU = zzlt;
        this.zzzV = location;
        this.zzzW = str2;
        this.zzzX = bundle2 == null ? new Bundle() : bundle2;
        this.zzzY = bundle3;
        this.zzzZ = list2;
        this.zzAa = str3;
        this.zzAb = str4;
        this.zzAc = z3;
    }

    public static void zzh(zzir zzir) {
        zzir.zzzX.putBundle("com.google.ads.mediation.admob.AdMobAdapter", zzir.extras);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzir)) {
            return false;
        }
        zzir zzir = (zzir) obj;
        return this.versionCode == zzir.versionCode && this.zzzN == zzir.zzzN && zzbe.equal(this.extras, zzir.extras) && this.zzzO == zzir.zzzO && zzbe.equal(this.zzzP, zzir.zzzP) && this.zzzQ == zzir.zzzQ && this.zzzR == zzir.zzzR && this.zzzS == zzir.zzzS && zzbe.equal(this.zzzT, zzir.zzzT) && zzbe.equal(this.zzzU, zzir.zzzU) && zzbe.equal(this.zzzV, zzir.zzzV) && zzbe.equal(this.zzzW, zzir.zzzW) && zzbe.equal(this.zzzX, zzir.zzzX) && zzbe.equal(this.zzzY, zzir.zzzY) && zzbe.equal(this.zzzZ, zzir.zzzZ) && zzbe.equal(this.zzAa, zzir.zzAa) && zzbe.equal(this.zzAb, zzir.zzAb) && this.zzAc == zzir.zzAc;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.versionCode), Long.valueOf(this.zzzN), this.extras, Integer.valueOf(this.zzzO), this.zzzP, Boolean.valueOf(this.zzzQ), Integer.valueOf(this.zzzR), Boolean.valueOf(this.zzzS), this.zzzT, this.zzzU, this.zzzV, this.zzzW, this.zzzX, this.zzzY, this.zzzZ, this.zzAa, this.zzAb, Boolean.valueOf(this.zzAc)});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.versionCode);
        zzd.zza(parcel, 2, this.zzzN);
        zzd.zza(parcel, 3, this.extras, false);
        zzd.zzc(parcel, 4, this.zzzO);
        zzd.zzb(parcel, 5, this.zzzP, false);
        zzd.zza(parcel, 6, this.zzzQ);
        zzd.zzc(parcel, 7, this.zzzR);
        zzd.zza(parcel, 8, this.zzzS);
        zzd.zza(parcel, 9, this.zzzT, false);
        zzd.zza(parcel, 10, this.zzzU, i, false);
        zzd.zza(parcel, 11, this.zzzV, i, false);
        zzd.zza(parcel, 12, this.zzzW, false);
        zzd.zza(parcel, 13, this.zzzX, false);
        zzd.zza(parcel, 14, this.zzzY, false);
        zzd.zzb(parcel, 15, this.zzzZ, false);
        zzd.zza(parcel, 16, this.zzAa, false);
        zzd.zza(parcel, 17, this.zzAb, false);
        zzd.zza(parcel, 18, this.zzAc);
        zzd.zzI(parcel, zze);
    }
}
