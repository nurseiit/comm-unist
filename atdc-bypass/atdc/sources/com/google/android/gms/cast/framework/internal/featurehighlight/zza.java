package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.annotation.Nullable;
import android.support.v4.view.GestureDetectorCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import com.google.android.gms.R;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hu;
import com.google.android.gms.internal.ik;

public final class zza extends ViewGroup {
    private View targetView;
    private final int[] zzasP = new int[2];
    private final Rect zzasQ = new Rect();
    private final Rect zzasR = new Rect();
    private final zzl zzasS;
    private final zzj zzasT;
    private zzi zzasU;
    @Nullable
    private View zzasV;
    @Nullable
    private Animator zzasW;
    private final zzk zzasX;
    private final GestureDetectorCompat zzasY;
    @Nullable
    private GestureDetectorCompat zzasZ;
    private zzh zzata;
    private boolean zzatb;

    public zza(Context context) {
        super(context);
        setId(R.id.cast_featurehighlight_view);
        setWillNotDraw(false);
        this.zzasT = new zzj(context);
        this.zzasT.setCallback(this);
        this.zzasS = new zzl(context);
        this.zzasS.setCallback(this);
        this.zzasX = new zzk(this);
        this.zzasY = new GestureDetectorCompat(context, new zzb(this));
        this.zzasY.setIsLongpressEnabled(false);
        setVisibility(8);
    }

    private final void zza(Animator animator) {
        if (this.zzasW != null) {
            this.zzasW.cancel();
        }
        this.zzasW = animator;
        this.zzasW.start();
    }

    private final boolean zzc(float f, float f2) {
        return this.zzasR.contains(Math.round(f), Math.round(f2));
    }

    private final Animator zznR() {
        zzj zzj = this.zzasT;
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator duration = ObjectAnimator.ofFloat(zzj, "scale", new float[]{1.0f, 1.1f}).setDuration(500);
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(zzj, "scale", new float[]{1.1f, 1.0f}).setDuration(500);
        PropertyValuesHolder ofFloat = PropertyValuesHolder.ofFloat("pulseScale", new float[]{1.1f, 2.0f});
        PropertyValuesHolder ofFloat2 = PropertyValuesHolder.ofFloat("pulseAlpha", new float[]{1.0f, 0.0f});
        ObjectAnimator duration3 = ObjectAnimator.ofPropertyValuesHolder(zzj, new PropertyValuesHolder[]{ofFloat, ofFloat2}).setDuration(500);
        animatorSet.play(duration);
        animatorSet.play(duration2).with(duration3).after(duration);
        animatorSet.setInterpolator(hu.zzEi());
        animatorSet.setStartDelay(500);
        hl.zza(animatorSet, null);
        return animatorSet;
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean checkLayoutParams(LayoutParams layoutParams) {
        return layoutParams instanceof MarginLayoutParams;
    }

    /* Access modifiers changed, original: protected|final */
    public final LayoutParams generateDefaultLayoutParams() {
        return new MarginLayoutParams(-2, -2);
    }

    public final LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new MarginLayoutParams(getContext(), attributeSet);
    }

    /* Access modifiers changed, original: protected|final */
    public final LayoutParams generateLayoutParams(LayoutParams layoutParams) {
        return new MarginLayoutParams(layoutParams);
    }

    /* Access modifiers changed, original: protected|final */
    public final void onDraw(Canvas canvas) {
        canvas.save();
        this.zzasS.draw(canvas);
        this.zzasT.draw(canvas);
        if (this.targetView != null) {
            if (this.targetView.getParent() != null) {
                Bitmap createBitmap = Bitmap.createBitmap(this.targetView.getWidth(), this.targetView.getHeight(), Config.ARGB_8888);
                this.targetView.draw(new Canvas(createBitmap));
                int color = this.zzasS.getColor();
                int red = Color.red(color);
                int green = Color.green(color);
                color = Color.blue(color);
                for (int i = 0; i < createBitmap.getHeight(); i++) {
                    for (int i2 = 0; i2 < createBitmap.getWidth(); i2++) {
                        int pixel = createBitmap.getPixel(i2, i);
                        if (Color.alpha(pixel) != 0) {
                            createBitmap.setPixel(i2, i, Color.argb(Color.alpha(pixel), red, green, color));
                        }
                    }
                }
                canvas.drawBitmap(createBitmap, (float) this.zzasQ.left, (float) this.zzasQ.top, null);
            }
            canvas.restore();
            return;
        }
        throw new IllegalStateException("Neither target view nor drawable was set");
    }

    /* Access modifiers changed, original: protected|final */
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.targetView == null) {
            throw new IllegalStateException("Target view must be set before layout");
        }
        if (this.targetView.getParent() != null) {
            int[] iArr = this.zzasP;
            View view = this.targetView;
            getLocationInWindow(iArr);
            int i5 = iArr[0];
            int i6 = iArr[1];
            view.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i5;
            iArr[1] = iArr[1] - i6;
        }
        this.zzasQ.set(this.zzasP[0], this.zzasP[1], this.zzasP[0] + this.targetView.getWidth(), this.zzasP[1] + this.targetView.getHeight());
        this.zzasR.set(i, i2, i3, i4);
        this.zzasS.setBounds(this.zzasR);
        this.zzasT.setBounds(this.zzasR);
        this.zzasX.zza(this.zzasQ, this.zzasR);
    }

    /* Access modifiers changed, original: protected|final */
    public final void onMeasure(int i, int i2) {
        setMeasuredDimension(resolveSize(MeasureSpec.getSize(i), i), resolveSize(MeasureSpec.getSize(i2), i2));
    }

    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.zzatb = this.zzasQ.contains((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        if (this.zzatb) {
            if (this.zzasZ != null) {
                this.zzasZ.onTouchEvent(motionEvent);
                if (actionMasked == 1) {
                    motionEvent = MotionEvent.obtain(motionEvent);
                    motionEvent.setAction(3);
                }
            }
            if (this.targetView.getParent() != null) {
                this.targetView.onTouchEvent(motionEvent);
                return true;
            }
        }
        this.zzasY.onTouchEvent(motionEvent);
        return true;
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.zzasS || drawable == this.zzasT || drawable == null;
    }

    public final void zza(View view, @Nullable View view2, boolean z, zzh zzh) {
        this.targetView = (View) ik.zzu(view);
        this.zzasV = null;
        this.zzata = (zzh) ik.zzu(zzh);
        this.zzasZ = new GestureDetectorCompat(getContext(), new zzc(this, view, true, zzh));
        this.zzasZ.setIsLongpressEnabled(false);
        setVisibility(4);
    }

    public final void zza(zzi zzi) {
        this.zzasU = (zzi) ik.zzu(zzi);
        addView(zzi.asView(), 0);
    }

    public final void zzaa(@ColorInt int i) {
        this.zzasS.setColor(i);
    }

    public final void zzg(@Nullable Runnable runnable) {
        addOnLayoutChangeListener(new zzd(this, null));
    }

    public final void zzh(@Nullable Runnable runnable) {
        ObjectAnimator.ofFloat(this.zzasU.asView(), "alpha", new float[]{0.0f}).setDuration(200).setInterpolator(hu.zzEh());
        float exactCenterX = this.zzasQ.exactCenterX() - this.zzasS.getCenterX();
        float exactCenterY = this.zzasQ.exactCenterY() - this.zzasS.getCenterY();
        zzl zzl = this.zzasS;
        PropertyValuesHolder ofFloat = PropertyValuesHolder.ofFloat("scale", new float[]{0.0f});
        PropertyValuesHolder ofInt = PropertyValuesHolder.ofInt("alpha", new int[]{0});
        PropertyValuesHolder ofFloat2 = PropertyValuesHolder.ofFloat("translationX", new float[]{0.0f, exactCenterX});
        PropertyValuesHolder ofFloat3 = PropertyValuesHolder.ofFloat("translationY", new float[]{0.0f, exactCenterY});
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(zzl, new PropertyValuesHolder[]{ofFloat, ofFloat2, ofFloat3, ofInt});
        ofPropertyValuesHolder.setInterpolator(hu.zzEh());
        Animator duration = ofPropertyValuesHolder.setDuration(200);
        Animator zznS = this.zzasT.zznS();
        Animator animatorSet = new AnimatorSet();
        animatorSet.playTogether(new Animator[]{r0, duration, zznS});
        animatorSet.addListener(new zzg(this, runnable));
        zza(animatorSet);
    }

    public final void zzi(@Nullable Runnable runnable) {
        ObjectAnimator.ofFloat(this.zzasU.asView(), "alpha", new float[]{0.0f}).setDuration(200).setInterpolator(hu.zzEh());
        zzl zzl = this.zzasS;
        PropertyValuesHolder ofFloat = PropertyValuesHolder.ofFloat("scale", new float[]{1.125f});
        PropertyValuesHolder ofInt = PropertyValuesHolder.ofInt("alpha", new int[]{0});
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(zzl, new PropertyValuesHolder[]{ofFloat, ofInt});
        ofPropertyValuesHolder.setInterpolator(hu.zzEh());
        Animator duration = ofPropertyValuesHolder.setDuration(200);
        Animator zznS = this.zzasT.zznS();
        Animator animatorSet = new AnimatorSet();
        animatorSet.playTogether(new Animator[]{r0, duration, zznS});
        animatorSet.addListener(new zzf(this, runnable));
        zza(animatorSet);
    }

    public final void zznN() {
        if (this.targetView == null) {
            throw new IllegalStateException("Target view must be set before animation");
        }
        setVisibility(0);
        ObjectAnimator.ofFloat(this.zzasU.asView(), "alpha", new float[]{0.0f, 1.0f}).setDuration(350).setInterpolator(hu.zzEg());
        Animator zze = this.zzasS.zze(this.zzasQ.exactCenterX() - this.zzasS.getCenterX(), this.zzasQ.exactCenterY() - this.zzasS.getCenterY());
        zzj zzj = this.zzasT;
        PropertyValuesHolder ofFloat = PropertyValuesHolder.ofFloat("scale", new float[]{0.0f, 1.0f});
        PropertyValuesHolder ofFloat2 = PropertyValuesHolder.ofFloat("alpha", new float[]{0.0f, 1.0f});
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(zzj, new PropertyValuesHolder[]{ofFloat, ofFloat2});
        ofPropertyValuesHolder.setInterpolator(hu.zzEg());
        Animator duration = ofPropertyValuesHolder.setDuration(350);
        Animator animatorSet = new AnimatorSet();
        animatorSet.playTogether(new Animator[]{r1, zze, duration});
        animatorSet.addListener(new zze(this));
        zza(animatorSet);
    }

    /* Access modifiers changed, original: final */
    public final View zznO() {
        return this.zzasU.asView();
    }

    /* Access modifiers changed, original: final */
    public final zzl zznP() {
        return this.zzasS;
    }

    /* Access modifiers changed, original: final */
    public final zzj zznQ() {
        return this.zzasT;
    }
}
