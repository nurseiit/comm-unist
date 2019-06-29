package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzare;

public final class IdToken extends zza implements ReflectedParcelable {
    public static final Creator<IdToken> CREATOR = new zzh();
    @NonNull
    private final String zzakU;
    private int zzaku;
    @NonNull
    private final String zzaln;

    IdToken(int i, @NonNull String str, @NonNull String str2) {
        zzare.zzbN(str);
        zzbo.zzb(TextUtils.isEmpty(str2) ^ 1, (Object) "id token string cannot be null or empty");
        this.zzaku = i;
        this.zzakU = str;
        this.zzaln = str2;
    }

    public IdToken(@NonNull String str, @NonNull String str2) {
        this(1, str, str2);
    }

    @NonNull
    public final String getAccountType() {
        return this.zzakU;
    }

    @NonNull
    public final String getIdToken() {
        return this.zzaln;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, getAccountType(), false);
        zzd.zza(parcel, 2, getIdToken(), false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, i);
    }
}
