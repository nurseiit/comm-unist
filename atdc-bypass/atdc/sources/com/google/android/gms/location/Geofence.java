package com.google.android.gms.location;

import android.os.SystemClock;
import com.google.android.gms.internal.zzcdr;

public interface Geofence {
    public static final int GEOFENCE_TRANSITION_DWELL = 4;
    public static final int GEOFENCE_TRANSITION_ENTER = 1;
    public static final int GEOFENCE_TRANSITION_EXIT = 2;
    public static final long NEVER_EXPIRE = -1;

    public static final class Builder {
        private String zzQx = null;
        private int zzbhF = 0;
        private long zzbhG = Long.MIN_VALUE;
        private short zzbhH = (short) -1;
        private double zzbhI;
        private double zzbhJ;
        private float zzbhK;
        private int zzbhL = 0;
        private int zzbhM = -1;

        public final Geofence build() {
            if (this.zzQx == null) {
                throw new IllegalArgumentException("Request ID not set.");
            } else if (this.zzbhF == 0) {
                throw new IllegalArgumentException("Transitions types not set.");
            } else if ((this.zzbhF & 4) != 0 && this.zzbhM < 0) {
                throw new IllegalArgumentException("Non-negative loitering delay needs to be set when transition types include GEOFENCE_TRANSITION_DWELLING.");
            } else if (this.zzbhG == Long.MIN_VALUE) {
                throw new IllegalArgumentException("Expiration not set.");
            } else if (this.zzbhH == (short) -1) {
                throw new IllegalArgumentException("Geofence region not set.");
            } else if (this.zzbhL >= 0) {
                return new zzcdr(this.zzQx, this.zzbhF, (short) 1, this.zzbhI, this.zzbhJ, this.zzbhK, this.zzbhG, this.zzbhL, this.zzbhM);
            } else {
                throw new IllegalArgumentException("Notification responsiveness should be nonnegative.");
            }
        }

        public final Builder setCircularRegion(double d, double d2, float f) {
            this.zzbhH = (short) 1;
            this.zzbhI = d;
            this.zzbhJ = d2;
            this.zzbhK = f;
            return this;
        }

        public final Builder setExpirationDuration(long j) {
            if (j < 0) {
                this.zzbhG = -1;
                return this;
            }
            this.zzbhG = SystemClock.elapsedRealtime() + j;
            return this;
        }

        public final Builder setLoiteringDelay(int i) {
            this.zzbhM = i;
            return this;
        }

        public final Builder setNotificationResponsiveness(int i) {
            this.zzbhL = i;
            return this;
        }

        public final Builder setRequestId(String str) {
            this.zzQx = str;
            return this;
        }

        public final Builder setTransitionTypes(int i) {
            this.zzbhF = i;
            return this;
        }
    }

    String getRequestId();
}
