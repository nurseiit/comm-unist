package com.google.android.gms.games.snapshot;

import android.graphics.Bitmap;
import android.net.Uri;
import com.google.android.gms.common.data.BitmapTeleporter;

public interface SnapshotMetadataChange {
    public static final SnapshotMetadataChange EMPTY_CHANGE = new zze();

    public static final class Builder {
        private String zzafa;
        private Long zzbeA;
        private BitmapTeleporter zzbeB;
        private Uri zzbeC;
        private Long zzbez;

        public final SnapshotMetadataChange build() {
            return new zze(this.zzafa, this.zzbez, this.zzbeB, this.zzbeC, this.zzbeA);
        }

        public final Builder fromMetadata(SnapshotMetadata snapshotMetadata) {
            this.zzafa = snapshotMetadata.getDescription();
            this.zzbez = Long.valueOf(snapshotMetadata.getPlayedTime());
            this.zzbeA = Long.valueOf(snapshotMetadata.getProgressValue());
            if (this.zzbez.longValue() == -1) {
                this.zzbez = null;
            }
            this.zzbeC = snapshotMetadata.getCoverImageUri();
            if (this.zzbeC != null) {
                this.zzbeB = null;
            }
            return this;
        }

        public final Builder setCoverImage(Bitmap bitmap) {
            this.zzbeB = new BitmapTeleporter(bitmap);
            this.zzbeC = null;
            return this;
        }

        public final Builder setDescription(String str) {
            this.zzafa = str;
            return this;
        }

        public final Builder setPlayedTimeMillis(long j) {
            this.zzbez = Long.valueOf(j);
            return this;
        }

        public final Builder setProgressValue(long j) {
            this.zzbeA = Long.valueOf(j);
            return this;
        }
    }

    Bitmap getCoverImage();

    String getDescription();

    Long getPlayedTimeMillis();

    Long getProgressValue();

    BitmapTeleporter zzvv();
}
