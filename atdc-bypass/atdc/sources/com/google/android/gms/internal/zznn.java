package com.google.android.gms.internal;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import java.util.List;

@zzzn
public final class zznn {
    private static final int zzHm = Color.rgb(12, 174, 206);
    private static final int zzHn;
    private static int zzHo;
    private static int zzHp = zzHm;
    private final int mTextColor;
    private final String zzHq;
    private final List<Drawable> zzHr;
    private final int zzHs;
    private final int zzHt;
    private final int zzHu;
    private final int zzHv;
    private final boolean zzHw;

    static {
        int rgb = Color.rgb(204, 204, 204);
        zzHn = rgb;
        zzHo = rgb;
    }

    public zznn(String str, List<Drawable> list, Integer num, Integer num2, Integer num3, int i, int i2, boolean z) {
        this.zzHq = str;
        this.zzHr = list;
        this.zzHs = num != null ? num.intValue() : zzHo;
        this.mTextColor = num2 != null ? num2.intValue() : zzHp;
        this.zzHt = num3 != null ? num3.intValue() : 12;
        this.zzHu = i;
        this.zzHv = i2;
        this.zzHw = z;
    }

    public final int getBackgroundColor() {
        return this.zzHs;
    }

    public final String getText() {
        return this.zzHq;
    }

    public final int getTextColor() {
        return this.mTextColor;
    }

    public final int getTextSize() {
        return this.zzHt;
    }

    public final List<Drawable> zzec() {
        return this.zzHr;
    }

    public final int zzed() {
        return this.zzHu;
    }

    public final int zzee() {
        return this.zzHv;
    }

    public final boolean zzef() {
        return this.zzHw;
    }
}
