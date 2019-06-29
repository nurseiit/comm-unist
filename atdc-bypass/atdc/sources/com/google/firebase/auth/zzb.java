package com.google.firebase.auth;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.lj;

public class zzb extends AuthCredential {
    public static final Creator<zzb> CREATOR = new zzc();
    private final String zzaln;
    private final String zzbCx;
    private final String zzbVY;

    zzb(@NonNull String str, @Nullable String str2, @Nullable String str3) {
        this.zzbVY = zzbo.zzh(str, "Must specify a non-empty providerId");
        if (TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3)) {
            throw new IllegalArgumentException("Must specify an idToken or an accessToken.");
        }
        this.zzaln = str2;
        this.zzbCx = str3;
    }

    public static lj zza(@NonNull zzb zzb) {
        zzbo.zzu(zzb);
        return new lj(zzb.zzaln, zzb.zzbCx, zzb.getProvider(), null, null);
    }

    public String getProvider() {
        return this.zzbVY;
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, getProvider(), false);
        zzd.zza(parcel, 2, this.zzaln, false);
        zzd.zza(parcel, 3, this.zzbCx, false);
        zzd.zzI(parcel, i);
    }
}
