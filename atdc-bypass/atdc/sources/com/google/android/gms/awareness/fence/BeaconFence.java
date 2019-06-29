package com.google.android.gms.awareness.fence;

import android.support.annotation.RequiresPermission;
import com.google.android.gms.awareness.state.BeaconState.TypeFilter;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzbis;
import com.google.android.gms.internal.zzbiy;
import java.util.Collection;

public final class BeaconFence {
    private BeaconFence() {
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static AwarenessFence found(Collection<TypeFilter> collection) {
        boolean z = (collection == null || collection.isEmpty()) ? false : true;
        zzbo.zzaf(z);
        return found((TypeFilter[]) collection.toArray(new TypeFilter[collection.size()]));
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static AwarenessFence found(TypeFilter... typeFilterArr) {
        boolean z = typeFilterArr != null && typeFilterArr.length > 0;
        zzbo.zzaf(z);
        return zzbiy.zza(zzbis.zza(typeFilterArr));
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static AwarenessFence lost(Collection<TypeFilter> collection) {
        boolean z = (collection == null || collection.isEmpty()) ? false : true;
        zzbo.zzaf(z);
        return lost((TypeFilter[]) collection.toArray(new TypeFilter[collection.size()]));
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static AwarenessFence lost(TypeFilter... typeFilterArr) {
        boolean z = typeFilterArr != null && typeFilterArr.length > 0;
        zzbo.zzaf(z);
        return zzbiy.zza(zzbis.zzb(typeFilterArr));
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static AwarenessFence near(Collection<TypeFilter> collection) {
        boolean z = (collection == null || collection.isEmpty()) ? false : true;
        zzbo.zzaf(z);
        return near((TypeFilter[]) collection.toArray(new TypeFilter[collection.size()]));
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static AwarenessFence near(TypeFilter... typeFilterArr) {
        boolean z = typeFilterArr != null && typeFilterArr.length > 0;
        zzbo.zzaf(z);
        return zzbiy.zza(zzbis.zzc(typeFilterArr));
    }
}
