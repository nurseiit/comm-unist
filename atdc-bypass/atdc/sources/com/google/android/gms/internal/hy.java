package com.google.android.gms.internal;

import android.graphics.PointF;

public final class hy implements hx {
    public final PointF zza(float f, PointF[] pointFArr, PointF pointF) {
        float f2 = 1.0f - f;
        float f3 = f2 * f2;
        float f4 = f3 * f2;
        float f5 = f * f;
        float f6 = f5 * f;
        f3 = (f3 * 3.0f) * f;
        f2 = (f2 * 3.0f) * f5;
        pointF.set((((pointFArr[0].x * f4) + (pointFArr[1].x * f3)) + (pointFArr[2].x * f2)) + (pointFArr[3].x * f6), (((f4 * pointFArr[0].y) + (f3 * pointFArr[1].y)) + (f2 * pointFArr[2].y)) + (f6 * pointFArr[3].y));
        return pointF;
    }
}
