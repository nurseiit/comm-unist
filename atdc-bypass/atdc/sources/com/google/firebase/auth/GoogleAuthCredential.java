package com.google.firebase.auth;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.lj;

public class GoogleAuthCredential extends AuthCredential {
    public static final Creator<GoogleAuthCredential> CREATOR = new zzn();
    private final String zzaln;
    private final String zzbCx;

    GoogleAuthCredential(@Nullable String str, @Nullable String str2) {
        if (str == null && str2 == null) {
            throw new IllegalArgumentException("Must specify an idToken or an accessToken.");
        }
        this.zzaln = zzY(str, "idToken");
        this.zzbCx = zzY(str2, "accessToken");
    }

    private static String zzY(String str, String str2) {
        if (str == null || !TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException(String.valueOf(str2).concat(" must not be empty"));
    }

    public static lj zza(@NonNull GoogleAuthCredential googleAuthCredential) {
        zzbo.zzu(googleAuthCredential);
        return new lj(googleAuthCredential.zzaln, googleAuthCredential.zzbCx, googleAuthCredential.getProvider(), null, null);
    }

    public String getProvider() {
        return GoogleAuthProvider.PROVIDER_ID;
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzaln, false);
        zzd.zza(parcel, 2, this.zzbCx, false);
        zzd.zzI(parcel, i);
    }
}
