package com.google.android.gms.tagmanager;

import android.util.Log;

public final class zzba implements zzdk {
    private int zzagX = 5;

    public final void e(String str) {
        if (this.zzagX <= 6) {
            Log.e("GoogleTagManager", str);
        }
    }

    public final void setLogLevel(int i) {
        this.zzagX = i;
    }

    public final void v(String str) {
        if (this.zzagX <= 2) {
            Log.v("GoogleTagManager", str);
        }
    }

    public final void zzaC(String str) {
        if (this.zzagX <= 3) {
            Log.d("GoogleTagManager", str);
        }
    }

    public final void zzaS(String str) {
        if (this.zzagX <= 4) {
            Log.i("GoogleTagManager", str);
        }
    }

    public final void zzaT(String str) {
        if (this.zzagX <= 5) {
            Log.w("GoogleTagManager", str);
        }
    }

    public final void zzb(String str, Throwable th) {
        if (this.zzagX <= 6) {
            Log.e("GoogleTagManager", str, th);
        }
    }

    public final void zzc(String str, Throwable th) {
        if (this.zzagX <= 5) {
            Log.w("GoogleTagManager", str, th);
        }
    }
}
