package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.zzv;

public final class zzl extends zzv implements DriveEvent {
    public static final Creator<zzl> CREATOR = new zzm();
    private DataHolder zzaCX;
    private boolean zzaNj;
    private int zzaNk;

    public zzl(DataHolder dataHolder, boolean z, int i) {
        this.zzaCX = dataHolder;
        this.zzaNj = z;
        this.zzaNk = i;
    }

    public final int getType() {
        return 3;
    }

    public final void zzJ(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaCX, i, false);
        zzd.zza(parcel, 3, this.zzaNj);
        zzd.zzc(parcel, 4, this.zzaNk);
        zzd.zzI(parcel, zze);
    }

    public final DataHolder zztb() {
        return this.zzaCX;
    }

    public final boolean zztc() {
        return this.zzaNj;
    }

    public final int zztd() {
        return this.zzaNk;
    }
}
