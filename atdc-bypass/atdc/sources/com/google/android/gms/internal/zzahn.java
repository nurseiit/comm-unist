package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

@TargetApi(19)
public class zzahn extends zzahl {
    public final boolean isAttachedToWindow(View view) {
        return view.isAttachedToWindow();
    }

    public final LayoutParams zzhW() {
        return new LayoutParams(-1, -1);
    }
}
