package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;

public class SignInAccount extends zza implements ReflectedParcelable {
    public static final Creator<SignInAccount> CREATOR = new zze();
    private int versionCode;
    @Deprecated
    private String zzafe;
    @Deprecated
    private String zzalO;
    private GoogleSignInAccount zzamh;

    SignInAccount(int i, String str, GoogleSignInAccount googleSignInAccount, String str2) {
        this.versionCode = i;
        this.zzamh = googleSignInAccount;
        this.zzalO = zzbo.zzh(str, "8.3 and 8.4 SDKs require non-null email");
        this.zzafe = zzbo.zzh(str2, "8.3 and 8.4 SDKs require non-null userId");
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.versionCode);
        zzd.zza(parcel, 4, this.zzalO, false);
        zzd.zza(parcel, 7, this.zzamh, i, false);
        zzd.zza(parcel, 8, this.zzafe, false);
        zzd.zzI(parcel, zze);
    }

    public final GoogleSignInAccount zzmD() {
        return this.zzamh;
    }
}
