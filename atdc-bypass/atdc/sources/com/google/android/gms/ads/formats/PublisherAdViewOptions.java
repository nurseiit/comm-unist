package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.internal.zzix;
import com.google.android.gms.internal.zzke;
import com.google.android.gms.internal.zzkf;
import com.google.android.gms.internal.zzzn;

@zzzn
public final class PublisherAdViewOptions extends zza {
    public static final Creator<PublisherAdViewOptions> CREATOR = new zzc();
    private final boolean zzsu;
    @Nullable
    private final zzke zzsv;
    @Nullable
    private AppEventListener zzsw;

    public static final class Builder {
        private boolean zzsu = false;
        private AppEventListener zzsw;

        public final PublisherAdViewOptions build() {
            return new PublisherAdViewOptions(this, null);
        }

        public final Builder setAppEventListener(AppEventListener appEventListener) {
            this.zzsw = appEventListener;
            return this;
        }

        public final Builder setManualImpressionsEnabled(boolean z) {
            this.zzsu = z;
            return this;
        }
    }

    private PublisherAdViewOptions(Builder builder) {
        this.zzsu = builder.zzsu;
        this.zzsw = builder.zzsw;
        this.zzsv = this.zzsw != null ? new zzix(this.zzsw) : null;
    }

    PublisherAdViewOptions(boolean z, @Nullable IBinder iBinder) {
        this.zzsu = z;
        this.zzsv = iBinder != null ? zzkf.zzf(iBinder) : null;
    }

    @Nullable
    public final AppEventListener getAppEventListener() {
        return this.zzsw;
    }

    public final boolean getManualImpressionsEnabled() {
        return this.zzsu;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, getManualImpressionsEnabled());
        zzd.zza(parcel, 2, this.zzsv == null ? null : this.zzsv.asBinder(), false);
        zzd.zzI(parcel, i);
    }

    @Nullable
    public final zzke zzai() {
        return this.zzsv;
    }
}
