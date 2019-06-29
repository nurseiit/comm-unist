package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

@zzzn
public final class zzon extends zza {
    public static final Creator<zzon> CREATOR = new zzoo();
    public final int versionCode;
    public final boolean zzIn;
    public final int zzIo;
    public final boolean zzIp;
    public final int zzIq;
    @Nullable
    public final zzlx zzIr;

    public zzon(int i, boolean z, int i2, boolean z2, int i3, zzlx zzlx) {
        this.versionCode = i;
        this.zzIn = z;
        this.zzIo = i2;
        this.zzIp = z2;
        this.zzIq = i3;
        this.zzIr = zzlx;
    }

    public zzon(NativeAdOptions nativeAdOptions) {
        boolean shouldReturnUrlsForImageAssets = nativeAdOptions.shouldReturnUrlsForImageAssets();
        int imageOrientation = nativeAdOptions.getImageOrientation();
        boolean shouldRequestMultipleImages = nativeAdOptions.shouldRequestMultipleImages();
        int adChoicesPlacement = nativeAdOptions.getAdChoicesPlacement();
        zzlx zzlx = nativeAdOptions.getVideoOptions() != null ? new zzlx(nativeAdOptions.getVideoOptions()) : null;
        this(3, shouldReturnUrlsForImageAssets, imageOrientation, shouldRequestMultipleImages, adChoicesPlacement, zzlx);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.versionCode);
        zzd.zza(parcel, 2, this.zzIn);
        zzd.zzc(parcel, 3, this.zzIo);
        zzd.zza(parcel, 4, this.zzIp);
        zzd.zzc(parcel, 5, this.zzIq);
        zzd.zza(parcel, 6, this.zzIr, i, false);
        zzd.zzI(parcel, zze);
    }
}
