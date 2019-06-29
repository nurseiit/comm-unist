package com.google.android.gms.cast.framework;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class CastOptions extends zza {
    public static final Creator<CastOptions> CREATOR = new zzb();
    private final LaunchOptions zzapW;
    private final String zzarS;
    private final List<String> zzarT;
    private final boolean zzarU;
    private final boolean zzarV;
    private final CastMediaOptions zzarW;
    private final boolean zzarX;
    private final double zzarY;

    public static final class Builder {
        private LaunchOptions zzapW = new LaunchOptions();
        private String zzarS;
        private List<String> zzarT = new ArrayList();
        private boolean zzarU;
        private boolean zzarV = true;
        private CastMediaOptions zzarW = new com.google.android.gms.cast.framework.media.CastMediaOptions.Builder().build();
        private boolean zzarX = true;
        private double zzarY = 0.05000000074505806d;

        public final CastOptions build() {
            return new CastOptions(this.zzarS, this.zzarT, this.zzarU, this.zzapW, this.zzarV, this.zzarW, this.zzarX, this.zzarY);
        }

        public final Builder setCastMediaOptions(CastMediaOptions castMediaOptions) {
            this.zzarW = castMediaOptions;
            return this;
        }

        public final Builder setEnableReconnectionService(boolean z) {
            this.zzarX = z;
            return this;
        }

        public final Builder setLaunchOptions(LaunchOptions launchOptions) {
            this.zzapW = launchOptions;
            return this;
        }

        public final Builder setReceiverApplicationId(String str) {
            this.zzarS = str;
            return this;
        }

        public final Builder setResumeSavedSession(boolean z) {
            this.zzarV = z;
            return this;
        }

        public final Builder setStopReceiverApplicationWhenEndingSession(boolean z) {
            this.zzarU = z;
            return this;
        }

        public final Builder setSupportedNamespaces(List<String> list) {
            this.zzarT = list;
            return this;
        }

        public final Builder setVolumeDeltaBeforeIceCreamSandwich(double d) throws IllegalArgumentException {
            if (d <= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE || d > 0.5d) {
                throw new IllegalArgumentException("volumeDelta must be greater than 0 and less or equal to 0.5");
            }
            this.zzarY = d;
            return this;
        }
    }

    CastOptions(String str, List<String> list, boolean z, LaunchOptions launchOptions, boolean z2, CastMediaOptions castMediaOptions, boolean z3, double d) {
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        this.zzarS = str;
        int size = list == null ? 0 : list.size();
        this.zzarT = new ArrayList(size);
        if (size > 0) {
            this.zzarT.addAll(list);
        }
        this.zzarU = z;
        if (launchOptions == null) {
            launchOptions = new LaunchOptions();
        }
        this.zzapW = launchOptions;
        this.zzarV = z2;
        this.zzarW = castMediaOptions;
        this.zzarX = z3;
        this.zzarY = d;
    }

    public CastMediaOptions getCastMediaOptions() {
        return this.zzarW;
    }

    public boolean getEnableReconnectionService() {
        return this.zzarX;
    }

    public LaunchOptions getLaunchOptions() {
        return this.zzapW;
    }

    public String getReceiverApplicationId() {
        return this.zzarS;
    }

    public boolean getResumeSavedSession() {
        return this.zzarV;
    }

    public boolean getStopReceiverApplicationWhenEndingSession() {
        return this.zzarU;
    }

    public List<String> getSupportedNamespaces() {
        return Collections.unmodifiableList(this.zzarT);
    }

    public double getVolumeDeltaBeforeIceCreamSandwich() {
        return this.zzarY;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, getReceiverApplicationId(), false);
        zzd.zzb(parcel, 3, getSupportedNamespaces(), false);
        zzd.zza(parcel, 4, getStopReceiverApplicationWhenEndingSession());
        zzd.zza(parcel, 5, getLaunchOptions(), i, false);
        zzd.zza(parcel, 6, getResumeSavedSession());
        zzd.zza(parcel, 7, getCastMediaOptions(), i, false);
        zzd.zza(parcel, 8, getEnableReconnectionService());
        zzd.zza(parcel, 9, getVolumeDeltaBeforeIceCreamSandwich());
        zzd.zzI(parcel, zze);
    }
}
