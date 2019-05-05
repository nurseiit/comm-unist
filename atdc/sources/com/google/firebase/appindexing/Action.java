package com.google.firebase.appindexing;

import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.appindexing.internal.zza;
import com.google.firebase.appindexing.internal.zzb;

public interface Action {

    public static class Builder {
        public static final String ACTIVATE_ACTION = "ActivateAction";
        public static final String ADD_ACTION = "AddAction";
        public static final String BOOKMARK_ACTION = "BookmarkAction";
        public static final String COMMENT_ACTION = "CommentAction";
        public static final String LIKE_ACTION = "LikeAction";
        public static final String LISTEN_ACTION = "ListenAction";
        public static final String SEND_ACTION = "SendAction";
        public static final String SHARE_ACTION = "ShareAction";
        public static final String STATUS_TYPE_ACTIVE = "http://schema.org/ActiveActionStatus";
        public static final String STATUS_TYPE_COMPLETED = "http://schema.org/CompletedActionStatus";
        public static final String STATUS_TYPE_FAILED = "http://schema.org/FailedActionStatus";
        public static final String VIEW_ACTION = "ViewAction";
        public static final String WATCH_ACTION = "WatchAction";
        private final String zzbVu;
        private String zzbVv;
        private String zzbVw;
        private String zzbVx;
        private zzb zzbVy;
        private String zzbVz;

        public Builder(@NonNull String str) {
            this.zzbVu = str;
        }

        public Action build() {
            zzbo.zzb(this.zzbVv, (Object) "setObject is required before calling build().");
            zzbo.zzb(this.zzbVw, (Object) "setObject is required before calling build().");
            return new zza(this.zzbVu, this.zzbVv, this.zzbVw, this.zzbVx, this.zzbVy == null ? new Builder().zzEz() : this.zzbVy, this.zzbVz);
        }

        public Builder setActionStatus(@NonNull String str) {
            zzbo.zzu(str);
            this.zzbVz = str;
            return this;
        }

        public Builder setMetadata(@NonNull Builder builder) {
            zzbo.zzu(builder);
            this.zzbVy = builder.zzEz();
            return this;
        }

        public Builder setObject(@NonNull String str, @NonNull String str2) {
            zzbo.zzu(str);
            zzbo.zzu(str2);
            this.zzbVv = str;
            this.zzbVw = str2;
            return this;
        }

        public Builder setObject(@NonNull String str, @NonNull String str2, @NonNull String str3) {
            zzbo.zzu(str);
            zzbo.zzu(str2);
            zzbo.zzu(str3);
            this.zzbVv = str;
            this.zzbVw = str2;
            this.zzbVx = str3;
            return this;
        }
    }

    public interface Metadata {

        public static class Builder {
            private boolean zzbVA = true;
            private boolean zzbVB = false;

            public Builder setUpload(boolean z) {
                this.zzbVA = z;
                return this;
            }

            public final zzb zzEz() {
                return new zzb(this.zzbVA, null, null, null, false);
            }
        }
    }
}
