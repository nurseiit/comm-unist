package com.google.android.gms.vision.face;

import android.content.Context;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.internal.fc;
import com.google.android.gms.vision.Detector;
import com.google.android.gms.vision.Frame;
import com.google.android.gms.vision.face.internal.client.zza;
import com.google.android.gms.vision.zzc;
import java.nio.ByteBuffer;
import java.util.HashSet;

public final class FaceDetector extends Detector<Face> {
    public static final int ACCURATE_MODE = 1;
    public static final int ALL_CLASSIFICATIONS = 1;
    public static final int ALL_LANDMARKS = 1;
    public static final int FAST_MODE = 0;
    public static final int NO_CLASSIFICATIONS = 0;
    public static final int NO_LANDMARKS = 0;
    private final Object mLock;
    private final zzc zzbNq;
    private final zza zzbNr;
    private boolean zzbNs;

    public static class Builder {
        private final Context mContext;
        private int zzaLU = 0;
        private int zzbNt = 0;
        private boolean zzbNu = false;
        private int zzbNv = 0;
        private boolean zzbNw = true;
        private float zzbNx = -1.0f;

        public Builder(Context context) {
            this.mContext = context;
        }

        public FaceDetector build() {
            com.google.android.gms.vision.face.internal.client.zzc zzc = new com.google.android.gms.vision.face.internal.client.zzc();
            zzc.mode = this.zzaLU;
            zzc.zzbNG = this.zzbNt;
            zzc.zzbNH = this.zzbNv;
            zzc.zzbNI = this.zzbNu;
            zzc.zzbNJ = this.zzbNw;
            zzc.zzbNK = this.zzbNx;
            return new FaceDetector(new zza(this.mContext, zzc));
        }

        public Builder setClassificationType(int i) {
            if (i == 0 || i == 1) {
                this.zzbNv = i;
                return this;
            }
            StringBuilder stringBuilder = new StringBuilder(40);
            stringBuilder.append("Invalid classification type: ");
            stringBuilder.append(i);
            throw new IllegalArgumentException(stringBuilder.toString());
        }

        public Builder setLandmarkType(int i) {
            if (i == 0 || i == 1) {
                this.zzbNt = i;
                return this;
            }
            StringBuilder stringBuilder = new StringBuilder(34);
            stringBuilder.append("Invalid landmark type: ");
            stringBuilder.append(i);
            throw new IllegalArgumentException(stringBuilder.toString());
        }

        public Builder setMinFaceSize(float f) {
            if (f < 0.0f || f > 1.0f) {
                StringBuilder stringBuilder = new StringBuilder(47);
                stringBuilder.append("Invalid proportional face size: ");
                stringBuilder.append(f);
                throw new IllegalArgumentException(stringBuilder.toString());
            }
            this.zzbNx = f;
            return this;
        }

        public Builder setMode(int i) {
            switch (i) {
                case 0:
                case 1:
                    this.zzaLU = i;
                    return this;
                default:
                    StringBuilder stringBuilder = new StringBuilder(25);
                    stringBuilder.append("Invalid mode: ");
                    stringBuilder.append(i);
                    throw new IllegalArgumentException(stringBuilder.toString());
            }
        }

        public Builder setProminentFaceOnly(boolean z) {
            this.zzbNu = z;
            return this;
        }

        public Builder setTrackingEnabled(boolean z) {
            this.zzbNw = z;
            return this;
        }
    }

    private FaceDetector() {
        this.zzbNq = new zzc();
        this.mLock = new Object();
        this.zzbNs = true;
        throw new IllegalStateException("Default constructor called");
    }

    private FaceDetector(zza zza) {
        this.zzbNq = new zzc();
        this.mLock = new Object();
        this.zzbNs = true;
        this.zzbNr = zza;
    }

    public final SparseArray<Face> detect(Frame frame) {
        if (frame == null) {
            throw new IllegalArgumentException("No frame supplied.");
        }
        Face[] zzb;
        ByteBuffer grayscaleImageData = frame.getGrayscaleImageData();
        synchronized (this.mLock) {
            if (this.zzbNs) {
                zzb = this.zzbNr.zzb(grayscaleImageData, fc.zzc(frame));
            } else {
                throw new RuntimeException("Cannot use detector after release()");
            }
        }
        HashSet hashSet = new HashSet();
        SparseArray sparseArray = new SparseArray(zzb.length);
        int i = 0;
        for (Face face : zzb) {
            int id = face.getId();
            i = Math.max(i, id);
            if (hashSet.contains(Integer.valueOf(id))) {
                id = i + 1;
                i = id;
            }
            hashSet.add(Integer.valueOf(id));
            sparseArray.append(this.zzbNq.zzbL(id), face);
        }
        return sparseArray;
    }

    /* Access modifiers changed, original: protected|final */
    public final void finalize() throws Throwable {
        try {
            synchronized (this.mLock) {
                if (this.zzbNs) {
                    Log.w("FaceDetector", "FaceDetector was not released with FaceDetector.release()");
                    release();
                }
            }
            super.finalize();
        } catch (Throwable th) {
            super.finalize();
        }
    }

    public final boolean isOperational() {
        return this.zzbNr.isOperational();
    }

    public final void release() {
        super.release();
        synchronized (this.mLock) {
            if (this.zzbNs) {
                this.zzbNr.zzDQ();
                this.zzbNs = false;
                return;
            }
        }
    }

    public final boolean setFocus(int i) {
        boolean zzbN;
        i = this.zzbNq.zzbM(i);
        synchronized (this.mLock) {
            if (this.zzbNs) {
                zzbN = this.zzbNr.zzbN(i);
            } else {
                throw new RuntimeException("Cannot use detector after release()");
            }
        }
        return zzbN;
    }
}
