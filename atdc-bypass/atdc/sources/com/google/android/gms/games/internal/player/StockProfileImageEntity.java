package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.games.internal.zzc;
import java.util.Arrays;

public final class StockProfileImageEntity extends zzc implements StockProfileImage {
    public static final Creator<StockProfileImageEntity> CREATOR = new zzf();
    private final String zzbcH;
    private final Uri zzbcI;

    public StockProfileImageEntity(StockProfileImage stockProfileImage) {
        this(stockProfileImage.getImageUrl(), stockProfileImage.zzvl());
    }

    public StockProfileImageEntity(String str, Uri uri) {
        this.zzbcH = str;
        this.zzbcI = uri;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof StockProfileImage)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        StockProfileImage stockProfileImage = (StockProfileImage) obj;
        return zzbe.equal(this.zzbcH, stockProfileImage.getImageUrl()) && zzbe.equal(this.zzbcI, stockProfileImage.zzvl());
    }

    public final /* bridge */ /* synthetic */ Object freeze() {
        return this;
    }

    public final String getImageUrl() {
        return this.zzbcH;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbcH, this.zzbcI});
    }

    public final boolean isDataValid() {
        return true;
    }

    public final String toString() {
        return zzbe.zzt(this).zzg("ImageId", this.zzbcH).zzg("ImageUri", this.zzbcI).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getImageUrl(), false);
        zzd.zza(parcel, 2, this.zzbcI, i, false);
        zzd.zzI(parcel, zze);
    }

    public final Uri zzvl() {
        return this.zzbcI;
    }
}
