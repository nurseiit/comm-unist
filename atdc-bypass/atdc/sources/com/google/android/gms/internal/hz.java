package com.google.android.gms.internal;

import android.graphics.PointF;

public final class hz implements hx {
    public final PointF zza(float f, PointF[] pointFArr, PointF pointF) {
        float f2 = 1.0f - f;
        pointF.set((((pointFArr[0].x * f2) + (pointFArr[1].x * f)) * f2) + (((pointFArr[1].x * f2) + (pointFArr[2].x * f)) * f), (((pointFArr[0].y * f2) + (pointFArr[1].y * f)) * f2) + (f * ((f2 * pointFArr[1].y) + (pointFArr[2].y * f))));
        return pointF;
    }
}
