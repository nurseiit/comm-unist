package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.awareness.state.HeadphoneState;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzasx extends zza implements HeadphoneState {
    public static final Creator<zzasx> CREATOR = new zzasy();
    private final int zzanU;

    public zzasx(int i) {
        this.zzanU = i;
    }

    public final int getState() {
        return this.zzanU;
    }

    public final String toString() {
        return Integer.toString(this.zzanU);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, getState());
        zzd.zzI(parcel, i);
    }
}
