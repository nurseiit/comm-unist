package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import org.json.JSONArray;
import org.json.JSONException;

public final class ab extends zzcxq {
    private final int zzamr;
    private final zzcwa zzbIJ;

    public ab(int i, zzcwa zzcwa) {
        this.zzamr = i;
        this.zzbIJ = zzcwa;
    }

    public final dp<?> zza(zzcwa zzcwa, dp<?>... dpVarArr) {
        boolean z = true;
        zzbo.zzaf(true);
        if (dpVarArr.length != 1) {
            z = false;
        }
        zzbo.zzaf(z);
        zzbo.zzaf(dpVarArr[0] instanceof eb);
        try {
            zzcxn zzO = cb.zzO(new JSONArray(((eb) dpVarArr[0]).value()).getJSONArray(0));
            zzO.zza(this.zzbIJ);
            dp<?> zzb = zzO.zzb(zzcwa, new dp[0]);
            if (this.zzamr == 0) {
                zzb = dv.zzbLu;
            }
            return zzb;
        } catch (JSONException e) {
            zzcvk.zzb("Unable to convert Custom Pixie to instruction", e);
            return dv.zzbLu;
        }
    }
}
