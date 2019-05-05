package com.google.android.gms.cast.framework;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.preference.PreferenceManager;
import android.support.annotation.ColorRes;
import android.support.annotation.DimenRes;
import android.support.annotation.StringRes;
import android.support.v7.app.MediaRouteButton;
import android.view.MenuItem;
import android.view.View;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zzq;
import com.google.android.gms.internal.zzaus;
import com.google.android.gms.internal.zzauw;

public interface IntroductoryOverlay {

    public static class Builder {
        private Activity mActivity;
        private View zzasl;
        private int zzasm;
        private String zzasn;
        private OnOverlayDismissedListener zzaso;
        private boolean zzasp;
        private float zzasq;
        private String zzasr;

        public Builder(Activity activity, MediaRouteButton mediaRouteButton) {
            this.mActivity = (Activity) zzbo.zzu(activity);
            this.zzasl = (View) zzbo.zzu(mediaRouteButton);
        }

        @TargetApi(11)
        public Builder(Activity activity, MenuItem menuItem) {
            this.mActivity = (Activity) zzbo.zzu(activity);
            this.zzasl = ((MenuItem) zzbo.zzu(menuItem)).getActionView();
        }

        public IntroductoryOverlay build() {
            return zzq.zzrZ() ? new zzaus(this) : new zzauw(this);
        }

        public final Activity getActivity() {
            return this.mActivity;
        }

        public Builder setButtonText(@StringRes int i) {
            this.zzasr = this.mActivity.getResources().getString(i);
            return this;
        }

        public Builder setButtonText(String str) {
            this.zzasr = str;
            return this;
        }

        public Builder setFocusRadius(float f) {
            this.zzasq = f;
            return this;
        }

        public Builder setFocusRadiusId(@DimenRes int i) {
            this.zzasq = this.mActivity.getResources().getDimension(i);
            return this;
        }

        public Builder setOnOverlayDismissedListener(OnOverlayDismissedListener onOverlayDismissedListener) {
            this.zzaso = onOverlayDismissedListener;
            return this;
        }

        public Builder setOverlayColor(@ColorRes int i) {
            this.zzasm = this.mActivity.getResources().getColor(i);
            return this;
        }

        public Builder setSingleTime() {
            this.zzasp = true;
            return this;
        }

        public Builder setTitleText(@StringRes int i) {
            this.zzasn = this.mActivity.getResources().getString(i);
            return this;
        }

        public Builder setTitleText(String str) {
            this.zzasn = str;
            return this;
        }

        public final View zznA() {
            return this.zzasl;
        }

        public final OnOverlayDismissedListener zznB() {
            return this.zzaso;
        }

        public final int zznC() {
            return this.zzasm;
        }

        public final boolean zznD() {
            return this.zzasp;
        }

        public final String zznE() {
            return this.zzasn;
        }

        public final String zznF() {
            return this.zzasr;
        }

        public final float zznG() {
            return this.zzasq;
        }
    }

    public interface OnOverlayDismissedListener {
        void onOverlayDismissed();
    }

    public static class zza {
        public static void zzal(Context context) {
            PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean("googlecast-introOverlayShown", true).apply();
        }

        public static boolean zzam(Context context) {
            return PreferenceManager.getDefaultSharedPreferences(context).getBoolean("googlecast-introOverlayShown", false);
        }
    }

    void remove();

    void show();
}
