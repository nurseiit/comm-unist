package com.google.android.gms.internal;

import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;

@zzzn
public final class zzajv {
    public static void zza(View view, OnGlobalLayoutListener onGlobalLayoutListener) {
        new zzajw(view, onGlobalLayoutListener).zzio();
    }

    public static void zza(View view, OnScrollChangedListener onScrollChangedListener) {
        new zzajx(view, onScrollChangedListener).zzio();
    }
}
