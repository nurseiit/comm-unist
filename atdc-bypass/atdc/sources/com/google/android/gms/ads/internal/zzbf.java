package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.zzaff;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zznu;
import com.google.android.gms.internal.zzpw;

final class zzbf implements Runnable {
    private /* synthetic */ zzaff zztx;
    private /* synthetic */ zzbb zzuQ;
    private /* synthetic */ String zzuR;

    zzbf(zzbb zzbb, String str, zzaff zzaff) {
        this.zzuQ = zzbb;
        this.zzuR = str;
        this.zztx = zzaff;
    }

    public final void run() {
        try {
            ((zzpw) this.zzuQ.zzsP.zzwi.get(this.zzuR)).zza((zznu) this.zztx.zzXT);
        } catch (RemoteException e) {
            zzajc.zzc("Could not call onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded().", e);
        }
    }
}
