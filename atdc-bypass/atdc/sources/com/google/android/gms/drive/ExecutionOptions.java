package com.google.android.gms.drive;

import android.text.TextUtils;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.internal.zzbmh;
import java.util.Arrays;

public class ExecutionOptions {
    public static final int CONFLICT_STRATEGY_KEEP_REMOTE = 1;
    public static final int CONFLICT_STRATEGY_OVERWRITE_REMOTE = 0;
    public static final int MAX_TRACKING_TAG_STRING_LENGTH = 65536;
    private final String zzaMr;
    private final boolean zzaMs;
    private final int zzaMt;

    public static class Builder {
        protected String zzaMr;
        protected boolean zzaMs;
        protected int zzaMt = 0;

        public ExecutionOptions build() {
            zzsS();
            return new ExecutionOptions(this.zzaMr, this.zzaMs, this.zzaMt);
        }

        public Builder setConflictStrategy(int i) {
            Object obj;
            switch (i) {
                case 0:
                case 1:
                    obj = 1;
                    break;
                default:
                    obj = null;
                    break;
            }
            if (obj == null) {
                StringBuilder stringBuilder = new StringBuilder(53);
                stringBuilder.append("Unrecognized value for conflict strategy: ");
                stringBuilder.append(i);
                throw new IllegalArgumentException(stringBuilder.toString());
            }
            this.zzaMt = i;
            return this;
        }

        public Builder setNotifyOnCompletion(boolean z) {
            this.zzaMs = z;
            return this;
        }

        public Builder setTrackingTag(String str) {
            Object obj = (TextUtils.isEmpty(str) || str.length() > 65536) ? null : 1;
            if (obj == null) {
                throw new IllegalArgumentException(String.format("trackingTag must not be null nor empty, and the length must be <= the maximum length (%s)", new Object[]{Integer.valueOf(65536)}));
            }
            this.zzaMr = str;
            return this;
        }

        /* Access modifiers changed, original: protected|final */
        public final void zzsS() {
            if (this.zzaMt == 1 && !this.zzaMs) {
                throw new IllegalStateException("Cannot use CONFLICT_STRATEGY_KEEP_REMOTE without requesting completion notifications");
            }
        }
    }

    public ExecutionOptions(String str, boolean z, int i) {
        this.zzaMr = str;
        this.zzaMs = z;
        this.zzaMt = i;
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        ExecutionOptions executionOptions = (ExecutionOptions) obj;
        return zzbe.equal(this.zzaMr, executionOptions.zzaMr) && this.zzaMt == executionOptions.zzaMt && this.zzaMs == executionOptions.zzaMs;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaMr, Integer.valueOf(this.zzaMt), Boolean.valueOf(this.zzaMs)});
    }

    public final void zze(GoogleApiClient googleApiClient) {
        zzbmh zzbmh = (zzbmh) googleApiClient.zza(Drive.zzajR);
        if (this.zzaMs && !zzbmh.zzti()) {
            throw new IllegalStateException("Application must define an exported DriveEventService subclass in AndroidManifest.xml to be notified on completion");
        }
    }

    public final String zzsP() {
        return this.zzaMr;
    }

    public final boolean zzsQ() {
        return this.zzaMs;
    }

    public final int zzsR() {
        return this.zzaMt;
    }
}
