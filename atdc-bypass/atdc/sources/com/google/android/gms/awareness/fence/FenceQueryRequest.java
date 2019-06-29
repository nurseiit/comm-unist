package com.google.android.gms.awareness.fence;

import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzbja;
import java.util.Collection;

public abstract class FenceQueryRequest extends zza {
    protected FenceQueryRequest() {
    }

    public static FenceQueryRequest all() {
        return new zzbja();
    }

    public static FenceQueryRequest forFences(Collection<String> collection) {
        zzbo.zzu(collection);
        for (String zzcF : collection) {
            zzbo.zzcF(zzcF);
        }
        return new zzbja((Collection) collection);
    }

    public static FenceQueryRequest forFences(String... strArr) {
        zzbo.zzu(strArr);
        for (String zzcF : strArr) {
            zzbo.zzcF(zzcF);
        }
        return new zzbja(strArr);
    }
}
