package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;

public final class zzs extends zza {
    public static final Creator<zzs> CREATOR = new zzt();
    private String zzaMF;
    private int zzaMG;
    private String zzaMH;
    private String zzaMI;
    private int zzaMJ;
    private boolean zzaMK;

    public zzs(String str, int i, String str2, String str3, int i2, boolean z) {
        this.zzaMF = str;
        this.zzaMG = i;
        this.zzaMH = str2;
        this.zzaMI = str3;
        this.zzaMJ = i2;
        this.zzaMK = z;
    }

    private static boolean zzaL(int i) {
        switch (i) {
            case 256:
            case 257:
            case CallbackHandler.MSG_ROUTE_REMOVED /*258*/:
                return true;
            default:
                return false;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzs zzs = (zzs) obj;
        return zzbe.equal(this.zzaMF, zzs.zzaMF) && this.zzaMG == zzs.zzaMG && this.zzaMJ == zzs.zzaMJ && this.zzaMK == zzs.zzaMK;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaMF, Integer.valueOf(this.zzaMG), Integer.valueOf(this.zzaMJ), Boolean.valueOf(this.zzaMK)});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        boolean z = false;
        zzd.zza(parcel, 2, !zzaL(this.zzaMG) ? null : this.zzaMF, false);
        int i2 = -1;
        zzd.zzc(parcel, 3, !zzaL(this.zzaMG) ? -1 : this.zzaMG);
        zzd.zza(parcel, 4, this.zzaMH, false);
        zzd.zza(parcel, 5, this.zzaMI, false);
        switch (this.zzaMJ) {
            case 0:
            case 1:
            case 2:
            case 3:
                z = true;
                break;
        }
        if (z) {
            i2 = this.zzaMJ;
        }
        zzd.zzc(parcel, 6, i2);
        zzd.zza(parcel, 7, this.zzaMK);
        zzd.zzI(parcel, i);
    }
}
