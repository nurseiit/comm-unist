package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import java.util.Map;

@zzzn
public final class zzaie {
    private static zzs zzaad;
    private static final Object zzaae = new Object();
    private static zzaii<Void> zzaaf = new zzaif();

    public zzaie(Context context) {
        zzU(context);
    }

    private static zzs zzU(Context context) {
        zzs zzs;
        synchronized (zzaae) {
            if (zzaad == null) {
                zzaad = zzas.zza(context.getApplicationContext(), null);
            }
            zzs = zzaad;
        }
        return zzs;
    }

    public final zzajm<String> zza(int i, String str, @Nullable Map<String, String> map, @Nullable byte[] bArr) {
        zzain zzain = new zzain(this, null);
        zzaad.zzc(new zzaih(this, i, str, zzain, new zzaig(this, str, zzain), bArr, map));
        return zzain;
    }

    public final <T> zzajm<T> zza(String str, zzaii<T> zzaii) {
        zzain zzain = new zzain(this, null);
        zzaad.zzc(new zzaij(str, zzaii, zzain));
        return zzain;
    }

    public final zzajm<String> zzb(String str, Map<String, String> map) {
        return zza(0, str, map, null);
    }
}
