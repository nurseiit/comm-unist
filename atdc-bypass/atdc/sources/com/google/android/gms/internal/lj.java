package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;

public final class lj extends zza {
    public static final Creator<lj> CREATOR = new lk();
    private String zzJw;
    @Nullable
    private String zzalO;
    private String zzaln;
    private String zzbCx;
    private String zzbVY;
    private String zzbXA;
    private String zzbXB;
    private boolean zzbXC;
    private String zzbXz;

    public lj() {
        this.zzbXC = true;
    }

    public lj(@Nullable String str, @Nullable String str2, String str3, @Nullable String str4, @Nullable String str5) {
        this.zzbXz = "http://localhost";
        this.zzaln = str;
        this.zzbCx = str2;
        this.zzbXB = str5;
        this.zzbXC = true;
        if (TextUtils.isEmpty(this.zzaln) && TextUtils.isEmpty(this.zzbCx)) {
            throw new IllegalArgumentException("Both idToken, and accessToken cannot be null");
        }
        this.zzbVY = zzbo.zzcF(str3);
        this.zzalO = null;
        StringBuilder stringBuilder = new StringBuilder();
        if (!TextUtils.isEmpty(this.zzaln)) {
            stringBuilder.append("id_token=");
            stringBuilder.append(this.zzaln);
            stringBuilder.append("&");
        }
        if (!TextUtils.isEmpty(this.zzbCx)) {
            stringBuilder.append("access_token=");
            stringBuilder.append(this.zzbCx);
            stringBuilder.append("&");
        }
        if (!TextUtils.isEmpty(this.zzalO)) {
            stringBuilder.append("identifier=");
            stringBuilder.append(this.zzalO);
            stringBuilder.append("&");
        }
        if (!TextUtils.isEmpty(this.zzbXB)) {
            stringBuilder.append("oauth_token_secret=");
            stringBuilder.append(this.zzbXB);
            stringBuilder.append("&");
        }
        stringBuilder.append("providerId=");
        stringBuilder.append(this.zzbVY);
        this.zzJw = stringBuilder.toString();
    }

    lj(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, boolean z) {
        this.zzbXz = str;
        this.zzbXA = str2;
        this.zzaln = str3;
        this.zzbCx = str4;
        this.zzbVY = str5;
        this.zzalO = str6;
        this.zzJw = str7;
        this.zzbXB = str8;
        this.zzbXC = z;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzbXz, false);
        zzd.zza(parcel, 3, this.zzbXA, false);
        zzd.zza(parcel, 4, this.zzaln, false);
        zzd.zza(parcel, 5, this.zzbCx, false);
        zzd.zza(parcel, 6, this.zzbVY, false);
        zzd.zza(parcel, 7, this.zzalO, false);
        zzd.zza(parcel, 8, this.zzJw, false);
        zzd.zza(parcel, 9, this.zzbXB, false);
        zzd.zza(parcel, 10, this.zzbXC);
        zzd.zzI(parcel, i);
    }
}
