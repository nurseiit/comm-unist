package com.google.android.gms.fitness.service;

import android.os.RemoteException;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.fitness.data.DataPoint;
import com.google.android.gms.fitness.data.zzt;
import java.util.List;

final class zzc implements SensorEventDispatcher {
    private final zzt zzaWV;

    zzc(zzt zzt) {
        this.zzaWV = (zzt) zzbo.zzu(zzt);
    }

    public final void publish(DataPoint dataPoint) throws RemoteException {
        dataPoint.zztK();
        this.zzaWV.zzc(dataPoint);
    }

    public final void publish(List<DataPoint> list) throws RemoteException {
        for (DataPoint publish : list) {
            publish(publish);
        }
    }
}
