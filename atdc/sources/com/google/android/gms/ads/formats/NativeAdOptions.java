package com.google.android.gms.ads.formats;

import android.support.annotation.Nullable;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.internal.zzzn;

@zzzn
public final class NativeAdOptions {
    public static final int ADCHOICES_BOTTOM_LEFT = 3;
    public static final int ADCHOICES_BOTTOM_RIGHT = 2;
    public static final int ADCHOICES_TOP_LEFT = 0;
    public static final int ADCHOICES_TOP_RIGHT = 1;
    public static final int ORIENTATION_ANY = 0;
    public static final int ORIENTATION_LANDSCAPE = 2;
    public static final int ORIENTATION_PORTRAIT = 1;
    private final boolean zzsn;
    private final int zzso;
    private final boolean zzsp;
    private final int zzsq;
    private final VideoOptions zzsr;

    public @interface AdChoicesPlacement {
    }

    public static final class Builder {
        private boolean zzsn = false;
        private int zzso = -1;
        private boolean zzsp = false;
        private int zzsq = 1;
        private VideoOptions zzsr;

        public final NativeAdOptions build() {
            return new NativeAdOptions(this, null);
        }

        public final Builder setAdChoicesPlacement(@AdChoicesPlacement int i) {
            this.zzsq = i;
            return this;
        }

        public final Builder setImageOrientation(int i) {
            this.zzso = i;
            return this;
        }

        public final Builder setRequestMultipleImages(boolean z) {
            this.zzsp = z;
            return this;
        }

        public final Builder setReturnUrlsForImageAssets(boolean z) {
            this.zzsn = z;
            return this;
        }

        public final Builder setVideoOptions(VideoOptions videoOptions) {
            this.zzsr = videoOptions;
            return this;
        }
    }

    private NativeAdOptions(Builder builder) {
        this.zzsn = builder.zzsn;
        this.zzso = builder.zzso;
        this.zzsp = builder.zzsp;
        this.zzsq = builder.zzsq;
        this.zzsr = builder.zzsr;
    }

    /* synthetic */ NativeAdOptions(Builder builder, zza zza) {
        this(builder);
    }

    public final int getAdChoicesPlacement() {
        return this.zzsq;
    }

    public final int getImageOrientation() {
        return this.zzso;
    }

    @Nullable
    public final VideoOptions getVideoOptions() {
        return this.zzsr;
    }

    public final boolean shouldRequestMultipleImages() {
        return this.zzsp;
    }

    public final boolean shouldReturnUrlsForImageAssets() {
        return this.zzsn;
    }
}
