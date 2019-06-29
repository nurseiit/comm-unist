package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public class PlacePhotoMetadataResult extends zza implements Result {
    public static final Creator<PlacePhotoMetadataResult> CREATOR = new zzj();
    private final Status mStatus;
    private DataHolder zzbjF;
    private final PlacePhotoMetadataBuffer zzbjG;

    public PlacePhotoMetadataResult(Status status, DataHolder dataHolder) {
        this.mStatus = status;
        this.zzbjF = dataHolder;
        this.zzbjG = dataHolder == null ? null : new PlacePhotoMetadataBuffer(this.zzbjF);
    }

    public PlacePhotoMetadataBuffer getPhotoMetadata() {
        return this.zzbjG;
    }

    public Status getStatus() {
        return this.mStatus;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getStatus(), i, false);
        zzd.zza(parcel, 2, this.zzbjF, i, false);
        zzd.zzI(parcel, zze);
    }
}
