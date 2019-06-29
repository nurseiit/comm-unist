package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class vm {
    private final vt zzcgU;
    private final xe zzcgV;

    public vm(vt vtVar) {
        this.zzcgU = vtVar;
        this.zzcgV = vtVar.zzIm();
    }

    private final void zza(List<vj> list, vl vlVar, List<vi> list2, List<qi> list3, xf xfVar) {
        ArrayList arrayList = new ArrayList();
        for (vi viVar : list2) {
            if (viVar.zzHZ().equals(vlVar)) {
                arrayList.add(viVar);
            }
        }
        Collections.sort(arrayList, new vn(this));
        arrayList = arrayList;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            vi viVar2 = (vi) obj;
            for (qi qiVar : list3) {
                if (qiVar.zza(vlVar)) {
                    vi zzg = (viVar2.zzHZ().equals(vl.VALUE) || viVar2.zzHZ().equals(vl.CHILD_REMOVED)) ? viVar2 : viVar2.zzg(xfVar.zza(viVar2.zzHY(), viVar2.zzHW().zzFn(), this.zzcgV));
                    list.add(qiVar.zza(zzg, this.zzcgU));
                }
            }
        }
    }

    public final List<vj> zza(List<vi> list, xf xfVar, List<qi> list2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (vi viVar : list) {
            if (viVar.zzHZ().equals(vl.CHILD_CHANGED)) {
                if ((this.zzcgV.compare(new xl(wp.zzIJ(), viVar.zzIb().zzFn()), new xl(wp.zzIJ(), viVar.zzHW().zzFn())) != 0 ? 1 : null) != null) {
                    arrayList2.add(vi.zzc(viVar.zzHY(), viVar.zzHW()));
                }
            }
        }
        ArrayList arrayList3 = arrayList;
        List<vi> list3 = list;
        List<qi> list4 = list2;
        xf xfVar2 = xfVar;
        zza(arrayList3, vl.CHILD_REMOVED, list3, list4, xfVar2);
        zza(arrayList3, vl.CHILD_ADDED, list3, list4, xfVar2);
        zza(arrayList3, vl.CHILD_MOVED, arrayList2, list4, xfVar2);
        list3 = list;
        zza(arrayList3, vl.CHILD_CHANGED, list3, list4, xfVar2);
        zza(arrayList3, vl.VALUE, list3, list4, xfVar2);
        return arrayList;
    }
}
