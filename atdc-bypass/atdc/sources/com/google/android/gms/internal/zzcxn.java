package com.google.android.gms.internal;

import java.util.Arrays;
import java.util.List;

public final class zzcxn extends zzcxq {
    private final String mName;
    private zzcwa zzbIR = null;
    private final List<String> zzbJS;
    private final List<ea> zzbJT;

    public zzcxn(zzcwa zzcwa, String str, List<String> list, List<ea> list2) {
        this.mName = str;
        this.zzbJS = list;
        this.zzbJT = list2;
    }

    public final String getName() {
        return this.mName;
    }

    public final String toString() {
        String str = this.mName;
        String valueOf = String.valueOf(this.zzbJS.toString());
        String valueOf2 = String.valueOf(this.zzbJT.toString());
        StringBuilder stringBuilder = new StringBuilder(((String.valueOf(str).length() + 26) + String.valueOf(valueOf).length()) + String.valueOf(valueOf2).length());
        stringBuilder.append(str);
        stringBuilder.append("\n\tparams: ");
        stringBuilder.append(valueOf);
        stringBuilder.append("\n\t: statements: ");
        stringBuilder.append(valueOf2);
        return stringBuilder.toString();
    }

    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        try {
            zzcwa = this.zzbIR.zzCz();
            for (int i = 0; i < this.zzbJS.size(); i++) {
                String str;
                dp dpVar;
                if (dpVarArr.length > i) {
                    str = (String) this.zzbJS.get(i);
                    dpVar = dpVarArr[i];
                } else {
                    str = (String) this.zzbJS.get(i);
                    dpVar = dv.zzbLu;
                }
                zzcwa.zza(str, dpVar);
            }
            zzcwa.zza("arguments", new dw(Arrays.asList(dpVarArr)));
            for (ea zza : this.zzbJT) {
                dp zza2 = ed.zza(zzcwa, zza);
                if ((zza2 instanceof dv) && ((dv) zza2).zzDr()) {
                    return ((dv) zza2).zzDq();
                }
            }
        } catch (RuntimeException e) {
            String str2 = this.mName;
            String valueOf = String.valueOf(e.getMessage());
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(str2).length() + 33) + String.valueOf(valueOf).length());
            stringBuilder.append("Internal error - Function call: ");
            stringBuilder.append(str2);
            stringBuilder.append("\n");
            stringBuilder.append(valueOf);
            zzcvk.e(stringBuilder.toString());
        }
        return dv.zzbLu;
    }

    public final void zza(zzcwa zzcwa) {
        this.zzbIR = zzcwa;
    }
}
