package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.support.annotation.ColorInt;
import android.view.View;
import com.google.android.gms.cast.AdBreakInfo;
import java.util.List;

public final class zzavr extends View {
    private List<AdBreakInfo> zzaqe;
    private final int zzavf;
    private int zzavg = 1;
    private Paint zzavh;

    public zzavr(Context context) {
        super(context);
        context = getContext();
        this.zzavf = (int) (context == null ? Math.round(3.0d) : Math.round(((double) context.getResources().getDisplayMetrics().density) * 3.0d));
    }

    /* Access modifiers changed, original: protected|final|declared_synchronized */
    /* JADX WARNING: Missing block: B:21:0x006c, code skipped:
            return;
     */
    public final synchronized void onDraw(@android.support.annotation.NonNull android.graphics.Canvas r9) {
        /*
        r8 = this;
        monitor-enter(r8);
        super.onDraw(r9);	 Catch:{ all -> 0x006d }
        r0 = r8.zzaqe;	 Catch:{ all -> 0x006d }
        if (r0 == 0) goto L_0x006b;
    L_0x0008:
        r0 = r8.zzaqe;	 Catch:{ all -> 0x006d }
        r0 = r0.isEmpty();	 Catch:{ all -> 0x006d }
        if (r0 == 0) goto L_0x0011;
    L_0x0010:
        goto L_0x006b;
    L_0x0011:
        r0 = r8.getMeasuredHeight();	 Catch:{ all -> 0x006d }
        r0 = (float) r0;	 Catch:{ all -> 0x006d }
        r1 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r0 = r0 / r1;
        r0 = java.lang.Math.round(r0);	 Catch:{ all -> 0x006d }
        r1 = r8.getMeasuredWidth();	 Catch:{ all -> 0x006d }
        r2 = r8.getPaddingLeft();	 Catch:{ all -> 0x006d }
        r1 = r1 - r2;
        r2 = r8.getPaddingRight();	 Catch:{ all -> 0x006d }
        r1 = r1 - r2;
        r2 = r8.zzaqe;	 Catch:{ all -> 0x006d }
        r2 = r2.iterator();	 Catch:{ all -> 0x006d }
    L_0x0031:
        r3 = r2.hasNext();	 Catch:{ all -> 0x006d }
        if (r3 == 0) goto L_0x0069;
    L_0x0037:
        r3 = r2.next();	 Catch:{ all -> 0x006d }
        r3 = (com.google.android.gms.cast.AdBreakInfo) r3;	 Catch:{ all -> 0x006d }
        if (r3 == 0) goto L_0x0031;
    L_0x003f:
        r3 = r3.getPlaybackPositionInMs();	 Catch:{ all -> 0x006d }
        r5 = 0;
        r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1));
        if (r7 < 0) goto L_0x0031;
    L_0x0049:
        r5 = r8.zzavg;	 Catch:{ all -> 0x006d }
        r5 = (long) r5;	 Catch:{ all -> 0x006d }
        r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1));
        if (r7 > 0) goto L_0x0031;
    L_0x0050:
        r3 = (double) r3;	 Catch:{ all -> 0x006d }
        r5 = (double) r1;	 Catch:{ all -> 0x006d }
        r3 = r3 * r5;
        r5 = r8.zzavg;	 Catch:{ all -> 0x006d }
        r5 = (double) r5;	 Catch:{ all -> 0x006d }
        r3 = r3 / r5;
        r3 = (int) r3;	 Catch:{ all -> 0x006d }
        r4 = r8.getPaddingLeft();	 Catch:{ all -> 0x006d }
        r4 = r4 + r3;
        r3 = (float) r4;	 Catch:{ all -> 0x006d }
        r4 = (float) r0;	 Catch:{ all -> 0x006d }
        r5 = r8.zzavf;	 Catch:{ all -> 0x006d }
        r5 = (float) r5;	 Catch:{ all -> 0x006d }
        r6 = r8.zzavh;	 Catch:{ all -> 0x006d }
        r9.drawCircle(r3, r4, r5, r6);	 Catch:{ all -> 0x006d }
        goto L_0x0031;
    L_0x0069:
        monitor-exit(r8);
        return;
    L_0x006b:
        monitor-exit(r8);
        return;
    L_0x006d:
        r9 = move-exception;
        monitor-exit(r8);
        throw r9;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzavr.onDraw(android.graphics.Canvas):void");
    }

    public final synchronized void zzac(int i) {
        this.zzavg = i;
    }

    public final synchronized void zzb(List<AdBreakInfo> list, @ColorInt int i) {
        this.zzaqe = list;
        this.zzavh = new Paint(1);
        this.zzavh.setColor(-1);
        this.zzavh.setStyle(Style.FILL);
        invalidate();
    }
}
