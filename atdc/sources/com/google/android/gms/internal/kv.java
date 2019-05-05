package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.List;

public final class kv extends zza {
    public static final Creator<kv> CREATOR = new kw();
    private String zzakT;
    private String zzalO;
    private String zzalP;
    private String zzbWs;
    private String zzbXl;
    private boolean zzbXm;
    private lb zzbXn;
    private String zzbjk;

    public kv() {
        this.zzbXn = new lb();
    }

    public kv(String str, String str2, boolean z, String str3, String str4, lb lbVar, String str5, String str6) {
        this.zzbXl = str;
        this.zzalO = str2;
        this.zzbXm = z;
        this.zzalP = str3;
        this.zzbWs = str4;
        this.zzbXn = lbVar == null ? new lb() : lb.zza(lbVar);
        this.zzakT = str5;
        this.zzbjk = str6;
    }

    @Nullable
    public final String getDisplayName() {
        return this.zzalP;
    }

    @Nullable
    public final String getEmail() {
        return this.zzalO;
    }

    @NonNull
    public final String getLocalId() {
        return this.zzbXl;
    }

    @Nullable
    public final String getPhoneNumber() {
        return this.zzbjk;
    }

    @Nullable
    public final Uri getPhotoUri() {
        return !TextUtils.isEmpty(this.zzbWs) ? Uri.parse(this.zzbWs) : null;
    }

    public final boolean isEmailVerified() {
        return this.zzbXm;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzbXl, false);
        zzd.zza(parcel, 3, this.zzalO, false);
        zzd.zza(parcel, 4, this.zzbXm);
        zzd.zza(parcel, 5, this.zzalP, false);
        zzd.zza(parcel, 6, this.zzbWs, false);
        zzd.zza(parcel, 7, this.zzbXn, i, false);
        zzd.zza(parcel, 8, this.zzakT, false);
        zzd.zza(parcel, 9, this.zzbjk, false);
        zzd.zzI(parcel, zze);
    }

    @NonNull
    public final List<kz> zzER() {
        return this.zzbXn.zzER();
    }
}
