package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.v4.graphics.ColorUtils;
import android.util.TypedValue;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.R;
import com.google.android.gms.common.util.zzq;
import com.google.android.gms.internal.hu;
import com.google.android.gms.internal.hw;

final class zzl extends Drawable {
    private float centerX;
    private float centerY;
    private final Paint zzasL = new Paint();
    private float zzasM;
    private final Rect zzasQ = new Rect();
    private float zzatA = 0.0f;
    private float zzatB = 0.0f;
    private int zzatC = 244;
    private float zzato = 1.0f;
    private final Rect zzatr = new Rect();
    private final int zzatx;
    private final int zzaty;
    private final int zzatz;

    public zzl(Context context) {
        int alphaComponent;
        if (zzq.zzse()) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(16843827, typedValue, true);
            alphaComponent = ColorUtils.setAlphaComponent(typedValue.data, 244);
        } else {
            alphaComponent = context.getResources().getColor(R.color.cast_libraries_material_featurehighlight_outer_highlight_default_color);
        }
        setColor(alphaComponent);
        this.zzasL.setAntiAlias(true);
        this.zzasL.setStyle(Style.FILL);
        Resources resources = context.getResources();
        this.zzatx = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_center_threshold);
        this.zzaty = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_center_horizontal_offset);
        this.zzatz = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_outer_padding);
    }

    private static float zza(float f, float f2, Rect rect) {
        float f3 = (float) rect.left;
        float f4 = (float) rect.top;
        float f5 = (float) rect.right;
        float f6 = (float) rect.bottom;
        float zza = hw.zza(f, f2, f3, f4);
        f4 = hw.zza(f, f2, f5, f4);
        f5 = hw.zza(f, f2, f5, f6);
        f = hw.zza(f, f2, f3, f6);
        if (zza > f4 && zza > f5 && zza > f) {
            f = zza;
        } else if (f4 > f5 && f4 > f) {
            f = f4;
        } else if (f5 > f) {
            f = f5;
        }
        return (float) Math.ceil((double) f);
    }

    public final void draw(Canvas canvas) {
        canvas.drawCircle(this.centerX + this.zzatA, this.centerY + this.zzatB, this.zzasM * this.zzato, this.zzasL);
    }

    public final int getAlpha() {
        return this.zzasL.getAlpha();
    }

    public final float getCenterX() {
        return this.centerX;
    }

    public final float getCenterY() {
        return this.centerY;
    }

    @ColorInt
    public final int getColor() {
        return this.zzasL.getColor();
    }

    public final int getOpacity() {
        return -3;
    }

    public final void setAlpha(int i) {
        this.zzasL.setAlpha(i);
        invalidateSelf();
    }

    public final void setColor(@ColorInt int i) {
        this.zzasL.setColor(i);
        this.zzatC = this.zzasL.getAlpha();
        invalidateSelf();
    }

    public final void setColorFilter(ColorFilter colorFilter) {
        this.zzasL.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @UsedByReflection("FeatureHighlightView.java")
    public final void setScale(float f) {
        this.zzato = f;
        invalidateSelf();
    }

    @UsedByReflection("FeatureHighlightView.java")
    public final void setTranslationX(float f) {
        this.zzatA = f;
        invalidateSelf();
    }

    @UsedByReflection("FeatureHighlightView.java")
    public final void setTranslationY(float f) {
        this.zzatB = f;
        invalidateSelf();
    }

    public final void zzb(Rect rect, Rect rect2) {
        this.zzasQ.set(rect);
        this.zzatr.set(rect2);
        float exactCenterX = rect.exactCenterX();
        float exactCenterY = rect.exactCenterY();
        Rect bounds = getBounds();
        if (Math.min(exactCenterY - ((float) bounds.top), ((float) bounds.bottom) - exactCenterY) < ((float) this.zzatx)) {
            this.centerX = exactCenterX;
            this.centerY = exactCenterY;
        } else {
            this.centerX = ((exactCenterX > bounds.exactCenterX() ? 1 : (exactCenterX == bounds.exactCenterX() ? 0 : -1)) <= 0 ? 1 : null) != null ? rect2.exactCenterX() + ((float) this.zzaty) : rect2.exactCenterX() - ((float) this.zzaty);
            this.centerY = rect2.exactCenterY();
        }
        this.zzasM = ((float) this.zzatz) + Math.max(zza(this.centerX, this.centerY, rect), zza(this.centerX, this.centerY, rect2));
        invalidateSelf();
    }

    public final boolean zzd(float f, float f2) {
        return hw.zza(f, f2, this.centerX, this.centerY) < this.zzasM;
    }

    public final Animator zze(float f, float f2) {
        PropertyValuesHolder ofFloat = PropertyValuesHolder.ofFloat("scale", new float[]{0.0f, 1.0f});
        PropertyValuesHolder ofFloat2 = PropertyValuesHolder.ofFloat("translationX", new float[]{f, 0.0f});
        PropertyValuesHolder ofFloat3 = PropertyValuesHolder.ofFloat("translationY", new float[]{f2, 0.0f});
        PropertyValuesHolder ofInt = PropertyValuesHolder.ofInt("alpha", new int[]{0, this.zzatC});
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, new PropertyValuesHolder[]{ofFloat, ofFloat2, ofFloat3, ofInt});
        ofPropertyValuesHolder.setInterpolator(hu.zzEg());
        return ofPropertyValuesHolder.setDuration(350);
    }
}
