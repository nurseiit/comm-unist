package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.List;

public final class zzbtn extends zza {
    public static final Creator<zzbtn> CREATOR = new zzbto();
    private DataHolder zzaRZ;
    private boolean zzaSa;
    private List<String> zzaSb;
    private zzbtd zzaSc;
    private List<zzbtl> zztH;

    public zzbtn(List<zzbtl> list, DataHolder dataHolder, boolean z, List<String> list2, zzbtd zzbtd) {
        this.zztH = list;
        this.zzaRZ = dataHolder;
        this.zzaSa = z;
        this.zzaSb = list2;
        this.zzaSc = zzbtd;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.zztH, false);
        zzd.zza(parcel, 3, this.zzaRZ, i, false);
        zzd.zza(parcel, 4, this.zzaSa);
        zzd.zzb(parcel, 5, this.zzaSb, false);
        zzd.zza(parcel, 6, this.zzaSc, i, false);
        zzd.zzI(parcel, zze);
    }
}
