package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.awareness.state.BeaconState;
import com.google.android.gms.awareness.state.BeaconState.BeaconInfo;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.ArrayList;
import java.util.List;

public final class zzast extends zza implements BeaconState {
    public static final Creator<zzast> CREATOR = new zzasw();
    private final ArrayList<zzasu> zzanQ;

    public zzast(ArrayList<zzasu> arrayList) {
        this.zzanQ = arrayList;
    }

    public final List<BeaconInfo> getBeaconInfo() {
        return this.zzanQ;
    }

    public final String toString() {
        if (this.zzanQ == null || this.zzanQ.isEmpty()) {
            return "BeaconState: empty";
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("BeaconState: ");
        ArrayList arrayList = this.zzanQ;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            stringBuilder.append((BeaconInfo) obj);
        }
        return stringBuilder.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.zzanQ, false);
        zzd.zzI(parcel, i);
    }
}
