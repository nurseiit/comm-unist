package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.zzf;

final class zzhv implements zzf {
    private /* synthetic */ zzhs zzzs;

    zzhv(zzhs zzhs) {
        this.zzzs = zzhs;
    }

    public final void onConnected(@Nullable Bundle bundle) {
        synchronized (this.zzzs.mLock) {
            try {
                if (this.zzzs.zzzq != null) {
                    this.zzzs.zzzr = this.zzzs.zzzq.zzdd();
                }
            } catch (DeadObjectException e) {
                zzajc.zzb("Unable to obtain a cache service instance.", e);
                this.zzzs.disconnect();
            }
            this.zzzs.mLock.notifyAll();
        }
    }

    public final void onConnectionSuspended(int i) {
        synchronized (this.zzzs.mLock) {
            this.zzzs.zzzr = null;
            this.zzzs.mLock.notifyAll();
        }
    }
}
