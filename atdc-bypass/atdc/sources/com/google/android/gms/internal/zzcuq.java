package com.google.android.gms.internal;

import android.util.Log;

public final class zzcuq implements zzcvl {
    private int zzagX = 5;
    private boolean zzbHX = true;

    private final boolean zzz(int i) {
        return (this.zzbHX && Log.isLoggable("GoogleTagManager", i)) || (!this.zzbHX && this.zzagX <= i);
    }

    public final void e(String str) {
        if (zzz(6)) {
            Log.e("GoogleTagManager", str);
        }
    }

    public final void v(String str) {
        if (zzz(2)) {
            Log.v("GoogleTagManager", str);
        }
    }

    public final void zzaS(String str) {
        if (zzz(4)) {
            Log.i("GoogleTagManager", str);
        }
    }

    public final void zzaT(String str) {
        if (zzz(5)) {
            Log.w("GoogleTagManager", str);
        }
    }

    public final void zzb(String str, Throwable th) {
        if (zzz(6)) {
            Log.e("GoogleTagManager", str, th);
        }
    }

    public final void zzc(String str, Throwable th) {
        if (zzz(5)) {
            Log.w("GoogleTagManager", str, th);
        }
    }
}
