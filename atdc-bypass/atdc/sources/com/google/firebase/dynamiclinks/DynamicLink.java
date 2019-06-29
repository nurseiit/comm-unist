package com.google.firebase.dynamiclinks;

import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.google.android.gms.internal.zn;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;

public final class DynamicLink {
    private final Bundle zzcjO;

    public static final class AndroidParameters {
        final Bundle zzbPK;

        public static final class Builder {
            private final Bundle zzbPK;

            public Builder() {
                if (FirebaseApp.getInstance() == null) {
                    throw new IllegalStateException("FirebaseApp not initialized.");
                }
                this.zzbPK = new Bundle();
                this.zzbPK.putString("apn", FirebaseApp.getInstance().getApplicationContext().getPackageName());
            }

            public Builder(@NonNull String str) {
                this.zzbPK = new Bundle();
                this.zzbPK.putString("apn", str);
            }

            public final AndroidParameters build() {
                return new AndroidParameters(this.zzbPK, null);
            }

            public final Builder setFallbackUrl(Uri uri) {
                this.zzbPK.putParcelable("afl", uri);
                return this;
            }

            public final Builder setMinimumVersion(int i) {
                this.zzbPK.putInt("amv", i);
                return this;
            }
        }

        private AndroidParameters(Bundle bundle) {
            this.zzbPK = bundle;
        }

        /* synthetic */ AndroidParameters(Bundle bundle, zza zza) {
            this(bundle);
        }
    }

    public static final class Builder {
        private final Bundle zzcjO = new Bundle();
        private final zn zzcjP;
        private final Bundle zzcjQ;

        public Builder(zn znVar) {
            this.zzcjP = znVar;
            if (FirebaseApp.getInstance() != null) {
                this.zzcjO.putString("apiKey", FirebaseApp.getInstance().getOptions().getApiKey());
            }
            this.zzcjQ = new Bundle();
            this.zzcjO.putBundle("parameters", this.zzcjQ);
        }

        private final void zzJI() {
            if (this.zzcjO.getString("apiKey") == null) {
                throw new IllegalArgumentException("Missing API key. Set with setApiKey().");
            }
        }

        public final DynamicLink buildDynamicLink() {
            zn.zzE(this.zzcjO);
            return new DynamicLink(this.zzcjO);
        }

        public final Task<ShortDynamicLink> buildShortDynamicLink() {
            zzJI();
            return this.zzcjP.zzD(this.zzcjO);
        }

        public final Task<ShortDynamicLink> buildShortDynamicLink(int i) {
            zzJI();
            this.zzcjO.putInt("suffix", i);
            return this.zzcjP.zzD(this.zzcjO);
        }

        public final Builder setAndroidParameters(AndroidParameters androidParameters) {
            this.zzcjQ.putAll(androidParameters.zzbPK);
            return this;
        }

        public final Builder setDynamicLinkDomain(@NonNull String str) {
            this.zzcjO.putString("domain", str);
            return this;
        }

        public final Builder setGoogleAnalyticsParameters(GoogleAnalyticsParameters googleAnalyticsParameters) {
            this.zzcjQ.putAll(googleAnalyticsParameters.zzbPK);
            return this;
        }

        public final Builder setIosParameters(IosParameters iosParameters) {
            this.zzcjQ.putAll(iosParameters.zzbPK);
            return this;
        }

        public final Builder setItunesConnectAnalyticsParameters(ItunesConnectAnalyticsParameters itunesConnectAnalyticsParameters) {
            this.zzcjQ.putAll(itunesConnectAnalyticsParameters.zzbPK);
            return this;
        }

        public final Builder setLink(@NonNull Uri uri) {
            this.zzcjQ.putParcelable("link", uri);
            return this;
        }

        public final Builder setLongLink(@NonNull Uri uri) {
            this.zzcjO.putParcelable("dynamicLink", uri);
            return this;
        }

        public final Builder setSocialMetaTagParameters(SocialMetaTagParameters socialMetaTagParameters) {
            this.zzcjQ.putAll(socialMetaTagParameters.zzbPK);
            return this;
        }
    }

    public static final class GoogleAnalyticsParameters {
        Bundle zzbPK;

        public static final class Builder {
            private final Bundle zzbPK = new Bundle();

            public Builder(String str, String str2, String str3) {
                this.zzbPK.putString("utm_source", str);
                this.zzbPK.putString("utm_medium", str2);
                this.zzbPK.putString("utm_campaign", str3);
            }

            public final GoogleAnalyticsParameters build() {
                return new GoogleAnalyticsParameters(this.zzbPK, null);
            }

            public final Builder setCampaign(String str) {
                this.zzbPK.putString("utm_campaign", str);
                return this;
            }

            public final Builder setContent(String str) {
                this.zzbPK.putString("utm_content", str);
                return this;
            }

            public final Builder setMedium(String str) {
                this.zzbPK.putString("utm_medium", str);
                return this;
            }

            public final Builder setSource(String str) {
                this.zzbPK.putString("utm_source", str);
                return this;
            }

            public final Builder setTerm(String str) {
                this.zzbPK.putString("utm_term", str);
                return this;
            }
        }

        private GoogleAnalyticsParameters(Bundle bundle) {
            this.zzbPK = bundle;
        }

        /* synthetic */ GoogleAnalyticsParameters(Bundle bundle, zza zza) {
            this(bundle);
        }
    }

    public static final class IosParameters {
        final Bundle zzbPK;

        public static final class Builder {
            private final Bundle zzbPK = new Bundle();

            public Builder(@NonNull String str) {
                this.zzbPK.putString("ibi", str);
            }

            public final IosParameters build() {
                return new IosParameters(this.zzbPK, null);
            }

            public final Builder setAppStoreId(String str) {
                this.zzbPK.putString("isi", str);
                return this;
            }

            public final Builder setCustomScheme(String str) {
                this.zzbPK.putString("ius", str);
                return this;
            }

            public final Builder setFallbackUrl(Uri uri) {
                this.zzbPK.putParcelable("ifl", uri);
                return this;
            }

            public final Builder setIpadBundleId(String str) {
                this.zzbPK.putString("ipbi", str);
                return this;
            }

            public final Builder setIpadFallbackUrl(Uri uri) {
                this.zzbPK.putParcelable("ipfl", uri);
                return this;
            }

            public final Builder setMinimumVersion(String str) {
                this.zzbPK.putString("imv", str);
                return this;
            }
        }

        private IosParameters(Bundle bundle) {
            this.zzbPK = bundle;
        }

        /* synthetic */ IosParameters(Bundle bundle, zza zza) {
            this(bundle);
        }
    }

    public static final class ItunesConnectAnalyticsParameters {
        final Bundle zzbPK;

        public static final class Builder {
            private final Bundle zzbPK = new Bundle();

            public final ItunesConnectAnalyticsParameters build() {
                return new ItunesConnectAnalyticsParameters(this.zzbPK, null);
            }

            public final Builder setAffiliateToken(String str) {
                this.zzbPK.putString("at", str);
                return this;
            }

            public final Builder setCampaignToken(String str) {
                this.zzbPK.putString("ct", str);
                return this;
            }

            public final Builder setProviderToken(String str) {
                this.zzbPK.putString("pt", str);
                return this;
            }
        }

        private ItunesConnectAnalyticsParameters(Bundle bundle) {
            this.zzbPK = bundle;
        }

        /* synthetic */ ItunesConnectAnalyticsParameters(Bundle bundle, zza zza) {
            this(bundle);
        }
    }

    public static final class SocialMetaTagParameters {
        final Bundle zzbPK;

        public static final class Builder {
            private final Bundle zzbPK = new Bundle();

            public final SocialMetaTagParameters build() {
                return new SocialMetaTagParameters(this.zzbPK, null);
            }

            public final Builder setDescription(String str) {
                this.zzbPK.putString("sd", str);
                return this;
            }

            public final Builder setImageUrl(Uri uri) {
                this.zzbPK.putParcelable("si", uri);
                return this;
            }

            public final Builder setTitle(String str) {
                this.zzbPK.putString("st", str);
                return this;
            }
        }

        private SocialMetaTagParameters(Bundle bundle) {
            this.zzbPK = bundle;
        }

        /* synthetic */ SocialMetaTagParameters(Bundle bundle, zza zza) {
            this(bundle);
        }
    }

    DynamicLink(Bundle bundle) {
        this.zzcjO = bundle;
    }

    public final Uri getUri() {
        Bundle bundle = this.zzcjO;
        zn.zzE(bundle);
        Uri uri = (Uri) bundle.getParcelable("dynamicLink");
        if (uri != null) {
            return uri;
        }
        android.net.Uri.Builder builder = new android.net.Uri.Builder();
        builder.scheme("https");
        builder.authority(bundle.getString("domain"));
        bundle = bundle.getBundle("parameters");
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null) {
                builder.appendQueryParameter(str, obj.toString());
            }
        }
        return builder.build();
    }
}
