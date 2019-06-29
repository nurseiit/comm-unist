package com.google.android.gms.internal;

import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class nx<A, B, C> {
    private final Map<B, C> values;
    private final List<A> zzcaf;
    private final nk<A, B> zzcag;
    private nu<A, C> zzcah;
    private nu<A, C> zzcai;

    private nx(List<A> list, Map<B, C> map, nk<A, B> nkVar) {
        this.zzcaf = list;
        this.values = map;
        this.zzcag = nkVar;
    }

    private final C zzag(A a) {
        return this.values.get(this.zzcag.zzab(a));
    }

    public static <A, B, C> nv<A, C> zzc(List<A> list, Map<B, C> map, nk<A, B> nkVar, Comparator<A> comparator) {
        nx nxVar = new nx(list, map, nkVar);
        Collections.sort(list, comparator);
        Iterator it = new ny(list.size()).iterator();
        int size = list.size();
        while (it.hasNext()) {
            int i;
            oa oaVar = (oa) it.next();
            size -= oaVar.zzcam;
            if (oaVar.zzcal) {
                i = nr.zzbZZ;
            } else {
                nxVar.zze(nr.zzbZZ, oaVar.zzcam, size);
                size -= oaVar.zzcam;
                i = nr.zzbZY;
            }
            nxVar.zze(i, oaVar.zzcam, size);
        }
        return new nv(nxVar.zzcah == null ? np.zzFF() : nxVar.zzcah, comparator, null);
    }

    private final void zze(int i, int i2, int i3) {
        nq zzn = zzn(i3 + 1, i2 - 1);
        Object obj = this.zzcaf.get(i3);
        nu ntVar = i == nr.zzbZY ? new nt(obj, zzag(obj), null, zzn) : new no(obj, zzag(obj), null, zzn);
        if (this.zzcah == null) {
            this.zzcah = ntVar;
        } else {
            this.zzcai.zzb(ntVar);
        }
        this.zzcai = ntVar;
    }

    private final nq<A, C> zzn(int i, int i2) {
        if (i2 == 0) {
            return np.zzFF();
        }
        if (i2 == 1) {
            Object obj = this.zzcaf.get(i);
            return new no(obj, zzag(obj), null, null);
        }
        i2 /= 2;
        int i3 = i + i2;
        nq zzn = zzn(i, i2);
        nq zzn2 = zzn(i3 + 1, i2);
        Object obj2 = this.zzcaf.get(i3);
        return new no(obj2, zzag(obj2), zzn, zzn2);
    }
}
