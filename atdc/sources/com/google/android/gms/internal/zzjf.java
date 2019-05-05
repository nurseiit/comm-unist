package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.zzn;

final class zzjf extends zza<zzow> {
    private /* synthetic */ zziz zzAI;
    private /* synthetic */ FrameLayout zzAJ;
    private /* synthetic */ FrameLayout zzAK;
    private /* synthetic */ Context zztF;

    zzjf(zziz zziz, FrameLayout frameLayout, FrameLayout frameLayout2, Context context) {
        this.zzAI = zziz;
        this.zzAJ = frameLayout;
        this.zzAK = frameLayout2;
        this.zztF = context;
        super();
    }

    public final /* synthetic */ Object zza(zzkh zzkh) throws RemoteException {
        return zzkh.createNativeAdViewDelegate(zzn.zzw(this.zzAJ), zzn.zzw(this.zzAK));
    }

    public final /* synthetic */ Object zzdo() throws RemoteException {
        zzow zzb = this.zzAI.zzAD.zzb(this.zztF, this.zzAJ, this.zzAK);
        if (zzb != null) {
            return zzb;
        }
        zziz.zzb(this.zztF, "native_ad_view_delegate");
        return new zzlq();
    }
}
