package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.common.api.Status;

final class zzctc extends zzcta {
    private /* synthetic */ zzctb zzbCC;

    zzctc(zzctb zzctb) {
        this.zzbCC = zzctb;
    }

    public final void zzH(Status status) {
        if (this.zzbCC.zzbCB) {
            Log.d("SearchAuth", "ClearTokenImpl success");
        }
        this.zzbCC.setResult(status);
    }
}
