package com.google.android.gms.internal;

import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;

@zzzn
public final class zzadu extends zzaeb {
    private volatile zzads zzWL;
    private volatile zzadt zzWM;
    private volatile zzadv zzWz;

    public zzadu(zzadt zzadt) {
        this.zzWM = zzadt;
    }

    public final void zza(IObjectWrapper iObjectWrapper, zzaee zzaee) {
        if (this.zzWM != null) {
            this.zzWM.zzc(zzaee);
        }
    }

    public final void zza(zzads zzads) {
        this.zzWL = zzads;
    }

    public final void zza(zzadv zzadv) {
        this.zzWz = zzadv;
    }

    public final void zzc(IObjectWrapper iObjectWrapper, int i) {
        if (this.zzWL != null) {
            this.zzWL.zzv(i);
        }
    }

    public final void zzd(IObjectWrapper iObjectWrapper, int i) {
        if (this.zzWz != null) {
            this.zzWz.zza(zzn.zzE(iObjectWrapper).getClass().getName(), i);
        }
    }

    public final void zzq(IObjectWrapper iObjectWrapper) {
        if (this.zzWL != null) {
            this.zzWL.zzgT();
        }
    }

    public final void zzr(IObjectWrapper iObjectWrapper) {
        if (this.zzWz != null) {
            this.zzWz.zzaw(zzn.zzE(iObjectWrapper).getClass().getName());
        }
    }

    public final void zzs(IObjectWrapper iObjectWrapper) {
        if (this.zzWM != null) {
            this.zzWM.onRewardedVideoAdOpened();
        }
    }

    public final void zzt(IObjectWrapper iObjectWrapper) {
        if (this.zzWM != null) {
            this.zzWM.onRewardedVideoStarted();
        }
    }

    public final void zzu(IObjectWrapper iObjectWrapper) {
        if (this.zzWM != null) {
            this.zzWM.onRewardedVideoAdClosed();
        }
    }

    public final void zzv(IObjectWrapper iObjectWrapper) {
        if (this.zzWM != null) {
            this.zzWM.zzgQ();
        }
    }

    public final void zzw(IObjectWrapper iObjectWrapper) {
        if (this.zzWM != null) {
            this.zzWM.onRewardedVideoAdLeftApplication();
        }
    }
}
