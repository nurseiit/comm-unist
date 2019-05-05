package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.internal.zzzn;

@zzzn
public final class zzc extends zza {
    public static final Creator<zzc> CREATOR = new zzb();
    public final Intent intent;
    public final String mimeType;
    public final String packageName;
    public final String url;
    private String zzOg;
    public final String zzOh;
    public final String zzOi;
    private String zzOj;

    public zzc(Intent intent) {
        this(null, null, null, null, null, null, null, intent);
    }

    public zzc(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this(str, str2, str3, str4, str5, str6, str7, null);
    }

    public zzc(String str, String str2, String str3, String str4, String str5, String str6, String str7, Intent intent) {
        this.zzOg = str;
        this.url = str2;
        this.mimeType = str3;
        this.packageName = str4;
        this.zzOh = str5;
        this.zzOi = str6;
        this.zzOj = str7;
        this.intent = intent;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzOg, false);
        zzd.zza(parcel, 3, this.url, false);
        zzd.zza(parcel, 4, this.mimeType, false);
        zzd.zza(parcel, 5, this.packageName, false);
        zzd.zza(parcel, 6, this.zzOh, false);
        zzd.zza(parcel, 7, this.zzOi, false);
        zzd.zza(parcel, 8, this.zzOj, false);
        zzd.zza(parcel, 9, this.intent, i, false);
        zzd.zzI(parcel, zze);
    }
}
