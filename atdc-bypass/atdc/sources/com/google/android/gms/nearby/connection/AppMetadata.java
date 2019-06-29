package com.google.android.gms.nearby.connection;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import java.util.List;

@Deprecated
public final class AppMetadata extends zza {
    public static final Creator<AppMetadata> CREATOR = new zzc();
    private final List<AppIdentifier> zzbwn;

    public AppMetadata(List<AppIdentifier> list) {
        this.zzbwn = (List) zzbo.zzb((Object) list, (Object) "Must specify application identifiers");
        String str = "Application identifiers cannot be empty";
        if (list.size() == 0) {
            throw new IllegalArgumentException(String.valueOf(str));
        }
    }

    public final List<AppIdentifier> getAppIdentifiers() {
        return this.zzbwn;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, getAppIdentifiers(), false);
        zzd.zzI(parcel, i);
    }
}
