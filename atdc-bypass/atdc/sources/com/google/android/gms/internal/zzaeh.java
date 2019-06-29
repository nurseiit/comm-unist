package com.google.android.gms.internal;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import java.io.ByteArrayOutputStream;

final class zzaeh implements Runnable {
    private /* synthetic */ Bitmap val$bitmap;
    private /* synthetic */ zzaeg zzXf;

    zzaeh(zzaeg zzaeg, Bitmap bitmap) {
        this.zzXf = zzaeg;
        this.val$bitmap = bitmap;
    }

    public final void run() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.val$bitmap.compress(CompressFormat.PNG, 0, byteArrayOutputStream);
        synchronized (this.zzXf.mLock) {
            this.zzXf.zzWX.zzcsQ = new aea();
            this.zzXf.zzWX.zzcsQ.zzctl = byteArrayOutputStream.toByteArray();
            this.zzXf.zzWX.zzcsQ.mimeType = "image/png";
            this.zzXf.zzWX.zzcsQ.zzcsJ = Integer.valueOf(1);
        }
    }
}
