package com.google.firebase.database.connection.idl;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.internal.ol;
import com.google.android.gms.internal.wn;
import java.util.List;

public final class zzc extends zza {
    public static final Creator<zzc> CREATOR = new zze();
    final boolean zzcaE;
    final String zzcaG;
    final zzi zzcbV;
    final int zzcbW;
    final List<String> zzcbX;
    final String zzcbY;

    public zzc(ol olVar, wn wnVar, List<String> list, boolean z, String str, String str2) {
        int i;
        switch (zzd.zzcbZ[wnVar.ordinal()]) {
            case 1:
                i = 1;
                break;
            case 2:
                i = 2;
                break;
            case 3:
                i = 3;
                break;
            case 4:
                i = 4;
                break;
            default:
                i = 0;
                break;
        }
        this.zzcbV = new zzi(olVar.getHost(), olVar.getNamespace(), olVar.isSecure());
        this.zzcbW = i;
        this.zzcbX = null;
        this.zzcaE = z;
        this.zzcbY = str;
        this.zzcaG = str2;
    }

    public zzc(zzi zzi, int i, List<String> list, boolean z, String str, String str2) {
        this.zzcbV = zzi;
        this.zzcbW = i;
        this.zzcbX = list;
        this.zzcaE = z;
        this.zzcbY = str;
        this.zzcaG = str2;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzcbV, i, false);
        zzd.zzc(parcel, 3, this.zzcbW);
        zzd.zzb(parcel, 4, this.zzcbX, false);
        zzd.zza(parcel, 5, this.zzcaE);
        zzd.zza(parcel, 6, this.zzcbY, false);
        zzd.zza(parcel, 7, this.zzcaG, false);
        zzd.zzI(parcel, zze);
    }
}
