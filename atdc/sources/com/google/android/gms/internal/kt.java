package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.List;

public final class kt extends zza {
    public static final Creator<kt> CREATOR = new ku();
    private boolean mRegistered;
    private String zzbVY;
    private String zzbXi;
    private boolean zzbXj;
    private lh zzbXk;

    public kt() {
        this.zzbXk = lh.zzEX();
    }

    public kt(String str, boolean z, String str2, boolean z2, lh lhVar) {
        this.zzbXi = str;
        this.mRegistered = z;
        this.zzbVY = str2;
        this.zzbXj = z2;
        this.zzbXk = lhVar == null ? lh.zzEX() : lh.zza(lhVar);
    }

    @Nullable
    public final List<String> getAllProviders() {
        return this.zzbXk.zzEW();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzbXi, false);
        zzd.zza(parcel, 3, this.mRegistered);
        zzd.zza(parcel, 4, this.zzbVY, false);
        zzd.zza(parcel, 5, this.zzbXj);
        zzd.zza(parcel, 6, this.zzbXk, i, false);
        zzd.zzI(parcel, zze);
    }
}
