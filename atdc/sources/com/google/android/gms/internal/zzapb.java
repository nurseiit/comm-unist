package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;

public final class zzapb extends zza {
    public static final Creator<zzapb> CREATOR = new zzapc();
    private static int zzaje = Integer.parseInt("-1");
    private static final zzapi zzajf = new zzapj("SsbContext").zzK(true).zzbI("blob").zzml();
    private String zzajg;
    private zzapi zzajh;
    public final int zzaji;
    private byte[] zzajj;

    public zzapb(String str, zzapi zzapi) {
        this(str, zzapi, zzaje, null);
    }

    zzapb(String str, zzapi zzapi, int i, byte[] bArr) {
        boolean z = i == zzaje || zzaph.zzQ(i) != null;
        StringBuilder stringBuilder = new StringBuilder(32);
        stringBuilder.append("Invalid section type ");
        stringBuilder.append(i);
        zzbo.zzb(z, stringBuilder.toString());
        this.zzajg = str;
        this.zzajh = zzapi;
        this.zzaji = i;
        this.zzajj = bArr;
        if (this.zzaji == zzaje || zzaph.zzQ(this.zzaji) != null) {
            str = (this.zzajg == null || this.zzajj == null) ? null : "Both content and blobContent set";
        } else {
            int i2 = this.zzaji;
            StringBuilder stringBuilder2 = new StringBuilder(32);
            stringBuilder2.append("Invalid section type ");
            stringBuilder2.append(i2);
            str = stringBuilder2.toString();
        }
        if (str != null) {
            throw new IllegalArgumentException(str);
        }
    }

    public zzapb(String str, zzapi zzapi, String str2) {
        this(str, zzapi, zzaph.zzbH(str2), null);
    }

    public zzapb(byte[] bArr, zzapi zzapi) {
        this(null, zzapi, zzaje, bArr);
    }

    public static zzapb zzd(byte[] bArr) {
        return new zzapb(bArr, zzajf);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzajg, false);
        zzd.zza(parcel, 3, this.zzajh, i, false);
        zzd.zzc(parcel, 4, this.zzaji);
        zzd.zza(parcel, 5, this.zzajj, false);
        zzd.zzI(parcel, zze);
    }
}
