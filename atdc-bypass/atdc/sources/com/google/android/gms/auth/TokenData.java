package com.google.android.gms.auth;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import java.util.Arrays;
import java.util.List;

public class TokenData extends zza implements ReflectedParcelable {
    public static final Creator<TokenData> CREATOR = new zzj();
    private int zzaku;
    private final String zzakv;
    private final Long zzakw;
    private final boolean zzakx;
    private final boolean zzaky;
    private final List<String> zzakz;

    TokenData(int i, String str, Long l, boolean z, boolean z2, List<String> list) {
        this.zzaku = i;
        this.zzakv = zzbo.zzcF(str);
        this.zzakw = l;
        this.zzakx = z;
        this.zzaky = z2;
        this.zzakz = list;
    }

    @Nullable
    public static TokenData zzd(Bundle bundle, String str) {
        bundle.setClassLoader(TokenData.class.getClassLoader());
        bundle = bundle.getBundle(str);
        if (bundle == null) {
            return null;
        }
        bundle.setClassLoader(TokenData.class.getClassLoader());
        return (TokenData) bundle.getParcelable("TokenData");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TokenData)) {
            return false;
        }
        TokenData tokenData = (TokenData) obj;
        return TextUtils.equals(this.zzakv, tokenData.zzakv) && zzbe.equal(this.zzakw, tokenData.zzakw) && this.zzakx == tokenData.zzakx && this.zzaky == tokenData.zzaky && zzbe.equal(this.zzakz, tokenData.zzakz);
    }

    public final String getToken() {
        return this.zzakv;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzakv, this.zzakw, Boolean.valueOf(this.zzakx), Boolean.valueOf(this.zzaky), this.zzakz});
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzaku);
        zzd.zza(parcel, 2, this.zzakv, false);
        zzd.zza(parcel, 3, this.zzakw, false);
        zzd.zza(parcel, 4, this.zzakx);
        zzd.zza(parcel, 5, this.zzaky);
        zzd.zzb(parcel, 6, this.zzakz, false);
        zzd.zzI(parcel, i);
    }
}
