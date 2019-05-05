package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.firebase.dynamiclinks.ShortDynamicLink;
import java.util.List;

public final class zx extends zza implements ShortDynamicLink {
    public static final Creator<zx> CREATOR = new zz();
    private final Uri zzcjZ;
    private final Uri zzcka;
    private final List<zy> zzckb;

    public zx(Uri uri, Uri uri2, List<zy> list) {
        this.zzcjZ = uri;
        this.zzcka = uri2;
        this.zzckb = list;
    }

    public final Uri getPreviewLink() {
        return this.zzcka;
    }

    public final Uri getShortLink() {
        return this.zzcjZ;
    }

    public final List<zy> getWarnings() {
        return this.zzckb;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getShortLink(), i, false);
        zzd.zza(parcel, 2, getPreviewLink(), i, false);
        zzd.zzc(parcel, 3, getWarnings(), false);
        zzd.zzI(parcel, zze);
    }
}
