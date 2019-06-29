package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzbs;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@zzzn
public final class zzsa implements Iterable<zzry> {
    private final List<zzry> zzJO = new LinkedList();

    public static boolean zze(zzaka zzaka) {
        zzry zzg = zzg(zzaka);
        if (zzg == null) {
            return false;
        }
        zzg.zzJL.abort();
        return true;
    }

    public static boolean zzf(zzaka zzaka) {
        return zzg(zzaka) != null;
    }

    private static zzry zzg(zzaka zzaka) {
        Iterator it = zzbs.zzbW().iterator();
        while (it.hasNext()) {
            zzry zzry = (zzry) it.next();
            if (zzry.zzJH == zzaka) {
                return zzry;
            }
        }
        return null;
    }

    public final Iterator<zzry> iterator() {
        return this.zzJO.iterator();
    }

    public final void zza(zzry zzry) {
        this.zzJO.add(zzry);
    }

    public final void zzb(zzry zzry) {
        this.zzJO.remove(zzry);
    }

    public final int zzeE() {
        return this.zzJO.size();
    }
}
