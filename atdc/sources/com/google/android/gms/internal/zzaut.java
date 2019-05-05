package com.google.android.gms.internal;

import com.google.android.gms.cast.framework.IntroductoryOverlay.zza;
import com.google.android.gms.cast.framework.internal.featurehighlight.zzh;

final class zzaut implements zzh {
    final /* synthetic */ zzaus zzasF;

    zzaut(zzaus zzaus) {
        this.zzasF = zzaus;
    }

    public final void dismiss() {
        if (this.zzasF.zzasE) {
            zza.zzal(this.zzasF.mActivity);
            this.zzasF.zzasD.zzh(new zzauv(this));
        }
    }

    public final void zznL() {
        if (this.zzasF.zzasE) {
            zza.zzal(this.zzasF.mActivity);
            this.zzasF.zzasD.zzi(new zzauu(this));
        }
    }
}
