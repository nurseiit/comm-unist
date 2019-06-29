package com.google.android.gms.internal;

import android.os.Bundle;

final class zzcws implements Runnable {
    private /* synthetic */ String val$name;
    private boolean zzbJq = false;
    private /* synthetic */ Bundle zzbJr;
    private /* synthetic */ String zzbJs;
    private /* synthetic */ long zzbJt;
    private /* synthetic */ zzcwr zzbJv;
    private /* synthetic */ String zzbth;

    zzcws(zzcwr zzcwr, String str, Bundle bundle, String str2, long j, String str3) {
        this.zzbJv = zzcwr;
        this.val$name = str;
        this.zzbJr = bundle;
        this.zzbJs = str2;
        this.zzbJt = j;
        this.zzbth = str3;
    }

    public final void run() {
        if (this.zzbJv.zzbJp.zzbJl == 3) {
            this.zzbJv.zzbJp.zzbJg.zza(this.val$name, this.zzbJr, this.zzbJs, this.zzbJt, false);
        } else if (this.zzbJv.zzbJp.zzbJl == 1 || this.zzbJv.zzbJp.zzbJl == 2) {
            if (this.zzbJq) {
                zzcvk.zzaT("Invalid state - not expecting to see a deferred event during container loading.");
                return;
            }
            zzcvk.v(String.format("Container not loaded yet: deferring event listener by enqueuing the event: name = %s, origin = %s, params = %s.", new Object[]{this.val$name, this.zzbth, this.zzbJr}));
            this.zzbJq = true;
            this.zzbJv.zzbJp.zzbJm.add(this);
        } else if (this.zzbJv.zzbJp.zzbJl == 4) {
            zzcvk.v(String.format("Container failed to load: skipping event listener by ignoring the event: name = %s, origin = %s, params = %s.", new Object[]{this.val$name, this.zzbth, this.zzbJr}));
        } else {
            int zza = this.zzbJv.zzbJp.zzbJl;
            StringBuilder stringBuilder = new StringBuilder(28);
            stringBuilder.append("Unexpected state:");
            stringBuilder.append(zza);
            zzcup.zzd(stringBuilder.toString(), this.zzbJv.zzbJp.mContext);
        }
    }
}
