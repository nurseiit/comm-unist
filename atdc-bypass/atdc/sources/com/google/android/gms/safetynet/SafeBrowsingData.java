package com.google.android.gms.safetynet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public class SafeBrowsingData extends zza {
    public static final Creator<SafeBrowsingData> CREATOR = new zzh();
    private String zzbBI;
    private DataHolder zzbBJ;

    public SafeBrowsingData(String str) {
        this(str, null);
    }

    public SafeBrowsingData(String str, DataHolder dataHolder) {
        this.zzbBI = str;
        this.zzbBJ = dataHolder;
    }

    public DataHolder getBlacklistsDataHolder() {
        return this.zzbBJ;
    }

    public String getMetadata() {
        return this.zzbBI;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, getMetadata(), false);
        zzd.zza(parcel, 3, getBlacklistsDataHolder(), i, false);
        zzd.zzI(parcel, zze);
    }
}
