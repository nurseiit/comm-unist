package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.RemoteException;

final class zzcwq implements Runnable {
    private /* synthetic */ String val$name;
    private boolean zzbJq = false;
    private /* synthetic */ Bundle zzbJr;
    private /* synthetic */ String zzbJs;
    private /* synthetic */ long zzbJt;
    private /* synthetic */ zzcwp zzbJu;
    private /* synthetic */ String zzbth;

    zzcwq(zzcwp zzcwp, String str, Bundle bundle, String str2, long j, String str3) {
        this.zzbJu = zzcwp;
        this.val$name = str;
        this.zzbJr = bundle;
        this.zzbJs = str2;
        this.zzbJt = j;
        this.zzbth = str3;
    }

    public final void run() {
        if (this.zzbJu.zzbJp.zzbJl == 3) {
            this.zzbJu.zzbJp.zzbJg.zza(this.val$name, this.zzbJr, this.zzbJs, this.zzbJt, true);
        } else if (this.zzbJu.zzbJp.zzbJl == 4) {
            zzcvk.v(String.format("Container failed to load: skipping  event interceptor by logging event back to Firebase directly: name = %s, origin = %s, params = %s.", new Object[]{this.val$name, this.zzbJs, this.zzbJr}));
            try {
                this.zzbJu.zzbJp.zzbHN.logEventInternalNoInterceptor(this.zzbJs, this.val$name, this.zzbJr, this.zzbJt);
            } catch (RemoteException e) {
                zzcup.zza("Error logging event on measurement proxy: ", e, this.zzbJu.zzbJp.mContext);
            }
        } else if (this.zzbJu.zzbJp.zzbJl != 1 && this.zzbJu.zzbJp.zzbJl != 2) {
            int zza = this.zzbJu.zzbJp.zzbJl;
            StringBuilder stringBuilder = new StringBuilder(28);
            stringBuilder.append("Unexpected state:");
            stringBuilder.append(zza);
            zzcup.zzd(stringBuilder.toString(), this.zzbJu.zzbJp.mContext);
        } else if (this.zzbJq) {
            zzcup.zzd("Invalid state - not expecting to see a deferredevent during container loading.", this.zzbJu.zzbJp.mContext);
        } else {
            zzcvk.v(String.format("Container not loaded yet: deferring event interceptor by enqueuing the event: name = %s, origin = %s, params = %s.", new Object[]{this.val$name, this.zzbth, this.zzbJr}));
            this.zzbJq = true;
            this.zzbJu.zzbJp.zzbJm.add(this);
        }
    }
}
