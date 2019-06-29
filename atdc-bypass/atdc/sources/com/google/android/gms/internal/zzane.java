package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class zzane implements Parcelable {
    @Deprecated
    public static final Creator<zzane> CREATOR = new zzanf();
    private String mValue;
    private String zzIi;
    private String zzagP;

    @Deprecated
    zzane(Parcel parcel) {
        this.zzIi = parcel.readString();
        this.zzagP = parcel.readString();
        this.mValue = parcel.readString();
    }

    @Deprecated
    public final int describeContents() {
        return 0;
    }

    public final String getId() {
        return this.zzIi;
    }

    public final String getValue() {
        return this.mValue;
    }

    @Deprecated
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzIi);
        parcel.writeString(this.zzagP);
        parcel.writeString(this.mValue);
    }
}
