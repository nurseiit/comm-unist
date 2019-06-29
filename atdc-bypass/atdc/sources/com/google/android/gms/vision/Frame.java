package com.google.android.gms.vision;

import android.graphics.Bitmap;
import android.graphics.Color;
import java.nio.ByteBuffer;

public class Frame {
    public static final int ROTATION_0 = 0;
    public static final int ROTATION_180 = 2;
    public static final int ROTATION_270 = 3;
    public static final int ROTATION_90 = 1;
    private Bitmap mBitmap;
    private Metadata zzbMV;
    private ByteBuffer zzbMW;

    public static class Builder {
        private Frame zzbMX = new Frame();

        public Frame build() {
            if (this.zzbMX.zzbMW != null || this.zzbMX.mBitmap != null) {
                return this.zzbMX;
            }
            throw new IllegalStateException("Missing image data.  Call either setBitmap or setImageData to specify the image");
        }

        public Builder setBitmap(Bitmap bitmap) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            this.zzbMX.mBitmap = bitmap;
            Metadata metadata = this.zzbMX.getMetadata();
            metadata.zzrW = width;
            metadata.zzrX = height;
            return this;
        }

        public Builder setId(int i) {
            this.zzbMX.getMetadata().mId = i;
            return this;
        }

        public Builder setImageData(ByteBuffer byteBuffer, int i, int i2, int i3) {
            if (byteBuffer == null) {
                throw new IllegalArgumentException("Null image data supplied.");
            } else if (byteBuffer.capacity() < i * i2) {
                throw new IllegalArgumentException("Invalid image data size.");
            } else {
                if (i3 != 842094169) {
                    switch (i3) {
                        case 16:
                        case 17:
                            break;
                        default:
                            StringBuilder stringBuilder = new StringBuilder(37);
                            stringBuilder.append("Unsupported image format: ");
                            stringBuilder.append(i3);
                            throw new IllegalArgumentException(stringBuilder.toString());
                    }
                }
                this.zzbMX.zzbMW = byteBuffer;
                Metadata metadata = this.zzbMX.getMetadata();
                metadata.zzrW = i;
                metadata.zzrX = i2;
                metadata.format = i3;
                return this;
            }
        }

        public Builder setRotation(int i) {
            this.zzbMX.getMetadata().zzOa = i;
            return this;
        }

        public Builder setTimestampMillis(long j) {
            this.zzbMX.getMetadata().zzbcV = j;
            return this;
        }
    }

    public static class Metadata {
        private int format = -1;
        private int mId;
        private int zzOa;
        private long zzbcV;
        private int zzrW;
        private int zzrX;

        public Metadata(Metadata metadata) {
            this.zzrW = metadata.getWidth();
            this.zzrX = metadata.getHeight();
            this.mId = metadata.getId();
            this.zzbcV = metadata.getTimestampMillis();
            this.zzOa = metadata.getRotation();
        }

        public int getFormat() {
            return this.format;
        }

        public int getHeight() {
            return this.zzrX;
        }

        public int getId() {
            return this.mId;
        }

        public int getRotation() {
            return this.zzOa;
        }

        public long getTimestampMillis() {
            return this.zzbcV;
        }

        public int getWidth() {
            return this.zzrW;
        }

        public final void zzDN() {
            if (this.zzOa % 2 != 0) {
                int i = this.zzrW;
                this.zzrW = this.zzrX;
                this.zzrX = i;
            }
            this.zzOa = 0;
        }
    }

    private Frame() {
        this.zzbMV = new Metadata();
        this.zzbMW = null;
        this.mBitmap = null;
    }

    /* synthetic */ Frame(zzb zzb) {
        this();
    }

    public Bitmap getBitmap() {
        return this.mBitmap;
    }

    public ByteBuffer getGrayscaleImageData() {
        if (this.mBitmap == null) {
            return this.zzbMW;
        }
        int width = this.mBitmap.getWidth();
        int height = this.mBitmap.getHeight();
        int i = width * height;
        int[] iArr = new int[i];
        this.mBitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            bArr[i2] = (byte) ((int) (((((float) Color.red(iArr[i2])) * 0.299f) + (((float) Color.green(iArr[i2])) * 0.587f)) + (((float) Color.blue(iArr[i2])) * 0.114f)));
        }
        return ByteBuffer.wrap(bArr);
    }

    public Metadata getMetadata() {
        return this.zzbMV;
    }
}