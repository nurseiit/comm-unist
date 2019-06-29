package com.google.firebase.auth;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.lj;

public class TwitterAuthCredential extends AuthCredential {
    public static final Creator<TwitterAuthCredential> CREATOR = new zzp();
    private String zzakv;
    private String zzbWr;

    TwitterAuthCredential(@NonNull String str, @NonNull String str2) {
        this.zzakv = zzbo.zzcF(str);
        this.zzbWr = zzbo.zzcF(str2);
    }

    public static lj zza(@NonNull TwitterAuthCredential twitterAuthCredential) {
        zzbo.zzu(twitterAuthCredential);
        return new lj(null, twitterAuthCredential.zzakv, twitterAuthCredential.getProvider(), null, twitterAuthCredential.zzbWr);
    }

    public String getProvider() {
        return TwitterAuthProvider.PROVIDER_ID;
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzakv, false);
        zzd.zza(parcel, 2, this.zzbWr, false);
        zzd.zzI(parcel, i);
    }
}
