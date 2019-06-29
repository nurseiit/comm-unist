package com.google.android.gms.internal;

import android.app.Activity;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class abr {
    private static final abr zzcpV = new abr();
    private final Map<Object, abs> zzcpW = new HashMap();
    private final Object zzcpX = new Object();

    static class zza extends zzbds {
        private final List<abs> mListeners = new ArrayList();

        private zza(zzbdt zzbdt) {
            super(zzbdt);
            this.zzaEG.zza("StorageOnStopCallback", (zzbds) this);
        }

        public static zza zzs(Activity activity) {
            zzbdt zzb = zzbds.zzb(new zzbdr(activity));
            zza zza = (zza) zzb.zza("StorageOnStopCallback", zza.class);
            return zza == null ? new zza(zzb) : zza;
        }

        @MainThread
        public final void onStop() {
            ArrayList arrayList;
            synchronized (this.mListeners) {
                arrayList = new ArrayList(this.mListeners);
                this.mListeners.clear();
            }
            arrayList = arrayList;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                abs abs = (abs) obj;
                if (abs != null) {
                    Log.d("StorageOnStopCallback", "removing subscription from activity.");
                    abs.zzEf().run();
                    abr.zzLc().zzau(abs.zzLd());
                }
            }
        }

        public final void zza(abs abs) {
            synchronized (this.mListeners) {
                this.mListeners.add(abs);
            }
        }

        public final void zzb(abs abs) {
            synchronized (this.mListeners) {
                this.mListeners.remove(abs);
            }
        }
    }

    private abr() {
    }

    @NonNull
    public static abr zzLc() {
        return zzcpV;
    }

    public final void zza(@NonNull Activity activity, @NonNull Object obj, @NonNull Runnable runnable) {
        synchronized (this.zzcpX) {
            abs abs = new abs(activity, runnable, obj);
            zza.zzs(activity).zza(abs);
            this.zzcpW.put(obj, abs);
        }
    }

    public final void zzau(@NonNull Object obj) {
        synchronized (this.zzcpX) {
            abs abs = (abs) this.zzcpW.get(obj);
            if (abs != null) {
                zza.zzs(abs.getActivity()).zzb(abs);
            }
        }
    }
}
