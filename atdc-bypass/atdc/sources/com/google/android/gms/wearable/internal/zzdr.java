package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbaz;
import java.lang.ref.WeakReference;
import java.util.Map;

final class zzdr<T> extends zzfc<Status> {
    private WeakReference<Map<T, zzga<T>>> zzbSR;
    private WeakReference<T> zzbSS;

    zzdr(Map<T, zzga<T>> map, T t, zzbaz<Status> zzbaz) {
        super(zzbaz);
        this.zzbSR = new WeakReference(map);
        this.zzbSS = new WeakReference(t);
    }

    public final void zza(Status status) {
        Map map = (Map) this.zzbSR.get();
        Object obj = this.zzbSS.get();
        if (!(status.getStatus().getStatusCode() != 4002 || map == null || obj == null)) {
            synchronized (map) {
                zzga zzga = (zzga) map.remove(obj);
                if (zzga != null) {
                    zzga.clear();
                }
            }
        }
        zzR(status);
    }
}
