package com.google.android.gms.common.internal.safeparcel;

import android.os.Parcel;

public final class zzc extends RuntimeException {
    public zzc(String str, Parcel parcel) {
        int dataPosition = parcel.dataPosition();
        int dataSize = parcel.dataSize();
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 41);
        stringBuilder.append(str);
        stringBuilder.append(" Parcel: pos=");
        stringBuilder.append(dataPosition);
        stringBuilder.append(" size=");
        stringBuilder.append(dataSize);
        super(stringBuilder.toString());
    }
}
