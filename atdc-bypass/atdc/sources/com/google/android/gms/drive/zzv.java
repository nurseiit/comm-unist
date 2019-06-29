package com.google.android.gms.drive;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzbo;

public abstract class zzv extends zza {
    private volatile transient boolean zzaMP = false;

    public void writeToParcel(Parcel parcel, int i) {
        zzbo.zzae(this.zzaMP ^ 1);
        this.zzaMP = true;
        zzJ(parcel, i);
    }

    public abstract void zzJ(Parcel parcel, int i);
}
