package com.google.android.gms.ads;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.zzlx;
import com.google.android.gms.internal.zzzn;

@zzzn
public final class VideoOptions {
    private final boolean zzsf;
    private final boolean zzsg;

    public static final class Builder {
        private boolean zzsf = true;
        private boolean zzsg = false;

        public final VideoOptions build() {
            return new VideoOptions(this, null);
        }

        @KeepForSdk
        public final Builder setCustomControlsRequested(boolean z) {
            this.zzsg = z;
            return this;
        }

        public final Builder setStartMuted(boolean z) {
            this.zzsf = z;
            return this;
        }
    }

    private VideoOptions(Builder builder) {
        this.zzsf = builder.zzsf;
        this.zzsg = builder.zzsg;
    }

    /* synthetic */ VideoOptions(Builder builder, zzc zzc) {
        this(builder);
    }

    public VideoOptions(zzlx zzlx) {
        this.zzsf = zzlx.zzBJ;
        this.zzsg = zzlx.zzBK;
    }

    @KeepForSdk
    public final boolean getCustomControlsRequested() {
        return this.zzsg;
    }

    public final boolean getStartMuted() {
        return this.zzsf;
    }
}
