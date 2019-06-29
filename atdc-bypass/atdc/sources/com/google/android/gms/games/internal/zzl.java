package com.google.android.gms.games.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzl extends zzc {
    public static final Creator<zzl> CREATOR = new zzm();
    private final Bundle zzbaI;
    private final IBinder zzbaJ;

    zzl(Bundle bundle, IBinder iBinder) {
        this.zzbaI = bundle;
        this.zzbaJ = iBinder;
    }

    public zzl(zzp zzp) {
        this.zzbaI = zzp.zzuW();
        this.zzbaJ = zzp.zzbaM;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzbaI, false);
        zzd.zza(parcel, 2, this.zzbaJ, false);
        zzd.zzI(parcel, i);
    }
}
