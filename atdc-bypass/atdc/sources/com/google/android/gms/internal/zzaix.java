package com.google.android.gms.internal;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import com.google.android.gms.ads.internal.zzbs;

@zzzn
public final class zzaix {
    private final View mView;
    private Activity zzaaC;
    private boolean zzaaD;
    private boolean zzaaE;
    private OnGlobalLayoutListener zzaaF;
    private OnScrollChangedListener zzaaG;
    private boolean zzzE;

    public zzaix(Activity activity, View view, OnGlobalLayoutListener onGlobalLayoutListener, OnScrollChangedListener onScrollChangedListener) {
        this.zzaaC = activity;
        this.mView = view;
        this.zzaaF = onGlobalLayoutListener;
        this.zzaaG = onScrollChangedListener;
    }

    private final void zzii() {
        if (!this.zzaaD) {
            if (this.zzaaF != null) {
                if (this.zzaaC != null) {
                    zzbs.zzbz();
                    zzagz.zza(this.zzaaC, this.zzaaF);
                }
                zzbs.zzbX();
                zzajv.zza(this.mView, this.zzaaF);
            }
            if (this.zzaaG != null) {
                if (this.zzaaC != null) {
                    zzbs.zzbz();
                    zzagz.zza(this.zzaaC, this.zzaaG);
                }
                zzbs.zzbX();
                zzajv.zza(this.mView, this.zzaaG);
            }
            this.zzaaD = true;
        }
    }

    private final void zzij() {
        if (this.zzaaC != null && this.zzaaD) {
            if (!(this.zzaaF == null || this.zzaaC == null)) {
                zzbs.zzbB().zzb(this.zzaaC, this.zzaaF);
            }
            if (!(this.zzaaG == null || this.zzaaC == null)) {
                zzbs.zzbz();
                zzagz.zzb(this.zzaaC, this.zzaaG);
            }
            this.zzaaD = false;
        }
    }

    public final void onAttachedToWindow() {
        this.zzaaE = true;
        if (this.zzzE) {
            zzii();
        }
    }

    public final void onDetachedFromWindow() {
        this.zzaaE = false;
        zzij();
    }

    public final void zzi(Activity activity) {
        this.zzaaC = activity;
    }

    public final void zzig() {
        this.zzzE = true;
        if (this.zzaaE) {
            zzii();
        }
    }

    public final void zzih() {
        this.zzzE = false;
        zzij();
    }
}
