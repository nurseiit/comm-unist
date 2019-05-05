package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public class UserMetadata extends zza implements ReflectedParcelable {
    public static final Creator<UserMetadata> CREATOR = new zzu();
    private String zzaML;
    private String zzaMM;
    private boolean zzaMN;
    private String zzaMO;
    private String zzalP;

    public UserMetadata(String str, String str2, String str3, boolean z, String str4) {
        this.zzaML = str;
        this.zzalP = str2;
        this.zzaMM = str3;
        this.zzaMN = z;
        this.zzaMO = str4;
    }

    public String toString() {
        return String.format("Permission ID: '%s', Display Name: '%s', Picture URL: '%s', Authenticated User: %b, Email: '%s'", new Object[]{this.zzaML, this.zzalP, this.zzaMM, Boolean.valueOf(this.zzaMN), this.zzaMO});
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaML, false);
        zzd.zza(parcel, 3, this.zzalP, false);
        zzd.zza(parcel, 4, this.zzaMM, false);
        zzd.zza(parcel, 5, this.zzaMN);
        zzd.zza(parcel, 6, this.zzaMO, false);
        zzd.zzI(parcel, i);
    }
}
