package com.google.android.gms.ads.search;

import android.content.Context;
import android.graphics.Color;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.internal.zzla;
import com.google.android.gms.internal.zzlb;

public final class SearchAdRequest {
    public static final int BORDER_TYPE_DASHED = 1;
    public static final int BORDER_TYPE_DOTTED = 2;
    public static final int BORDER_TYPE_NONE = 0;
    public static final int BORDER_TYPE_SOLID = 3;
    public static final int CALL_BUTTON_COLOR_DARK = 2;
    public static final int CALL_BUTTON_COLOR_LIGHT = 0;
    public static final int CALL_BUTTON_COLOR_MEDIUM = 1;
    public static final String DEVICE_ID_EMULATOR = "B3EEABB8EE11C2BE770B684D95219ECB";
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    private final int zzHs;
    private final int zzacX;
    private final int zzacY;
    private final int zzacZ;
    private final int zzada;
    private final int zzadb;
    private final int zzadc;
    private final int zzadd;
    private final String zzade;
    private final int zzadf;
    private final String zzadg;
    private final int zzadh;
    private final int zzadi;
    private final zzla zzrT;
    private final String zzvi;

    public static final class Builder {
        private int zzHs;
        private int zzacX;
        private int zzacY;
        private int zzacZ;
        private int zzada;
        private int zzadb;
        private int zzadc = 0;
        private int zzadd;
        private String zzade;
        private int zzadf;
        private String zzadg;
        private int zzadh;
        private int zzadi;
        private final zzlb zzrU = new zzlb();
        private String zzvi;

        public final Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> cls, Bundle bundle) {
            this.zzrU.zzb(cls, bundle);
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

        public final SearchAdRequest build() {
            return new SearchAdRequest(this, null);
        }

        public final Builder setAnchorTextColor(int i) {
            this.zzacX = i;
            return this;
        }

        public final Builder setBackgroundColor(int i) {
            this.zzHs = i;
            this.zzacY = Color.argb(0, 0, 0, 0);
            this.zzacZ = Color.argb(0, 0, 0, 0);
            return this;
        }

        public final Builder setBackgroundGradient(int i, int i2) {
            this.zzHs = Color.argb(0, 0, 0, 0);
            this.zzacY = i2;
            this.zzacZ = i;
            return this;
        }

        public final Builder setBorderColor(int i) {
            this.zzada = i;
            return this;
        }

        public final Builder setBorderThickness(int i) {
            this.zzadb = i;
            return this;
        }

        public final Builder setBorderType(int i) {
            this.zzadc = i;
            return this;
        }

        public final Builder setCallButtonColor(int i) {
            this.zzadd = i;
            return this;
        }

        public final Builder setCustomChannels(String str) {
            this.zzade = str;
            return this;
        }

        public final Builder setDescriptionTextColor(int i) {
            this.zzadf = i;
            return this;
        }

        public final Builder setFontFace(String str) {
            this.zzadg = str;
            return this;
        }

        public final Builder setHeaderTextColor(int i) {
            this.zzadh = i;
            return this;
        }

        public final Builder setHeaderTextSize(int i) {
            this.zzadi = i;
            return this;
        }

        public final Builder setLocation(Location location) {
            this.zzrU.zzb(location);
            return this;
        }

        public final Builder setQuery(String str) {
            this.zzvi = str;
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

    private SearchAdRequest(Builder builder) {
        this.zzacX = builder.zzacX;
        this.zzHs = builder.zzHs;
        this.zzacY = builder.zzacY;
        this.zzacZ = builder.zzacZ;
        this.zzada = builder.zzada;
        this.zzadb = builder.zzadb;
        this.zzadc = builder.zzadc;
        this.zzadd = builder.zzadd;
        this.zzade = builder.zzade;
        this.zzadf = builder.zzadf;
        this.zzadg = builder.zzadg;
        this.zzadh = builder.zzadh;
        this.zzadi = builder.zzadi;
        this.zzvi = builder.zzvi;
        this.zzrT = new zzla(builder.zzrU, this);
    }

    /* synthetic */ SearchAdRequest(Builder builder, zzb zzb) {
        this(builder);
    }

    public final int getAnchorTextColor() {
        return this.zzacX;
    }

    public final int getBackgroundColor() {
        return this.zzHs;
    }

    public final int getBackgroundGradientBottom() {
        return this.zzacY;
    }

    public final int getBackgroundGradientTop() {
        return this.zzacZ;
    }

    public final int getBorderColor() {
        return this.zzada;
    }

    public final int getBorderThickness() {
        return this.zzadb;
    }

    public final int getBorderType() {
        return this.zzadc;
    }

    public final int getCallButtonColor() {
        return this.zzadd;
    }

    public final String getCustomChannels() {
        return this.zzade;
    }

    public final <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> cls) {
        return this.zzrT.getCustomEventExtrasBundle(cls);
    }

    public final int getDescriptionTextColor() {
        return this.zzadf;
    }

    public final String getFontFace() {
        return this.zzadg;
    }

    public final int getHeaderTextColor() {
        return this.zzadh;
    }

    public final int getHeaderTextSize() {
        return this.zzadi;
    }

    public final Location getLocation() {
        return this.zzrT.getLocation();
    }

    @Deprecated
    public final <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return this.zzrT.getNetworkExtras(cls);
    }

    public final <T extends MediationAdapter> Bundle getNetworkExtrasBundle(Class<T> cls) {
        return this.zzrT.getNetworkExtrasBundle(cls);
    }

    public final String getQuery() {
        return this.zzvi;
    }

    public final boolean isTestDevice(Context context) {
        return this.zzrT.isTestDevice(context);
    }

    /* Access modifiers changed, original: final */
    public final zzla zzab() {
        return this.zzrT;
    }
}
