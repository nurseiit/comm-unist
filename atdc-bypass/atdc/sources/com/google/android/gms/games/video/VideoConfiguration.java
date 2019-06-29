package com.google.android.gms.games.video;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;

public final class VideoConfiguration extends zza {
    public static final int CAPTURE_MODE_FILE = 0;
    public static final int CAPTURE_MODE_STREAM = 1;
    public static final int CAPTURE_MODE_UNKNOWN = -1;
    public static final Creator<VideoConfiguration> CREATOR = new zzb();
    public static final int NUM_CAPTURE_MODE = 2;
    public static final int NUM_QUALITY_LEVEL = 4;
    public static final int QUALITY_LEVEL_FULLHD = 3;
    public static final int QUALITY_LEVEL_HD = 1;
    public static final int QUALITY_LEVEL_SD = 0;
    public static final int QUALITY_LEVEL_UNKNOWN = -1;
    public static final int QUALITY_LEVEL_XHD = 2;
    private final int zzbfb;
    private final int zzbfi;
    private final String zzbfj;
    private final String zzbfk;
    private final String zzbfl;
    private final String zzbfm;
    private final boolean zzbfn;

    public static final class Builder {
        private int zzbfb;
        private int zzbfi;
        private String zzbfj = null;
        private String zzbfk = null;
        private String zzbfl = null;
        private String zzbfm = null;
        private boolean zzbfn = true;

        public Builder(int i, int i2) {
            this.zzbfi = i;
            this.zzbfb = i2;
        }

        public final VideoConfiguration build() {
            return new VideoConfiguration(this.zzbfi, this.zzbfb, null, null, null, null, this.zzbfn);
        }

        public final Builder setCaptureMode(int i) {
            this.zzbfb = i;
            return this;
        }

        public final Builder setQualityLevel(int i) {
            this.zzbfi = i;
            return this;
        }
    }

    public VideoConfiguration(int i, int i2, String str, String str2, String str3, String str4, boolean z) {
        zzbo.zzaf(isValidQualityLevel(i, false));
        zzbo.zzaf(isValidCaptureMode(i2, false));
        this.zzbfi = i;
        this.zzbfb = i2;
        this.zzbfn = z;
        boolean z2 = true;
        if (i2 == 1) {
            this.zzbfk = str2;
            this.zzbfj = str;
            this.zzbfl = str3;
            this.zzbfm = str4;
            return;
        }
        zzbo.zzb(str2 == null, (Object) "Stream key should be null when not streaming");
        zzbo.zzb(str == null, (Object) "Stream url should be null when not streaming");
        zzbo.zzb(str3 == null, (Object) "Stream title should be null when not streaming");
        if (str4 != null) {
            z2 = false;
        }
        zzbo.zzb(z2, (Object) "Stream description should be null when not streaming");
        this.zzbfk = null;
        this.zzbfj = null;
        this.zzbfl = null;
        this.zzbfm = null;
    }

    public static boolean isValidCaptureMode(int i, boolean z) {
        switch (i) {
            case -1:
                return z;
            case 0:
            case 1:
                return true;
            default:
                return false;
        }
    }

    public static boolean isValidQualityLevel(int i, boolean z) {
        switch (i) {
            case -1:
                return z;
            case 0:
            case 1:
            case 2:
            case 3:
                return true;
            default:
                return false;
        }
    }

    public final int getCaptureMode() {
        return this.zzbfb;
    }

    public final int getQualityLevel() {
        return this.zzbfi;
    }

    public final String getStreamUrl() {
        return this.zzbfj;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, getQualityLevel());
        zzd.zzc(parcel, 2, getCaptureMode());
        zzd.zza(parcel, 3, getStreamUrl(), false);
        zzd.zza(parcel, 4, this.zzbfk, false);
        zzd.zza(parcel, 5, this.zzbfl, false);
        zzd.zza(parcel, 6, this.zzbfm, false);
        zzd.zza(parcel, 7, this.zzbfn);
        zzd.zzI(parcel, i);
    }
}
