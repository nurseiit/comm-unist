package com.google.android.gms.awareness.fence;

import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzbiy;
import java.util.ArrayList;
import java.util.Collection;

public abstract class AwarenessFence extends zza {
    protected AwarenessFence() {
    }

    public static AwarenessFence and(Collection<AwarenessFence> collection) {
        boolean z = (collection == null || collection.isEmpty()) ? false : true;
        zzbo.zzaf(z);
        return zzbiy.zze(zzd(collection));
    }

    public static AwarenessFence and(AwarenessFence... awarenessFenceArr) {
        boolean z = awarenessFenceArr != null && awarenessFenceArr.length > 0;
        zzbo.zzaf(z);
        return zzbiy.zze(zza(awarenessFenceArr));
    }

    public static AwarenessFence not(AwarenessFence awarenessFence) {
        zzbo.zzu(awarenessFence);
        return zzbiy.zza((zzbiy) awarenessFence);
    }

    public static AwarenessFence or(Collection<AwarenessFence> collection) {
        boolean z = (collection == null || collection.isEmpty()) ? false : true;
        zzbo.zzaf(z);
        return zzbiy.zzf(zzd(collection));
    }

    public static AwarenessFence or(AwarenessFence... awarenessFenceArr) {
        boolean z = awarenessFenceArr != null && awarenessFenceArr.length > 0;
        zzbo.zzaf(z);
        return zzbiy.zzf(zza(awarenessFenceArr));
    }

    private static ArrayList<zzbiy> zza(AwarenessFence[] awarenessFenceArr) {
        ArrayList arrayList = new ArrayList(awarenessFenceArr.length);
        for (AwarenessFence awarenessFence : awarenessFenceArr) {
            arrayList.add((zzbiy) awarenessFence);
        }
        return arrayList;
    }

    private static ArrayList<zzbiy> zzd(Collection<AwarenessFence> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (AwarenessFence awarenessFence : collection) {
            arrayList.add((zzbiy) awarenessFence);
        }
        return arrayList;
    }
}
