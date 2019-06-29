package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.R;
import com.google.android.gms.cast.framework.IntroductoryOverlay;
import com.google.android.gms.cast.framework.IntroductoryOverlay.Builder;
import com.google.android.gms.cast.framework.IntroductoryOverlay.OnOverlayDismissedListener;
import com.google.android.gms.cast.framework.IntroductoryOverlay.zza;

public final class zzauw extends RelativeLayout implements IntroductoryOverlay {
    private Activity mActivity;
    private final boolean zzasC;
    private boolean zzasE;
    private int zzasH;
    private final zzauz zzasI;
    private OnOverlayDismissedListener zzaso;

    public zzauw(Builder builder) {
        this(builder, null, R.attr.castIntroOverlayStyle);
    }

    @TargetApi(14)
    private zzauw(Builder builder, AttributeSet attributeSet, int i) {
        super(builder.getActivity(), null, i);
        this.mActivity = builder.getActivity();
        this.zzasC = builder.zznD();
        this.zzaso = builder.zznB();
        TypedArray obtainStyledAttributes = this.mActivity.getTheme().obtainStyledAttributes(null, R.styleable.CastIntroOverlay, i, R.style.CastIntroOverlay);
        if (builder.zznA() != null) {
            Rect rect = new Rect();
            builder.zznA().getGlobalVisibleRect(rect);
            this.zzasI = new zzauz();
            this.zzasI.x = rect.centerX();
            this.zzasI.y = rect.centerY();
            zzauz zzauz = this.zzasI;
            PorterDuffXfermode porterDuffXfermode = new PorterDuffXfermode(Mode.MULTIPLY);
            Paint paint = new Paint();
            paint.setColor(-1);
            paint.setAlpha(0);
            paint.setXfermode(porterDuffXfermode);
            paint.setAntiAlias(true);
            zzauz.zzasL = paint;
            this.zzasI.zzasM = builder.zznG();
            if (this.zzasI.zzasM == 0.0f) {
                this.zzasI.zzasM = obtainStyledAttributes.getDimension(R.styleable.CastIntroOverlay_castFocusRadius, 0.0f);
            }
        } else {
            this.zzasI = null;
        }
        LayoutInflater.from(this.mActivity).inflate(R.layout.cast_intro_overlay, this);
        this.zzasH = builder.zznC();
        if (this.zzasH == 0) {
            this.zzasH = obtainStyledAttributes.getColor(R.styleable.CastIntroOverlay_castBackgroundColor, Color.argb(0, 0, 0, 0));
        }
        TextView textView = (TextView) findViewById(R.id.textTitle);
        if (!TextUtils.isEmpty(builder.zznE())) {
            textView.setText(builder.zznE());
            int resourceId = obtainStyledAttributes.getResourceId(R.styleable.CastIntroOverlay_castTitleTextAppearance, 0);
            if (resourceId != 0) {
                textView.setTextAppearance(this.mActivity, resourceId);
            }
        }
        CharSequence zznF = builder.zznF();
        if (TextUtils.isEmpty(zznF)) {
            zznF = obtainStyledAttributes.getString(R.styleable.CastIntroOverlay_castButtonText);
        }
        i = obtainStyledAttributes.getColor(R.styleable.CastIntroOverlay_castButtonBackgroundColor, Color.argb(0, 0, 0, 0));
        Button button = (Button) findViewById(R.id.button);
        button.setText(zznF);
        button.getBackground().setColorFilter(i, Mode.MULTIPLY);
        int resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.CastIntroOverlay_castButtonTextAppearance, 0);
        if (resourceId2 != 0) {
            button.setTextAppearance(this.mActivity, resourceId2);
        }
        button.setOnClickListener(new zzaux(this));
        obtainStyledAttributes.recycle();
        setFitsSystemWindows(true);
    }

    private final void zznM() {
        zza.zzal(this.mActivity);
        if (this.zzaso != null) {
            this.zzaso.onOverlayDismissed();
            this.zzaso = null;
        }
        remove();
    }

    /* Access modifiers changed, original: protected|final */
    public final void dispatchDraw(Canvas canvas) {
        Bitmap createBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Config.ARGB_8888);
        Canvas canvas2 = new Canvas(createBitmap);
        canvas2.drawColor(this.zzasH);
        if (this.zzasI != null) {
            canvas2.drawCircle((float) this.zzasI.x, (float) this.zzasI.y, this.zzasI.zzasM, this.zzasI.zzasL);
        }
        canvas.drawBitmap(createBitmap, 0.0f, 0.0f, null);
        createBitmap.recycle();
        super.dispatchDraw(canvas);
    }

    /* Access modifiers changed, original: protected|final */
    public final void onDetachedFromWindow() {
        if (this.mActivity != null) {
            this.mActivity = null;
        }
        super.onDetachedFromWindow();
    }

    public final boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public final void remove() {
        if (this.mActivity != null) {
            ((ViewGroup) this.mActivity.getWindow().getDecorView()).removeView(this);
            this.mActivity = null;
        }
        this.zzaso = null;
    }

    public final void show() {
        if (this.mActivity != null && !zzaus.zzao(this.mActivity)) {
            if (this.zzasC && zza.zzam(this.mActivity)) {
                this.mActivity = null;
                this.zzaso = null;
                return;
            }
            if (!this.zzasE) {
                this.zzasE = true;
                ((ViewGroup) this.mActivity.getWindow().getDecorView()).addView(this);
            }
        }
    }
}
