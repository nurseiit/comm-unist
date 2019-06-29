package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.zzbo;
import java.util.HashMap;
import java.util.Map;

public final class zzcwa {
    private zzcwa zzbIR;
    private Map<String, dp> zzbIS;

    public zzcwa() {
        this(null);
    }

    private zzcwa(@Nullable zzcwa zzcwa) {
        this.zzbIS = null;
        this.zzbIR = zzcwa;
    }

    public final boolean has(String str) {
        zzcwa zzcwa = this;
        while (true) {
            if (zzcwa.zzbIS != null && zzcwa.zzbIS.containsKey(str)) {
                return true;
            }
            if (zzcwa.zzbIR == null) {
                return false;
            }
            zzcwa = zzcwa.zzbIR;
        }
    }

    public final void remove(String str) {
        zzcwa zzcwa = this;
        while (true) {
            zzbo.zzae(zzcwa.has(str));
            if (zzcwa.zzbIS == null || !zzcwa.zzbIS.containsKey(str)) {
                zzcwa = zzcwa.zzbIR;
            } else {
                zzcwa.zzbIS.remove(str);
                return;
            }
        }
    }

    public final zzcwa zzCz() {
        return new zzcwa(this);
    }

    public final void zza(String str, dp<?> dpVar) {
        if (this.zzbIS == null) {
            this.zzbIS = new HashMap();
        }
        this.zzbIS.put(str, dpVar);
    }

    public final void zzb(String str, dp<?> dpVar) {
        zzcwa zzcwa = this;
        while (true) {
            if (zzcwa.zzbIS != null && zzcwa.zzbIS.containsKey(str)) {
                zzcwa.zzbIS.put(str, dpVar);
                return;
            } else if (zzcwa.zzbIR == null) {
                String str2 = "Trying to modify a non existent symbol: ";
                str = String.valueOf(str);
                throw new IllegalStateException(str.length() != 0 ? str2.concat(str) : new String(str2));
            } else {
                zzcwa = zzcwa.zzbIR;
            }
        }
    }

    public final dp<?> zzfK(String str) {
        zzcwa zzcwa = this;
        while (true) {
            if (zzcwa.zzbIS != null && zzcwa.zzbIS.containsKey(str)) {
                return (dp) zzcwa.zzbIS.get(str);
            }
            if (zzcwa.zzbIR != null) {
                zzcwa = zzcwa.zzbIR;
            } else {
                String str2 = "Trying to get a non existent symbol: ";
                str = String.valueOf(str);
                throw new IllegalStateException(str.length() != 0 ? str2.concat(str) : new String(str2));
            }
        }
    }
}
