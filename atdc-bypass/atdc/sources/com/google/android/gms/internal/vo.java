package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;

public final class vo {
    private final wl zzbZE;
    private final qk zzccO;

    public vo(qd qdVar) {
        this.zzccO = qdVar.zzGT();
        this.zzbZE = qdVar.zzgP("EventRaiser");
    }

    public final void zzV(List<? extends vk> list) {
        if (this.zzbZE.zzIH()) {
            wl wlVar = this.zzbZE;
            int size = list.size();
            StringBuilder stringBuilder = new StringBuilder(28);
            stringBuilder.append("Raising ");
            stringBuilder.append(size);
            stringBuilder.append(" event(s)");
            wlVar.zzb(stringBuilder.toString(), null, new Object[0]);
        }
        this.zzccO.zzo(new vp(this, new ArrayList(list)));
    }
}
