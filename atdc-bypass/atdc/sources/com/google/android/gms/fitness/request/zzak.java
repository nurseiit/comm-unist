package com.google.android.gms.fitness.request;

import android.os.RemoteException;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.fitness.data.DataPoint;
import com.google.android.gms.fitness.data.zzu;

public final class zzak extends zzu {
    private final OnDataPointListener zzaWS;

    private zzak(OnDataPointListener onDataPointListener) {
        this.zzaWS = (OnDataPointListener) zzbo.zzu(onDataPointListener);
    }

    public final void zzc(DataPoint dataPoint) throws RemoteException {
        this.zzaWS.onDataPoint(dataPoint);
    }
}
