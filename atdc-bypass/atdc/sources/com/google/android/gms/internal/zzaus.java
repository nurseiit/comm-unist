package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.RelativeLayout;
import com.google.android.gms.R;
import com.google.android.gms.cast.framework.IntroductoryOverlay;
import com.google.android.gms.cast.framework.IntroductoryOverlay.Builder;
import com.google.android.gms.cast.framework.IntroductoryOverlay.OnOverlayDismissedListener;
import com.google.android.gms.cast.framework.internal.featurehighlight.zza;
import com.google.android.gms.cast.framework.internal.featurehighlight.zzi;

public final class zzaus extends RelativeLayout implements IntroductoryOverlay {
    private Activity mActivity;
    private int mColor;
    private final boolean zzasC;
    private zza zzasD;
    private boolean zzasE;
    private View zzasl;
    private String zzasn;
    private OnOverlayDismissedListener zzaso;

    @TargetApi(15)
    public zzaus(Builder builder) {
        super(builder.getActivity());
        this.mActivity = builder.getActivity();
        this.zzasC = builder.zznD();
        this.zzaso = builder.zznB();
        this.zzasl = builder.zznA();
        this.zzasn = builder.zznE();
        this.mColor = builder.zznC();
    }

    private final void reset() {
        removeAllViews();
        this.mActivity = null;
        this.zzaso = null;
        this.zzasl = null;
        this.zzasD = null;
        this.zzasn = null;
        this.mColor = 0;
        this.zzasE = false;
    }

    static boolean zzao(Context context) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
        return accessibilityManager != null && accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled();
    }

    /* Access modifiers changed, original: protected|final */
    public final void onDetachedFromWindow() {
        reset();
        super.onDetachedFromWindow();
    }

    public final void remove() {
        if (this.zzasE) {
            ((ViewGroup) this.mActivity.getWindow().getDecorView()).removeView(this);
            reset();
        }
    }

    public final void show() {
        if (this.mActivity != null && this.zzasl != null && !this.zzasE && !zzao(this.mActivity)) {
            if (this.zzasC && IntroductoryOverlay.zza.zzam(this.mActivity)) {
                reset();
                return;
            }
            this.zzasD = new zza(this.mActivity);
            if (this.mColor != 0) {
                this.zzasD.zzaa(this.mColor);
            }
            addView(this.zzasD);
            zzi zzi = (zzi) this.mActivity.getLayoutInflater().inflate(R.layout.cast_help_text, this.zzasD, false);
            zzi.setText(this.zzasn, null);
            this.zzasD.zza(zzi);
            this.zzasD.zza(this.zzasl, null, true, new zzaut(this));
            this.zzasE = true;
            ((ViewGroup) this.mActivity.getWindow().getDecorView()).addView(this);
            this.zzasD.zzg(null);
        }
    }
}
