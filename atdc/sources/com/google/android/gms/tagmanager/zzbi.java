package com.google.android.gms.tagmanager;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.measurement.AppMeasurement.OnEventListener;

final class zzbi implements OnEventListener {
    private /* synthetic */ zzch zzbEG;

    zzbi(zzbg zzbg, zzch zzch) {
        this.zzbEG = zzch;
    }

    public final void onEvent(String str, String str2, Bundle bundle, long j) {
        try {
            this.zzbEG.onEvent(str, str2, bundle, j);
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }
}
