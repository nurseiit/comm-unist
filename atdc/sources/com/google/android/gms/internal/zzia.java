package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.plus.PlusShare;
import java.util.List;

@zzzn
public final class zzia extends zza {
    public static final Creator<zzia> CREATOR = new zzib();
    @Nullable
    public final String url;
    private long zzzu;
    private String zzzv;
    private String zzzw;
    private String zzzx;
    private Bundle zzzy;
    private boolean zzzz;

    zzia(@Nullable String str, long j, String str2, String str3, String str4, Bundle bundle, boolean z) {
        this.url = str;
        this.zzzu = j;
        if (str2 == null) {
            str2 = "";
        }
        this.zzzv = str2;
        if (str3 == null) {
            str3 = "";
        }
        this.zzzw = str3;
        if (str4 == null) {
            str4 = "";
        }
        this.zzzx = str4;
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.zzzy = bundle;
        this.zzzz = z;
    }

    @Nullable
    public static zzia zzB(String str) {
        return zze(Uri.parse(str));
    }

    @Nullable
    public static zzia zze(Uri uri) {
        try {
            if (!"gcache".equals(uri.getScheme())) {
                return null;
            }
            List pathSegments = uri.getPathSegments();
            if (pathSegments.size() != 2) {
                int size = pathSegments.size();
                StringBuilder stringBuilder = new StringBuilder(62);
                stringBuilder.append("Expected 2 path parts for namespace and id, found :");
                stringBuilder.append(size);
                zzajc.zzaT(stringBuilder.toString());
                return null;
            }
            String str = (String) pathSegments.get(0);
            String str2 = (String) pathSegments.get(1);
            String host = uri.getHost();
            String queryParameter = uri.getQueryParameter(PlusShare.KEY_CALL_TO_ACTION_URL);
            boolean equals = "1".equals(uri.getQueryParameter("read_only"));
            String queryParameter2 = uri.getQueryParameter("expiration");
            long parseLong = queryParameter2 == null ? 0 : Long.parseLong(queryParameter2);
            Bundle bundle = new Bundle();
            for (String str3 : zzbs.zzbB().zzh(uri)) {
                if (str3.startsWith("tag.")) {
                    bundle.putString(str3.substring(4), uri.getQueryParameter(str3));
                }
            }
            return new zzia(queryParameter, parseLong, host, str, str2, bundle, equals);
        } catch (NullPointerException | NumberFormatException e) {
            zzajc.zzc("Unable to parse Uri into cache offering.", e);
            return null;
        }
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.url, false);
        zzd.zza(parcel, 3, this.zzzu);
        zzd.zza(parcel, 4, this.zzzv, false);
        zzd.zza(parcel, 5, this.zzzw, false);
        zzd.zza(parcel, 6, this.zzzx, false);
        zzd.zza(parcel, 7, this.zzzy, false);
        zzd.zza(parcel, 8, this.zzzz);
        zzd.zzI(parcel, i);
    }
}
