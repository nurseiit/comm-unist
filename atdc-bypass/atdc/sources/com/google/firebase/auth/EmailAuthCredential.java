package com.google.firebase.auth;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;

public class EmailAuthCredential extends AuthCredential {
    public static final Creator<EmailAuthCredential> CREATOR = new zzd();
    private String zzakT;
    private String zzalO;

    EmailAuthCredential(@NonNull String str, @NonNull String str2) {
        this.zzalO = zzbo.zzcF(str);
        this.zzakT = zzbo.zzcF(str2);
    }

    @NonNull
    public final String getEmail() {
        return this.zzalO;
    }

    @NonNull
    public final String getPassword() {
        return this.zzakT;
    }

    @NonNull
    public String getProvider() {
        return EmailAuthProvider.PROVIDER_ID;
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzalO, false);
        zzd.zza(parcel, 2, this.zzakT, false);
        zzd.zzI(parcel, i);
    }
}
