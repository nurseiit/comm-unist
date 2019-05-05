package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.SystemClock;

public final class zzbfg extends Drawable implements Callback {
    private int mFrom;
    private int zzaGA;
    private boolean zzaGj;
    private int zzaGo;
    private int zzaGp;
    private int zzaGq;
    private int zzaGr;
    private int zzaGs;
    private boolean zzaGt;
    private zzbfk zzaGu;
    private Drawable zzaGv;
    private Drawable zzaGw;
    private boolean zzaGx;
    private boolean zzaGy;
    private boolean zzaGz;
    private long zzagZ;

    public zzbfg(Drawable drawable, Drawable drawable2) {
        this(null);
        if (drawable == null) {
            drawable = zzbfi.zzaGB;
        }
        this.zzaGv = drawable;
        drawable.setCallback(this);
        zzbfk zzbfk = this.zzaGu;
        zzbfk.zzaGD = drawable.getChangingConfigurations() | zzbfk.zzaGD;
        if (drawable2 == null) {
            drawable2 = zzbfi.zzaGB;
        }
        this.zzaGw = drawable2;
        drawable2.setCallback(this);
        zzbfk zzbfk2 = this.zzaGu;
        zzbfk2.zzaGD = drawable2.getChangingConfigurations() | zzbfk2.zzaGD;
    }

    zzbfg(zzbfk zzbfk) {
        this.zzaGo = 0;
        this.zzaGq = 255;
        this.zzaGs = 0;
        this.zzaGj = true;
        this.zzaGu = new zzbfk(zzbfk);
    }

    private final boolean canConstantState() {
        if (!this.zzaGx) {
            boolean z = (this.zzaGv.getConstantState() == null || this.zzaGw.getConstantState() == null) ? false : true;
            this.zzaGy = z;
            this.zzaGx = true;
        }
        return this.zzaGy;
    }

    public final void draw(Canvas canvas) {
        Object obj = 1;
        switch (this.zzaGo) {
            case 1:
                this.zzagZ = SystemClock.uptimeMillis();
                this.zzaGo = 2;
                obj = null;
                break;
            case 2:
                if (this.zzagZ >= 0) {
                    float uptimeMillis = ((float) (SystemClock.uptimeMillis() - this.zzagZ)) / ((float) this.zzaGr);
                    if (uptimeMillis < 1.0f) {
                        obj = null;
                    }
                    if (obj != null) {
                        this.zzaGo = 0;
                    }
                    this.zzaGs = (int) ((((float) this.zzaGp) * Math.min(uptimeMillis, 1.0f)) + 0.0f);
                    break;
                }
                break;
        }
        int i = this.zzaGs;
        boolean z = this.zzaGj;
        Drawable drawable = this.zzaGv;
        Drawable drawable2 = this.zzaGw;
        if (obj != null) {
            if (!z || i == 0) {
                drawable.draw(canvas);
            }
            if (i == this.zzaGq) {
                drawable2.setAlpha(this.zzaGq);
                drawable2.draw(canvas);
            }
            return;
        }
        if (z) {
            drawable.setAlpha(this.zzaGq - i);
        }
        drawable.draw(canvas);
        if (z) {
            drawable.setAlpha(this.zzaGq);
        }
        if (i > 0) {
            drawable2.setAlpha(i);
            drawable2.draw(canvas);
            drawable2.setAlpha(this.zzaGq);
        }
        invalidateSelf();
    }

    public final int getChangingConfigurations() {
        return (super.getChangingConfigurations() | this.zzaGu.mChangingConfigurations) | this.zzaGu.zzaGD;
    }

    public final ConstantState getConstantState() {
        if (!canConstantState()) {
            return null;
        }
        this.zzaGu.mChangingConfigurations = getChangingConfigurations();
        return this.zzaGu;
    }

    public final int getIntrinsicHeight() {
        return Math.max(this.zzaGv.getIntrinsicHeight(), this.zzaGw.getIntrinsicHeight());
    }

    public final int getIntrinsicWidth() {
        return Math.max(this.zzaGv.getIntrinsicWidth(), this.zzaGw.getIntrinsicWidth());
    }

    public final int getOpacity() {
        if (!this.zzaGz) {
            this.zzaGA = Drawable.resolveOpacity(this.zzaGv.getOpacity(), this.zzaGw.getOpacity());
            this.zzaGz = true;
        }
        return this.zzaGA;
    }

    public final void invalidateDrawable(Drawable drawable) {
        Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    public final Drawable mutate() {
        if (!this.zzaGt && super.mutate() == this) {
            if (canConstantState()) {
                this.zzaGv.mutate();
                this.zzaGw.mutate();
                this.zzaGt = true;
            } else {
                throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
            }
        }
        return this;
    }

    /* Access modifiers changed, original: protected|final */
    public final void onBoundsChange(Rect rect) {
        this.zzaGv.setBounds(rect);
        this.zzaGw.setBounds(rect);
    }

    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    public final void setAlpha(int i) {
        if (this.zzaGs == this.zzaGq) {
            this.zzaGs = i;
        }
        this.zzaGq = i;
        invalidateSelf();
    }

    public final void setColorFilter(ColorFilter colorFilter) {
        this.zzaGv.setColorFilter(colorFilter);
        this.zzaGw.setColorFilter(colorFilter);
    }

    public final void startTransition(int i) {
        this.mFrom = 0;
        this.zzaGp = this.zzaGq;
        this.zzaGs = 0;
        this.zzaGr = 250;
        this.zzaGo = 1;
        invalidateSelf();
    }

    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public final Drawable zzqW() {
        return this.zzaGw;
    }
}
