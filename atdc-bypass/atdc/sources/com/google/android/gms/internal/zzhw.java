package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zzg;

final class zzhw implements zzg {
    private /* synthetic */ zzhs zzzs;

    zzhw(zzhs zzhs) {
        this.zzzs = zzhs;
    }

    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        synchronized (this.zzzs.mLock) {
            this.zzzs.zzzr = null;
            if (this.zzzs.zzzq != null) {
                this.zzzs.zzzq = null;
            }
            this.zzzs.mLock.notifyAll();
        }
    }
}
