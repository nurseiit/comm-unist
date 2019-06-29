package com.google.android.gms.location.places;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;

public class PlacePhotoResult extends zza implements Result {
    public static final Creator<PlacePhotoResult> CREATOR = new zzk();
    private final Bitmap mBitmap;
    private final Status mStatus;
    private BitmapTeleporter zzbjH;

    public PlacePhotoResult(Status status, BitmapTeleporter bitmapTeleporter) {
        this.mStatus = status;
        this.zzbjH = bitmapTeleporter;
        this.mBitmap = this.zzbjH != null ? bitmapTeleporter.zzqO() : null;
    }

    public Bitmap getBitmap() {
        return this.mBitmap;
    }

    public Status getStatus() {
        return this.mStatus;
    }

    public String toString() {
        return zzbe.zzt(this).zzg("status", this.mStatus).zzg("bitmap", this.mBitmap).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getStatus(), i, false);
        zzd.zza(parcel, 2, this.zzbjH, i, false);
        zzd.zzI(parcel, zze);
    }
}
