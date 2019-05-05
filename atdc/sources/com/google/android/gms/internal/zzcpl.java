package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.nearby.messages.internal.zzg;
import com.google.android.gms.nearby.messages.internal.zzl;
import java.util.UUID;

public final class zzcpl extends zza {
    public static final Creator<zzcpl> CREATOR = new zzcpm();
    private int zzaku;
    private int zzbyP;
    private byte[] zzbyQ;
    private boolean zzbyR;

    zzcpl(int i, int i2, byte[] bArr, boolean z) {
        this.zzaku = i;
        this.zzbyP = i2;
        this.zzbyQ = bArr;
        this.zzbyR = z;
    }

    private zzcpl(int i, byte[] bArr) {
        this(1, i, bArr, false);
    }

    public static zzcpl zzT(String str, @Nullable String str2) {
        Object str22;
        str = String.valueOf(str);
        if (str22 == null) {
            str22 = "";
        }
        str22 = String.valueOf(str22);
        return new zzcpl(2, new zzg(str22.length() != 0 ? str.concat(str22) : new String(str)).getBytes());
    }

    public static zzcpl zza(UUID uuid, @Nullable Short sh, @Nullable Short sh2) {
        return new zzcpl(3, new zzl(uuid, sh, sh2).getBytes());
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzbyP);
        zzd.zza(parcel, 2, this.zzbyQ, false);
        zzd.zza(parcel, 3, this.zzbyR);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, i);
    }
}
