package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;

public final class zzcoo extends zza {
    public static final Creator<zzcoo> CREATOR = new zzcop();
    private final long id;
    private final int type;
    @Nullable
    private final byte[] zzbws;
    @Nullable
    private final ParcelFileDescriptor zzbxD;
    @Nullable
    private final String zzbxE;
    private final long zzbxF;
    @Nullable
    private final ParcelFileDescriptor zzbxG;

    public zzcoo(long j, int i, @Nullable byte[] bArr, @Nullable ParcelFileDescriptor parcelFileDescriptor, @Nullable String str, long j2, @Nullable ParcelFileDescriptor parcelFileDescriptor2) {
        this.id = j;
        this.type = i;
        this.zzbws = bArr;
        this.zzbxD = parcelFileDescriptor;
        this.zzbxE = str;
        this.zzbxF = j2;
        this.zzbxG = parcelFileDescriptor2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzcoo) {
            zzcoo zzcoo = (zzcoo) obj;
            return zzbe.equal(Long.valueOf(this.id), Long.valueOf(zzcoo.id)) && zzbe.equal(Integer.valueOf(this.type), Integer.valueOf(zzcoo.type)) && zzbe.equal(this.zzbws, zzcoo.zzbws) && zzbe.equal(this.zzbxD, zzcoo.zzbxD) && zzbe.equal(this.zzbxE, zzcoo.zzbxE) && zzbe.equal(Long.valueOf(this.zzbxF), Long.valueOf(zzcoo.zzbxF)) && zzbe.equal(this.zzbxG, zzcoo.zzbxG);
        }
    }

    @Nullable
    public final byte[] getBytes() {
        return this.zzbws;
    }

    public final long getId() {
        return this.id;
    }

    public final int getType() {
        return this.type;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.id), Integer.valueOf(this.type), this.zzbws, this.zzbxD, this.zzbxE, Long.valueOf(this.zzbxF), this.zzbxG});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.id);
        zzd.zzc(parcel, 2, this.type);
        zzd.zza(parcel, 3, this.zzbws, false);
        zzd.zza(parcel, 4, this.zzbxD, i, false);
        zzd.zza(parcel, 5, this.zzbxE, false);
        zzd.zza(parcel, 6, this.zzbxF);
        zzd.zza(parcel, 7, this.zzbxG, i, false);
        zzd.zzI(parcel, zze);
    }

    @Nullable
    public final ParcelFileDescriptor zzzN() {
        return this.zzbxD;
    }

    @Nullable
    public final String zzzO() {
        return this.zzbxE;
    }

    public final long zzzP() {
        return this.zzbxF;
    }
}
