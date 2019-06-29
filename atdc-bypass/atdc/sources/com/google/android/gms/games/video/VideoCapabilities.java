package com.google.android.gms.games.video;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.games.internal.zzc;
import java.util.Arrays;

public final class VideoCapabilities extends zzc {
    public static final Creator<VideoCapabilities> CREATOR = new zza();
    private final boolean zzbfd;
    private final boolean zzbfe;
    private final boolean zzbff;
    private final boolean[] zzbfg;
    private final boolean[] zzbfh;

    public VideoCapabilities(boolean z, boolean z2, boolean z3, boolean[] zArr, boolean[] zArr2) {
        this.zzbfd = z;
        this.zzbfe = z2;
        this.zzbff = z3;
        this.zzbfg = zArr;
        this.zzbfh = zArr2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof VideoCapabilities)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        VideoCapabilities videoCapabilities = (VideoCapabilities) obj;
        return zzbe.equal(videoCapabilities.getSupportedCaptureModes(), getSupportedCaptureModes()) && zzbe.equal(videoCapabilities.getSupportedQualityLevels(), getSupportedQualityLevels()) && zzbe.equal(Boolean.valueOf(videoCapabilities.isCameraSupported()), Boolean.valueOf(isCameraSupported())) && zzbe.equal(Boolean.valueOf(videoCapabilities.isMicSupported()), Boolean.valueOf(isMicSupported())) && zzbe.equal(Boolean.valueOf(videoCapabilities.isWriteStorageSupported()), Boolean.valueOf(isWriteStorageSupported()));
    }

    public final boolean[] getSupportedCaptureModes() {
        return this.zzbfg;
    }

    public final boolean[] getSupportedQualityLevels() {
        return this.zzbfh;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{getSupportedCaptureModes(), getSupportedQualityLevels(), Boolean.valueOf(isCameraSupported()), Boolean.valueOf(isMicSupported()), Boolean.valueOf(isWriteStorageSupported())});
    }

    public final boolean isCameraSupported() {
        return this.zzbfd;
    }

    public final boolean isFullySupported(int i, int i2) {
        return this.zzbfd && this.zzbfe && this.zzbff && supportsCaptureMode(i) && supportsQualityLevel(i2);
    }

    public final boolean isMicSupported() {
        return this.zzbfe;
    }

    public final boolean isWriteStorageSupported() {
        return this.zzbff;
    }

    public final boolean supportsCaptureMode(int i) {
        zzbo.zzae(VideoConfiguration.isValidCaptureMode(i, false));
        return this.zzbfg[i];
    }

    public final boolean supportsQualityLevel(int i) {
        zzbo.zzae(VideoConfiguration.isValidQualityLevel(i, false));
        return this.zzbfh[i];
    }

    public final String toString() {
        return zzbe.zzt(this).zzg("SupportedCaptureModes", getSupportedCaptureModes()).zzg("SupportedQualityLevels", getSupportedQualityLevels()).zzg("CameraSupported", Boolean.valueOf(isCameraSupported())).zzg("MicSupported", Boolean.valueOf(isMicSupported())).zzg("StorageWriteSupported", Boolean.valueOf(isWriteStorageSupported())).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, isCameraSupported());
        zzd.zza(parcel, 2, isMicSupported());
        zzd.zza(parcel, 3, isWriteStorageSupported());
        zzd.zza(parcel, 4, getSupportedCaptureModes(), false);
        zzd.zza(parcel, 5, getSupportedQualityLevels(), false);
        zzd.zzI(parcel, i);
    }
}
