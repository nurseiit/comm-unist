package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zzf;
import java.util.Set;
import java.util.regex.Pattern;

public class DriveSpace extends zza implements ReflectedParcelable {
    public static final Creator<DriveSpace> CREATOR = new zzl();
    public static final DriveSpace zzaMl = new DriveSpace("DRIVE");
    public static final DriveSpace zzaMm = new DriveSpace("APP_DATA_FOLDER");
    public static final DriveSpace zzaMn = new DriveSpace("PHOTOS");
    private static Set<DriveSpace> zzaMo = zzf.zza(zzaMl, zzaMm, zzaMn);
    private static String zzaMp = TextUtils.join(",", zzaMo.toArray());
    private static final Pattern zzaMq = Pattern.compile("[A-Z0-9_]*");
    private final String mName;

    DriveSpace(String str) {
        this.mName = (String) zzbo.zzu(str);
    }

    public boolean equals(Object obj) {
        return (obj == null || obj.getClass() != DriveSpace.class) ? false : this.mName.equals(((DriveSpace) obj).mName);
    }

    public int hashCode() {
        return this.mName.hashCode() ^ 1247068382;
    }

    public String toString() {
        return this.mName;
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.mName, false);
        zzd.zzI(parcel, i);
    }
}
