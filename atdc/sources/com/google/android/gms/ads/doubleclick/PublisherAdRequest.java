package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzla;
import com.google.android.gms.internal.zzlb;
import java.util.Date;
import java.util.List;
import java.util.Set;

public final class PublisherAdRequest {
    public static final String DEVICE_ID_EMULATOR = "B3EEABB8EE11C2BE770B684D95219ECB";
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    public static final int GENDER_FEMALE = 2;
    public static final int GENDER_MALE = 1;
    public static final int GENDER_UNKNOWN = 0;
    private final zzla zzrT;

    public static final class Builder {
        private final zzlb zzrU = new zzlb();

        public final Builder addCategoryExclusion(String str) {
            this.zzrU.zzJ(str);
            return this;
        }

        public final Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> cls, Bundle bundle) {
            this.zzrU.zzb(cls, bundle);
            return this;
        }

        public final Builder addCustomTargeting(String str, String str2) {
            this.zzrU.zzf(str, str2);
            return this;
        }

        public final Builder addCustomTargeting(String str, List<String> list) {
            if (list != null) {
                this.zzrU.zzf(str, TextUtils.join(",", list));
            }
            return this;
        }

        public final Builder addKeyword(String str) {
            this.zzrU.zzD(str);
            return this;
        }

        public final Builder addNetworkExtras(NetworkExtras networkExtras) {
            this.zzrU.zza(networkExtras);
            return this;
        }

        public final Builder addNetworkExtrasBundle(Class<? extends MediationAdapter> cls, Bundle bundle) {
            this.zzrU.zza(cls, bundle);
            return this;
        }

        public final Builder addTestDevice(String str) {
            this.zzrU.zzE(str);
            return this;
        }

        public final PublisherAdRequest build() {
            return new PublisherAdRequest(this, null);
        }

        public final Builder setBirthday(Date date) {
            this.zzrU.zza(date);
            return this;
        }

        public final Builder setContentUrl(String str) {
            zzbo.zzb((Object) str, (Object) "Content URL must be non-null.");
            zzbo.zzh(str, "Content URL must be non-empty.");
            zzbo.zzb(str.length() <= 512, "Content URL must not exceed %d in length.  Provided length was %d.", Integer.valueOf(512), Integer.valueOf(str.length()));
            this.zzrU.zzG(str);
            return this;
        }

        public final Builder setGender(int i) {
            this.zzrU.zzk(i);
            return this;
        }

        public final Builder setIsDesignedForFamilies(boolean z) {
            this.zzrU.zzi(z);
            return this;
        }

        public final Builder setLocation(Location location) {
            this.zzrU.zzb(location);
            return this;
        }

        @Deprecated
        public final Builder setManualImpressionsEnabled(boolean z) {
            this.zzrU.setManualImpressionsEnabled(z);
            return this;
        }

        public final Builder setPublisherProvidedId(String str) {
            this.zzrU.zzH(str);
            return this;
        }

        public final Builder setRequestAgent(String str) {
            this.zzrU.zzI(str);
            return this;
        }

        public final Builder tagForChildDirectedTreatment(boolean z) {
            this.zzrU.zzh(z);
            return this;
        }
    }

    private PublisherAdRequest(Builder builder) {
        this.zzrT = new zzla(builder.zzrU);
    }

    /* synthetic */ PublisherAdRequest(Builder builder, zza zza) {
        this(builder);
    }

    public static void updateCorrelator() {
    }

    public final Date getBirthday() {
        return this.zzrT.getBirthday();
    }

    public final String getContentUrl() {
        return this.zzrT.getContentUrl();
    }

    public final <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> cls) {
        return this.zzrT.getCustomEventExtrasBundle(cls);
    }

    public final Bundle getCustomTargeting() {
        return this.zzrT.getCustomTargeting();
    }

    public final int getGender() {
        return this.zzrT.getGender();
    }

    public final Set<String> getKeywords() {
        return this.zzrT.getKeywords();
    }

    public final Location getLocation() {
        return this.zzrT.getLocation();
    }

    public final boolean getManualImpressionsEnabled() {
        return this.zzrT.getManualImpressionsEnabled();
    }

    @Deprecated
    public final <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return this.zzrT.getNetworkExtras(cls);
    }

    public final <T extends MediationAdapter> Bundle getNetworkExtrasBundle(Class<T> cls) {
        return this.zzrT.getNetworkExtrasBundle(cls);
    }

    public final String getPublisherProvidedId() {
        return this.zzrT.getPublisherProvidedId();
    }

    public final boolean isTestDevice(Context context) {
        return this.zzrT.isTestDevice(context);
    }

    public final zzla zzab() {
        return this.zzrT;
    }
}
