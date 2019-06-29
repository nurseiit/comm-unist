package com.google.android.gms.games.multiplayer.realtime;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class zza implements Creator<RealTimeMessage> {
    zza() {
    }

    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        return new RealTimeMessage(parcel, null);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new RealTimeMessage[i];
    }
}
