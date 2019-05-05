package com.google.android.gms.internal;

import android.os.Build.VERSION;
import android.os.Looper;

final class ho extends ThreadLocal<hn> {
    ho() {
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Object initialValue() {
        if (VERSION.SDK_INT >= 16) {
            return new ht();
        }
        Looper myLooper = Looper.myLooper();
        if (myLooper != null) {
            return new hs(myLooper);
        }
        throw new IllegalStateException("The current thread must have a looper!");
    }
}
