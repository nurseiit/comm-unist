package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public abstract class dp<T> {
    protected Map<String, dp<?>> zzbLl;

    public abstract String toString();

    public Iterator<dp<?>> zzDk() {
        return new dr();
    }

    public abstract T zzDl();

    /* Access modifiers changed, original: protected|final */
    public final Iterator<dp<?>> zzDm() {
        return this.zzbLl == null ? new dr() : new dq(this, this.zzbLl.keySet().iterator());
    }

    public final void zzc(String str, dp<?> dpVar) {
        if (this.zzbLl == null) {
            this.zzbLl = new HashMap();
        }
        this.zzbLl.put(str, dpVar);
    }

    public final boolean zzfY(String str) {
        return this.zzbLl != null && this.zzbLl.containsKey(str);
    }

    public dp<?> zzfZ(String str) {
        return this.zzbLl != null ? (dp) this.zzbLl.get(str) : dv.zzbLu;
    }

    public boolean zzga(String str) {
        return false;
    }

    public zzcxo zzgb(String str) {
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 56);
        stringBuilder.append("Attempting to access Native Method ");
        stringBuilder.append(str);
        stringBuilder.append(" on unsupported type.");
        throw new IllegalStateException(stringBuilder.toString());
    }
}
