package com.google.android.gms.internal;

import android.content.Context;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

final class zzcxe {

    static class zza {
        private static volatile ExecutorService zzbJJ;

        private zza() {
        }

        public static ExecutorService zzbx(Context context) {
            if (zzbJJ == null) {
                synchronized (zza.class) {
                    if (zzbJJ == null) {
                        zzbJJ = new zzcuu(context, 1, 1, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new zzcxf());
                    }
                }
            }
            return zzbJJ;
        }
    }
}
