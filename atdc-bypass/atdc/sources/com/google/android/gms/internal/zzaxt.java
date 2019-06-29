package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzi;

public abstract class zzaxt extends zzaxw {
    private Handler mHandler;
    private long zzaxG;
    private Runnable zzaxH;
    protected boolean zzaxI;
    protected final zze zzvw;

    private zzaxt(String str, zze zze, String str2, String str3) {
        this(str, zze, str2, null, 1000);
    }

    public zzaxt(String str, zze zze, String str2, String str3, long j) {
        super(str, str2, str3);
        this.mHandler = new Handler(Looper.getMainLooper());
        this.zzvw = zze;
        this.zzaxH = new zzaxv(this);
        this.zzaxG = 1000;
        zzZ(false);
    }

    public zzaxt(String str, String str2, String str3) {
        this(str, zzi.zzrY(), str2, null);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzZ(boolean z) {
        if (this.zzaxI != z) {
            this.zzaxI = z;
            if (z) {
                this.mHandler.postDelayed(this.zzaxH, this.zzaxG);
                return;
            }
            this.mHandler.removeCallbacks(this.zzaxH);
        }
    }

    public void zzoz() {
        zzZ(false);
    }

    public abstract boolean zzz(long j);
}
