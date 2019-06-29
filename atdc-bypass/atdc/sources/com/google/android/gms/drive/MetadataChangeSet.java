package com.google.android.gms.drive;

import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.drive.metadata.CustomPropertyKey;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties;
import com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties.zza;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.internal.zzbrc;
import com.google.android.gms.internal.zzbrp;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.util.Collections;
import java.util.Date;
import java.util.Map;

public final class MetadataChangeSet {
    public static final int CUSTOM_PROPERTY_SIZE_LIMIT_BYTES = 124;
    public static final int INDEXABLE_TEXT_SIZE_LIMIT_BYTES = 131072;
    public static final int MAX_PRIVATE_PROPERTIES_PER_RESOURCE_PER_APP = 30;
    public static final int MAX_PUBLIC_PROPERTIES_PER_RESOURCE = 30;
    public static final int MAX_TOTAL_PROPERTIES_PER_RESOURCE = 100;
    public static final MetadataChangeSet zzaMz = new MetadataChangeSet(MetadataBundle.zztp());
    private final MetadataBundle zzaMA;

    public static class Builder {
        private final MetadataBundle zzaMA = MetadataBundle.zztp();
        private zza zzaMB;

        private static int zzcP(String str) {
            return str == null ? 0 : str.getBytes().length;
        }

        private static void zzi(String str, int i, int i2) {
            zzbo.zzb(i2 <= i, String.format("%s must be no more than %d bytes, but is %d bytes.", new Object[]{str, Integer.valueOf(i), Integer.valueOf(i2)}));
        }

        private final zza zzsX() {
            if (this.zzaMB == null) {
                this.zzaMB = new zza();
            }
            return this.zzaMB;
        }

        public MetadataChangeSet build() {
            if (this.zzaMB != null) {
                this.zzaMA.zzc(zzbrc.zzaPS, this.zzaMB.zztm());
            }
            return new MetadataChangeSet(this.zzaMA);
        }

        public Builder deleteCustomProperty(CustomPropertyKey customPropertyKey) {
            zzbo.zzb((Object) customPropertyKey, (Object) "key");
            zzsX().zza(customPropertyKey, null);
            return this;
        }

        public Builder setCustomProperty(CustomPropertyKey customPropertyKey, String str) {
            zzbo.zzb((Object) customPropertyKey, (Object) "key");
            zzbo.zzb((Object) str, Param.VALUE);
            zzi("The total size of key string and value string of a custom property", MetadataChangeSet.CUSTOM_PROPERTY_SIZE_LIMIT_BYTES, zzcP(customPropertyKey.getKey()) + zzcP(str));
            zzsX().zza(customPropertyKey, str);
            return this;
        }

        public Builder setDescription(String str) {
            this.zzaMA.zzc(zzbrc.zzaPT, str);
            return this;
        }

        public Builder setIndexableText(String str) {
            zzi("Indexable text size", 131072, zzcP(str));
            this.zzaMA.zzc(zzbrc.zzaPZ, str);
            return this;
        }

        public Builder setLastViewedByMeDate(Date date) {
            this.zzaMA.zzc(zzbrp.zzaQJ, date);
            return this;
        }

        public Builder setMimeType(String str) {
            this.zzaMA.zzc(zzbrc.zzaQn, str);
            return this;
        }

        public Builder setPinned(boolean z) {
            this.zzaMA.zzc(zzbrc.zzaQf, Boolean.valueOf(z));
            return this;
        }

        public Builder setStarred(boolean z) {
            this.zzaMA.zzc(zzbrc.zzaQu, Boolean.valueOf(z));
            return this;
        }

        public Builder setTitle(String str) {
            this.zzaMA.zzc(zzbrc.zzaQw, str);
            return this;
        }

        public Builder setViewed(boolean z) {
            this.zzaMA.zzc(zzbrc.zzaQm, Boolean.valueOf(z));
            return this;
        }
    }

    public MetadataChangeSet(MetadataBundle metadataBundle) {
        this.zzaMA = metadataBundle.zztq();
    }

    public final Map<CustomPropertyKey, String> getCustomPropertyChangeMap() {
        AppVisibleCustomProperties appVisibleCustomProperties = (AppVisibleCustomProperties) this.zzaMA.zza(zzbrc.zzaPS);
        return appVisibleCustomProperties == null ? Collections.emptyMap() : appVisibleCustomProperties.zztl();
    }

    public final String getDescription() {
        return (String) this.zzaMA.zza(zzbrc.zzaPT);
    }

    public final String getIndexableText() {
        return (String) this.zzaMA.zza(zzbrc.zzaPZ);
    }

    public final Date getLastViewedByMeDate() {
        return (Date) this.zzaMA.zza(zzbrp.zzaQJ);
    }

    public final String getMimeType() {
        return (String) this.zzaMA.zza(zzbrc.zzaQn);
    }

    public final String getTitle() {
        return (String) this.zzaMA.zza(zzbrc.zzaQw);
    }

    public final Boolean isPinned() {
        return (Boolean) this.zzaMA.zza(zzbrc.zzaQf);
    }

    public final Boolean isStarred() {
        return (Boolean) this.zzaMA.zza(zzbrc.zzaQu);
    }

    public final Boolean isViewed() {
        return (Boolean) this.zzaMA.zza(zzbrc.zzaQm);
    }

    public final <T> MetadataChangeSet zza(MetadataField<T> metadataField, T t) {
        MetadataChangeSet metadataChangeSet = new MetadataChangeSet(this.zzaMA);
        metadataChangeSet.zzaMA.zzc(metadataField, t);
        return metadataChangeSet;
    }

    public final MetadataBundle zzsW() {
        return this.zzaMA;
    }
}
