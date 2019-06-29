package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class dw extends dp<List<dp<?>>> {
    private static final Map<String, zzcxo> zzbLo;
    private final ArrayList<dp<?>> zzbLx;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("concat", new zzcxr());
        hashMap.put("every", new zzcxs());
        hashMap.put("filter", new zzcxt());
        hashMap.put("forEach", new zzcxu());
        hashMap.put("indexOf", new zzcxv());
        hashMap.put("hasOwnProperty", zzczp.zzbJW);
        hashMap.put("join", new zzcxw());
        hashMap.put("lastIndexOf", new zzcxx());
        hashMap.put("map", new zzcxy());
        hashMap.put("pop", new zzcxz());
        hashMap.put("push", new zzcya());
        hashMap.put("reduce", new zzcyb());
        hashMap.put("reduceRight", new zzcyc());
        hashMap.put("reverse", new zzcyd());
        hashMap.put("shift", new zzcye());
        hashMap.put("slice", new zzcyf());
        hashMap.put("some", new zzcyg());
        hashMap.put("sort", new zzcyh());
        hashMap.put("splice", new zzcyl());
        hashMap.put("toString", new r());
        hashMap.put("unshift", new zzcym());
        zzbLo = Collections.unmodifiableMap(hashMap);
    }

    public dw(List<dp<?>> list) {
        zzbo.zzu(list);
        this.zzbLx = new ArrayList(list);
    }

    public final boolean equals(Object obj) {
        boolean z = false;
        if (this == obj) {
            return true;
        }
        if (obj instanceof dw) {
            List list = ((dw) obj).zzbLx;
            if (this.zzbLx.size() == list.size()) {
                boolean z2 = true;
                for (int i = 0; i < this.zzbLx.size(); i++) {
                    z2 = this.zzbLx.get(i) == null ? list.get(i) == null : ((dp) this.zzbLx.get(i)).equals(list.get(i));
                    if (!z2) {
                        break;
                    }
                }
                z = z2;
            }
        }
        return z;
    }

    public final void setSize(int i) {
        zzbo.zzb(i >= 0, (Object) "Invalid array length");
        if (this.zzbLx.size() != i) {
            if (this.zzbLx.size() < i) {
                this.zzbLx.ensureCapacity(i);
                for (int size = this.zzbLx.size(); size < i; size++) {
                    this.zzbLx.add(null);
                }
                return;
            }
            this.zzbLx.subList(i, this.zzbLx.size()).clear();
        }
    }

    public final String toString() {
        return this.zzbLx.toString();
    }

    public final Iterator<dp<?>> zzDk() {
        return new dy(this, new dx(this), super.zzDm());
    }

    public final /* synthetic */ Object zzDl() {
        return this.zzbLx;
    }

    public final List<dp<?>> zzDs() {
        return this.zzbLx;
    }

    public final void zza(int i, dp<?> dpVar) {
        if (i < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i >= this.zzbLx.size()) {
            setSize(i + 1);
        }
        this.zzbLx.set(i, dpVar);
    }

    public final dp<?> zzbG(int i) {
        if (i < 0 || i >= this.zzbLx.size()) {
            return dv.zzbLu;
        }
        dp<?> dpVar = (dp) this.zzbLx.get(i);
        if (dpVar == null) {
            dpVar = dv.zzbLu;
        }
        return dpVar;
    }

    public final boolean zzbH(int i) {
        return i >= 0 && i < this.zzbLx.size() && this.zzbLx.get(i) != null;
    }

    public final boolean zzga(String str) {
        return zzbLo.containsKey(str);
    }

    public final zzcxo zzgb(String str) {
        if (zzga(str)) {
            return (zzcxo) zzbLo.get(str);
        }
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 51);
        stringBuilder.append("Native Method ");
        stringBuilder.append(str);
        stringBuilder.append(" is not defined for type ListWrapper.");
        throw new IllegalStateException(stringBuilder.toString());
    }
}
