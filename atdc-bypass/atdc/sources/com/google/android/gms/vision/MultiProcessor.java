package com.google.android.gms.vision;

import android.util.SparseArray;
import com.google.android.gms.vision.Detector.Detections;
import com.google.android.gms.vision.Detector.Processor;
import java.util.HashSet;

public class MultiProcessor<T> implements Processor<T> {
    private int zzbMR;
    private Factory<T> zzbNd;
    private SparseArray<zza> zzbNe;

    public static class Builder<T> {
        private MultiProcessor<T> zzbNf = new MultiProcessor();

        public Builder(Factory<T> factory) {
            if (factory == null) {
                throw new IllegalArgumentException("No factory supplied.");
            }
            this.zzbNf.zzbNd = factory;
        }

        public MultiProcessor<T> build() {
            return this.zzbNf;
        }

        public Builder<T> setMaxGapFrames(int i) {
            if (i < 0) {
                StringBuilder stringBuilder = new StringBuilder(28);
                stringBuilder.append("Invalid max gap: ");
                stringBuilder.append(i);
                throw new IllegalArgumentException(stringBuilder.toString());
            }
            this.zzbNf.zzbMR = i;
            return this;
        }
    }

    public interface Factory<T> {
        Tracker<T> create(T t);
    }

    class zza {
        private Tracker<T> zzbMQ;
        private int zzbMU;

        private zza(MultiProcessor multiProcessor) {
            this.zzbMU = 0;
        }
    }

    private MultiProcessor() {
        this.zzbNe = new SparseArray();
        this.zzbMR = 3;
    }

    private final void zza(Detections<T> detections) {
        SparseArray detectedItems = detections.getDetectedItems();
        for (int i = 0; i < detectedItems.size(); i++) {
            int keyAt = detectedItems.keyAt(i);
            Object valueAt = detectedItems.valueAt(i);
            zza zza = (zza) this.zzbNe.get(keyAt);
            zza.zzbMU = 0;
            zza.zzbMQ.onUpdate(detections, valueAt);
        }
    }

    public void receiveDetections(Detections<T> detections) {
        int keyAt;
        SparseArray detectedItems = detections.getDetectedItems();
        for (int i = 0; i < detectedItems.size(); i++) {
            keyAt = detectedItems.keyAt(i);
            Object valueAt = detectedItems.valueAt(i);
            if (this.zzbNe.get(keyAt) == null) {
                zza zza = new zza();
                zza.zzbMQ = this.zzbNd.create(valueAt);
                zza.zzbMQ.onNewItem(keyAt, valueAt);
                this.zzbNe.append(keyAt, zza);
            }
        }
        detectedItems = detections.getDetectedItems();
        HashSet<Integer> hashSet = new HashSet();
        for (int i2 = 0; i2 < this.zzbNe.size(); i2++) {
            keyAt = this.zzbNe.keyAt(i2);
            if (detectedItems.get(keyAt) == null) {
                zza zza2 = (zza) this.zzbNe.valueAt(i2);
                zza2.zzbMU = zza2.zzbMU + 1;
                if (zza2.zzbMU >= this.zzbMR) {
                    zza2.zzbMQ.onDone();
                    hashSet.add(Integer.valueOf(keyAt));
                } else {
                    zza2.zzbMQ.onMissing(detections);
                }
            }
        }
        for (Integer intValue : hashSet) {
            this.zzbNe.delete(intValue.intValue());
        }
        zza(detections);
    }

    public void release() {
        for (int i = 0; i < this.zzbNe.size(); i++) {
            ((zza) this.zzbNe.valueAt(i)).zzbMQ.onDone();
        }
        this.zzbNe.clear();
    }
}
