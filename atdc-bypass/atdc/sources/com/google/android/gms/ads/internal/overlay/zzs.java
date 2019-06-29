package com.google.android.gms.ads.internal.overlay;

import android.graphics.Bitmap;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.internal.zzafp;
import com.google.android.gms.internal.zzagz;
import com.google.android.gms.internal.zzzn;

@zzzn
final class zzs extends zzafp {
    final /* synthetic */ zzm zzOY;

    private zzs(zzm zzm) {
        this.zzOY = zzm;
    }

    /* synthetic */ zzs(zzm zzm, zzn zzn) {
        this(zzm);
    }

    public final void onStop() {
    }

    public final void zzbd() {
        Bitmap zza = zzbs.zzbU().zza(Integer.valueOf(this.zzOY.zzOG.zzPo.zzuw));
        if (zza != null) {
            zzagz.zzZr.post(new zzt(this, zzbs.zzbB().zza(this.zzOY.mActivity, zza, this.zzOY.zzOG.zzPo.zzuu, this.zzOY.zzOG.zzPo.zzuv)));
        }
    }
}
