package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.plus.PlusShare;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class bv extends zzcxq {
    private static final Set<String> zzbKj = new HashSet(Arrays.asList(new String[]{"GET", "HEAD", "POST", "PUT"}));
    private final zzcux zzbKi;

    public bv(zzcux zzcux) {
        this.zzbKi = zzcux;
    }

    /* Access modifiers changed, original: protected|final|varargs */
    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        Map map;
        zzbo.zzaf(true);
        zzbo.zzaf(dpVarArr.length == 1);
        zzbo.zzaf(dpVarArr[0] instanceof dz);
        dp zzfZ = dpVarArr[0].zzfZ(PlusShare.KEY_CALL_TO_ACTION_URL);
        zzbo.zzaf(zzfZ instanceof eb);
        String value = ((eb) zzfZ).value();
        dp zzfZ2 = dpVarArr[0].zzfZ("method");
        if (zzfZ2 == dv.zzbLu) {
            zzfZ2 = new eb("GET");
        }
        zzbo.zzaf(zzfZ2 instanceof eb);
        String value2 = ((eb) zzfZ2).value();
        zzbo.zzaf(zzbKj.contains(value2));
        zzfZ2 = dpVarArr[0].zzfZ("uniqueId");
        boolean z = zzfZ2 == dv.zzbLu || zzfZ2 == dv.zzbLt || (zzfZ2 instanceof eb);
        zzbo.zzaf(z);
        String value3 = (zzfZ2 == dv.zzbLu || zzfZ2 == dv.zzbLt) ? null : ((eb) zzfZ2).value();
        zzfZ2 = dpVarArr[0].zzfZ("headers");
        z = zzfZ2 == dv.zzbLu || (zzfZ2 instanceof dz);
        zzbo.zzaf(z);
        HashMap hashMap = new HashMap();
        if (zzfZ2 == dv.zzbLu) {
            map = null;
        } else {
            for (Entry entry : ((dz) zzfZ2).zzDt().entrySet()) {
                String str = (String) entry.getKey();
                dp dpVar = (dp) entry.getValue();
                if (dpVar instanceof eb) {
                    hashMap.put(str, ((eb) dpVar).value());
                } else {
                    zzcvk.zzaT(String.format("Ignore the non-string value of header key %s.", new Object[]{str}));
                }
            }
            map = hashMap;
        }
        dp zzfZ3 = dpVarArr[0].zzfZ("body");
        boolean z2 = zzfZ3 == dv.zzbLu || (zzfZ3 instanceof eb);
        zzbo.zzaf(z2);
        String value4 = zzfZ3 == dv.zzbLu ? null : ((eb) zzfZ3).value();
        if ((value2.equals("GET") || value2.equals("HEAD")) && value4 != null) {
            zzcvk.zzaT(String.format("Body of %s hit will be ignored: %s.", new Object[]{value2, value4}));
        }
        this.zzbKi.zza(value, value2, value3, map, value4);
        zzcvk.v(String.format("QueueRequest:\n  url = %s,\n  method = %s,\n  uniqueId = %s,\n  headers = %s,\n  body = %s", new Object[]{value, value2, value3, map, value4}));
        return dv.zzbLu;
    }
}
