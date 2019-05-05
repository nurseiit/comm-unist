package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class kz extends zza {
    public static final Creator<kz> CREATOR = new la();
    private String zzalP;
    private String zzbVY;
    private String zzbWs;
    private String zzbXr;
    private String zzbXs;
    private String zzbjk;

    kz(String str, String str2, String str3, String str4, String str5, String str6) {
        this.zzbXr = str;
        this.zzalP = str2;
        this.zzbWs = str3;
        this.zzbVY = str4;
        this.zzbXs = str5;
        this.zzbjk = str6;
    }

    @Nullable
    public final String getDisplayName() {
        return this.zzalP;
    }

    public final String getPhoneNumber() {
        return this.zzbjk;
    }

    @Nullable
    public final Uri getPhotoUri() {
        return !TextUtils.isEmpty(this.zzbWs) ? Uri.parse(this.zzbWs) : null;
    }

    public final String getProviderId() {
        return this.zzbVY;
    }

    @Nullable
    public final String getRawUserInfo() {
        return this.zzbXs;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzbXr, false);
        zzd.zza(parcel, 3, this.zzalP, false);
        zzd.zza(parcel, 4, this.zzbWs, false);
        zzd.zza(parcel, 5, this.zzbVY, false);
        zzd.zza(parcel, 6, this.zzbXs, false);
        zzd.zza(parcel, 7, this.zzbjk, false);
        zzd.zzI(parcel, i);
    }

    public final String zzET() {
        return this.zzbXr;
    }
}
