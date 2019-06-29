package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzc implements Creator<SnapshotEntity> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        SnapshotMetadata snapshotMetadata = null;
        zza zza = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 1) {
                snapshotMetadata = (SnapshotMetadataEntity) zzb.zza(parcel, readInt, SnapshotMetadataEntity.CREATOR);
            } else if (i != 3) {
                zzb.zzb(parcel, readInt);
            } else {
                zza = (zza) zzb.zza(parcel, readInt, zza.CREATOR);
            }
        }
        zzb.zzF(parcel, zzd);
        return new SnapshotEntity(snapshotMetadata, zza);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new SnapshotEntity[i];
    }
}
