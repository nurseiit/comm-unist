package com.google.android.gms.wearable;

import com.google.android.gms.common.data.DataHolder;

final class zzl implements Runnable {
    private /* synthetic */ zzc zzbRA;
    private /* synthetic */ DataHolder zzbRz;

    zzl(zzc zzc, DataHolder dataHolder) {
        this.zzbRA = zzc;
        this.zzbRz = dataHolder;
    }

    public final void run() {
        DataEventBuffer dataEventBuffer = new DataEventBuffer(this.zzbRz);
        try {
            WearableListenerService.this.onDataChanged(dataEventBuffer);
        } finally {
            dataEventBuffer.release();
        }
    }
}
