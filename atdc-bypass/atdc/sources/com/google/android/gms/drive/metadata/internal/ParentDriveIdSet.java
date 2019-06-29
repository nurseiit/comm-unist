package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.DriveId;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class ParentDriveIdSet extends zza implements ReflectedParcelable {
    public static final Creator<ParentDriveIdSet> CREATOR = new zzn();
    final List<zzq> zzaPO;

    public ParentDriveIdSet() {
        this(new ArrayList());
    }

    ParentDriveIdSet(List<zzq> list) {
        this.zzaPO = list;
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.zzaPO, false);
        zzd.zzI(parcel, i);
    }

    public final Set<DriveId> zzB(long j) {
        HashSet hashSet = new HashSet();
        for (zzq zzq : this.zzaPO) {
            hashSet.add(new DriveId(zzq.zzaMh, zzq.zzaMi, j, zzq.zzaMj));
        }
        return hashSet;
    }
}
