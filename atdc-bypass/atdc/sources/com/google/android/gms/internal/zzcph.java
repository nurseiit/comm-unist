package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;

public final class zzcph extends zza {
    public static final Creator<zzcph> CREATOR = new zzcpi();
    private final int zzaku;
    private final ParcelUuid zzbyD;
    private final ParcelUuid zzbyE;
    private final ParcelUuid zzbyF;
    private final byte[] zzbyG;
    private final byte[] zzbyH;
    private final int zzbyI;
    private final byte[] zzbyJ;
    private final byte[] zzbyK;

    zzcph(int i, ParcelUuid parcelUuid, ParcelUuid parcelUuid2, ParcelUuid parcelUuid3, byte[] bArr, byte[] bArr2, int i2, byte[] bArr3, byte[] bArr4) {
        this.zzaku = i;
        this.zzbyD = parcelUuid;
        this.zzbyE = parcelUuid2;
        this.zzbyF = parcelUuid3;
        this.zzbyG = bArr;
        this.zzbyH = bArr2;
        this.zzbyI = i2;
        this.zzbyJ = bArr3;
        this.zzbyK = bArr4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzcph zzcph = (zzcph) obj;
        return this.zzbyI == zzcph.zzbyI && Arrays.equals(this.zzbyJ, zzcph.zzbyJ) && Arrays.equals(this.zzbyK, zzcph.zzbyK) && zzbe.equal(this.zzbyF, zzcph.zzbyF) && Arrays.equals(this.zzbyG, zzcph.zzbyG) && Arrays.equals(this.zzbyH, zzcph.zzbyH) && zzbe.equal(this.zzbyD, zzcph.zzbyD) && zzbe.equal(this.zzbyE, zzcph.zzbyE);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zzbyI), Integer.valueOf(Arrays.hashCode(this.zzbyJ)), Integer.valueOf(Arrays.hashCode(this.zzbyK)), this.zzbyF, Integer.valueOf(Arrays.hashCode(this.zzbyG)), Integer.valueOf(Arrays.hashCode(this.zzbyH)), this.zzbyD, this.zzbyE});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzaku);
        zzd.zza(parcel, 4, this.zzbyD, i, false);
        zzd.zza(parcel, 5, this.zzbyE, i, false);
        zzd.zza(parcel, 6, this.zzbyF, i, false);
        zzd.zza(parcel, 7, this.zzbyG, false);
        zzd.zza(parcel, 8, this.zzbyH, false);
        zzd.zzc(parcel, 9, this.zzbyI);
        zzd.zza(parcel, 10, this.zzbyJ, false);
        zzd.zza(parcel, 11, this.zzbyK, false);
        zzd.zzI(parcel, zze);
    }
}
