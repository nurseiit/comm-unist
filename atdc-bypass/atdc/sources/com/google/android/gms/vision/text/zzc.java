package com.google.android.gms.vision.text;

import android.graphics.Point;
import android.graphics.Rect;
import com.google.android.gms.internal.fe;

final class zzc {
    static Rect zza(Text text) {
        int i = Integer.MIN_VALUE;
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MAX_VALUE;
        int i4 = Integer.MIN_VALUE;
        for (Point point : text.getCornerPoints()) {
            i2 = Math.min(i2, point.x);
            i = Math.max(i, point.x);
            i3 = Math.min(i3, point.y);
            i4 = Math.max(i4, point.y);
        }
        return new Rect(i2, i3, i, i4);
    }

    static Point[] zza(fe feVar) {
        r0 = new Point[4];
        double sin = Math.sin(Math.toRadians((double) feVar.zzbNW));
        double cos = Math.cos(Math.toRadians((double) feVar.zzbNW));
        r0[0] = new Point(feVar.left, feVar.top);
        r0[1] = new Point((int) (((double) feVar.left) + (((double) feVar.width) * cos)), (int) (((double) feVar.top) + (((double) feVar.width) * sin)));
        r0[2] = new Point((int) (((double) r0[1].x) - (((double) feVar.height) * sin)), (int) (((double) r0[1].y) + (((double) feVar.height) * cos)));
        r0[3] = new Point(r0[0].x + (r0[2].x - r0[1].x), r0[0].y + (r0[2].y - r0[1].y));
        return r0;
    }
}
