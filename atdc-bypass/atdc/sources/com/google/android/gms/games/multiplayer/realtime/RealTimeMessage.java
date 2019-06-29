package com.google.android.gms.games.multiplayer.realtime;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.zzbo;

public final class RealTimeMessage implements Parcelable {
    public static final Creator<RealTimeMessage> CREATOR = new zza();
    public static final int RELIABLE = 1;
    public static final int UNRELIABLE = 0;
    private final String zzbdD;
    private final byte[] zzbdE;
    private final int zzbdF;

    private RealTimeMessage(Parcel parcel) {
        this(parcel.readString(), parcel.createByteArray(), parcel.readInt());
    }

    /* synthetic */ RealTimeMessage(Parcel parcel, zza zza) {
        this(parcel);
    }

    private RealTimeMessage(String str, byte[] bArr, int i) {
        this.zzbdD = (String) zzbo.zzu(str);
        this.zzbdE = (byte[]) ((byte[]) zzbo.zzu(bArr)).clone();
        this.zzbdF = i;
    }

    public final int describeContents() {
        return 0;
    }

    public final byte[] getMessageData() {
        return this.zzbdE;
    }

    public final String getSenderParticipantId() {
        return this.zzbdD;
    }

    public final boolean isReliable() {
        return this.zzbdF == 1;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzbdD);
        parcel.writeByteArray(this.zzbdE);
        parcel.writeInt(this.zzbdF);
    }
}
