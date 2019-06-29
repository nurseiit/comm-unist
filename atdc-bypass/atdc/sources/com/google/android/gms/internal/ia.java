package com.google.android.gms.internal;

import android.view.animation.Interpolator;

public final class ia implements Interpolator {
    private float[] zzbUA;
    private float[] zzbUB;

    public ia(float f, float f2, float f3, float f4) {
        ib ibVar = new ib();
        ibVar.moveTo(0.0f, 0.0f);
        ibVar.cubicTo(f, 0.0f, f3, 1.0f, 1.0f, 1.0f);
        zza(ibVar);
    }

    private final void zza(ib ibVar) {
        float[] zzf = ibVar.zzf(0.002f);
        int length = zzf.length / 3;
        float f = 0.0f;
        if (zzf[1] == 0.0f && zzf[2] == 0.0f && zzf[zzf.length - 2] == 1.0f && zzf[zzf.length - 1] == 1.0f) {
            this.zzbUA = new float[length];
            this.zzbUB = new float[length];
            int i = 0;
            int i2 = 0;
            float f2 = 0.0f;
            while (i < length) {
                int i3 = i2 + 1;
                float f3 = zzf[i2];
                int i4 = i3 + 1;
                float f4 = zzf[i3];
                int i5 = i4 + 1;
                float f5 = zzf[i4];
                if (f3 == f && f4 != f2) {
                    throw new IllegalArgumentException("The Path cannot have discontinuity in the X axis.");
                } else if (f4 < f2) {
                    throw new IllegalArgumentException("The Path cannot loop back on itself.");
                } else {
                    this.zzbUA[i] = f4;
                    this.zzbUB[i] = f5;
                    i++;
                    f = f3;
                    f2 = f4;
                    i2 = i5;
                }
            }
            return;
        }
        throw new IllegalArgumentException("The Path must start at (0,0) and end at (1,1)");
    }

    public final float getInterpolation(float f) {
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        int i = 0;
        int length = this.zzbUA.length - 1;
        while (length - i > 1) {
            int i2 = (i + length) / 2;
            if (f < this.zzbUA[i2]) {
                length = i2;
            } else {
                i = i2;
            }
        }
        float f2 = this.zzbUA[length] - this.zzbUA[i];
        if (f2 == 0.0f) {
            return this.zzbUB[i];
        }
        f = (f - this.zzbUA[i]) / f2;
        float f3 = this.zzbUB[i];
        return f3 + (f * (this.zzbUB[length] - f3));
    }
}
