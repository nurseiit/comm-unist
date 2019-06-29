package com.google.firebase.auth;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;

public class PhoneAuthCredential extends AuthCredential {
    public static final Creator<PhoneAuthCredential> CREATOR = new zzo();
    private String zzbWn;
    private String zzbWo;
    private boolean zzbWp;
    private String zzbjk;

    public PhoneAuthCredential(@NonNull String str, @NonNull String str2) {
        this.zzbWn = zzbo.zzcF(str);
        this.zzbWo = zzbo.zzcF(str2);
    }

    PhoneAuthCredential(@Nullable String str, @Nullable String str2, boolean z, @Nullable String str3) {
        boolean z2 = (z && !TextUtils.isEmpty(str3)) || !(TextUtils.isEmpty(str) || TextUtils.isEmpty(str2));
        zzbo.zzaf(z2);
        this.zzbWn = str;
        this.zzbWo = str2;
        this.zzbWp = z;
        this.zzbjk = str3;
    }

    @NonNull
    public String getProvider() {
        return PhoneAuthProvider.PROVIDER_ID;
    }

    @Nullable
    public String getSmsCode() {
        return this.zzbWo;
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzbWn, false);
        zzd.zza(parcel, 2, getSmsCode(), false);
        zzd.zza(parcel, 3, this.zzbWp);
        zzd.zza(parcel, 4, this.zzbjk, false);
        zzd.zzI(parcel, i);
    }
}
