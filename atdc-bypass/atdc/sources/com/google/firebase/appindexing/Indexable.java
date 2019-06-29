package com.google.firebase.appindexing;

import android.os.Bundle;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.aed;
import com.google.firebase.appindexing.builders.IndexableBuilder;
import com.google.firebase.appindexing.internal.Thing.zza;

public interface Indexable {
    public static final int MAX_BYTE_SIZE = 30000;
    public static final int MAX_INDEXABLES_TO_BE_UPDATED_IN_ONE_CALL = 1000;
    public static final int MAX_NESTING_DEPTH = 5;
    public static final int MAX_NUMBER_OF_FIELDS = 20;
    public static final int MAX_REPEATED_SIZE = 100;
    public static final int MAX_STRING_LENGTH = 20000;
    public static final int MAX_URL_LENGTH = 256;

    public interface Metadata {
        public static final zza zzbVD = new Builder().zzEA();

        public static final class Builder {
            private static final aed zzbVE = new aed();
            private final Bundle zzajQ = new Bundle();
            private boolean zzbVF = zzbVE.zzctw;
            private String zzbVG = zzbVE.zzctx;
            private int zzyh = zzbVE.score;

            public final Builder setScore(int i) {
                boolean z = i >= 0;
                StringBuilder stringBuilder = new StringBuilder(53);
                stringBuilder.append("Negative score values are invalid. Value: ");
                stringBuilder.append(i);
                zzbo.zzb(z, stringBuilder.toString());
                this.zzyh = i;
                return this;
            }

            public final Builder setWorksOffline(boolean z) {
                this.zzbVF = z;
                return this;
            }

            public final zza zzEA() {
                return new zza(this.zzbVF, this.zzyh, this.zzbVG, this.zzajQ);
            }
        }
    }

    public static class Builder extends IndexableBuilder<Builder> {
        public Builder() {
            this("Thing");
        }

        public Builder(@NonNull String str) {
            super(str);
        }
    }
}
