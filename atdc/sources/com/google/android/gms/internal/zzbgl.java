package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public abstract class zzbgl extends zzbgi implements SafeParcelable {
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!getClass().isInstance(obj)) {
            return false;
        }
        zzbgi zzbgi = (zzbgi) obj;
        for (zzbgj zzbgj : zzrL().values()) {
            if (zza(zzbgj)) {
                if (!zzbgi.zza(zzbgj) || !zzb(zzbgj).equals(zzbgi.zzb(zzbgj))) {
                    return false;
                }
            } else if (zzbgi.zza(zzbgj)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int i = 0;
        for (zzbgj zzbgj : zzrL().values()) {
            if (zza(zzbgj)) {
                i = (i * 31) + zzb(zzbgj).hashCode();
            }
        }
        return i;
    }

    public Object zzcH(String str) {
        return null;
    }

    public boolean zzcI(String str) {
        return false;
    }
}
