package com.google.android.gms.internal;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.RectF;

final class zzavo implements zzavd {
    private /* synthetic */ zzavn zzave;

    zzavo(zzavn zzavn) {
        this.zzave = zzavn;
    }

    public final void zzc(Bitmap bitmap) {
        Bitmap bitmap2 = null;
        if (bitmap != null) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            float f = (float) width;
            int i = (int) (((9.0f * f) / 16.0f) + 0.5f);
            float f2 = (float) ((i - height) / 2);
            RectF rectF = new RectF(0.0f, f2, f, ((float) height) + f2);
            Bitmap createBitmap = Bitmap.createBitmap(width, i, bitmap.getConfig());
            new Canvas(createBitmap).drawBitmap(bitmap, null, rectF, null);
            bitmap2 = createBitmap;
        }
        this.zzave.zza(bitmap2, 0);
    }
}
