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
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.R;
import com.google.android.gms.internal.hu;

final class zzj extends Drawable {
    private float centerX;
    private float centerY;
    private final Paint zzasL = new Paint();
    private float zzasM;
    private final Rect zzasQ = new Rect();
    private final Paint zzatl = new Paint();
    private final int zzatm;
    private final int zzatn;
    private float zzato = 1.0f;
    private float zzatp;
    private float zzatq;

    public zzj(Context context) {
        Resources resources = context.getResources();
        this.zzatm = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_inner_radius);
        this.zzatn = resources.getInteger(R.integer.cast_libraries_material_featurehighlight_pulse_base_alpha);
        this.zzasL.setAntiAlias(true);
        this.zzasL.setStyle(Style.FILL);
        this.zzatl.setAntiAlias(true);
        this.zzatl.setStyle(Style.FILL);
        this.zzasL.setColor(-1);
        this.zzatl.setColor(-1);
        invalidateSelf();
    }

    public final void draw(Canvas canvas) {
        if (this.zzatq > 0.0f) {
            float f = this.zzasM * this.zzatp;
            this.zzatl.setAlpha((int) (((float) this.zzatn) * this.zzatq));
            canvas.drawCircle(this.centerX, this.centerY, f, this.zzatl);
        }
        canvas.drawCircle(this.centerX, this.centerY, this.zzasM * this.zzato, this.zzasL);
    }

    public final int getOpacity() {
        return -3;
    }

    public final void setAlpha(int i) {
        this.zzasL.setAlpha(i);
        invalidateSelf();
    }

    public final void setColorFilter(ColorFilter colorFilter) {
        this.zzasL.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @UsedByReflection("FeatureHighlightView.java")
    public final void setPulseAlpha(float f) {
        this.zzatq = f;
        invalidateSelf();
    }

    @UsedByReflection("FeatureHighlightView.java")
    public final void setPulseScale(float f) {
        this.zzatp = f;
        invalidateSelf();
    }

    @UsedByReflection("FeatureHighlightView.java")
    public final void setScale(float f) {
        this.zzato = f;
        invalidateSelf();
    }

    public final void zzc(Rect rect) {
        this.zzasQ.set(rect);
        this.centerX = this.zzasQ.exactCenterX();
        this.centerY = this.zzasQ.exactCenterY();
        this.zzasM = Math.max((float) this.zzatm, Math.max(((float) this.zzasQ.width()) / 2.0f, ((float) this.zzasQ.height()) / 2.0f));
        invalidateSelf();
    }

    public final Animator zznS() {
        PropertyValuesHolder ofFloat = PropertyValuesHolder.ofFloat("scale", new float[]{0.0f});
        PropertyValuesHolder ofFloat2 = PropertyValuesHolder.ofFloat("alpha", new float[]{0.0f});
        PropertyValuesHolder ofFloat3 = PropertyValuesHolder.ofFloat("pulseScale", new float[]{0.0f});
        PropertyValuesHolder ofFloat4 = PropertyValuesHolder.ofFloat("pulseAlpha", new float[]{0.0f});
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, new PropertyValuesHolder[]{ofFloat, ofFloat2, ofFloat3, ofFloat4});
        ofPropertyValuesHolder.setInterpolator(hu.zzEh());
        return ofPropertyValuesHolder.setDuration(200);
    }
}
