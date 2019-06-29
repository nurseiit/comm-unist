package com.google.android.gms.internal;

import android.graphics.Bitmap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

@zzzn
public final class zzaip {
    private Map<Integer, Bitmap> zzaar = new ConcurrentHashMap();
    private AtomicInteger zzaas = new AtomicInteger(0);

    public final Bitmap zza(Integer num) {
        return (Bitmap) this.zzaar.get(num);
    }

    public final int zzb(Bitmap bitmap) {
        if (bitmap == null) {
            zzajc.zzaC("Bitmap is null. Skipping putting into the Memory Map.");
            return -1;
        }
        int andIncrement = this.zzaas.getAndIncrement();
        this.zzaar.put(Integer.valueOf(andIncrement), bitmap);
        return andIncrement;
    }

    public final void zzb(Integer num) {
        this.zzaar.remove(num);
    }
}
