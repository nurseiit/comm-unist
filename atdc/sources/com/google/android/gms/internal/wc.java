package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class wc {
    private final Map<wp, vi> zzchy = new HashMap();

    public final List<vi> zzIC() {
        return new ArrayList(this.zzchy.values());
    }

    public final void zza(vi viVar) {
        vl zzHZ = viVar.zzHZ();
        wp zzHY = viVar.zzHY();
        if (this.zzchy.containsKey(zzHY)) {
            vi viVar2 = (vi) this.zzchy.get(zzHY);
            vl zzHZ2 = viVar2.zzHZ();
            if (zzHZ == vl.CHILD_ADDED && zzHZ2 == vl.CHILD_REMOVED) {
                this.zzchy.put(viVar.zzHY(), vi.zza(zzHY, viVar.zzHW(), viVar2.zzHW()));
                return;
            } else if (zzHZ == vl.CHILD_REMOVED && zzHZ2 == vl.CHILD_ADDED) {
                this.zzchy.remove(zzHY);
                return;
            } else if (zzHZ == vl.CHILD_REMOVED && zzHZ2 == vl.CHILD_CHANGED) {
                this.zzchy.put(zzHY, vi.zzb(zzHY, viVar2.zzIb()));
                return;
            } else if (zzHZ == vl.CHILD_CHANGED && zzHZ2 == vl.CHILD_ADDED) {
                this.zzchy.put(zzHY, vi.zza(zzHY, viVar.zzHW()));
                return;
            } else if (zzHZ == vl.CHILD_CHANGED && zzHZ2 == vl.CHILD_CHANGED) {
                this.zzchy.put(zzHY, vi.zza(zzHY, viVar.zzHW(), viVar2.zzIb()));
                return;
            } else {
                String valueOf = String.valueOf(viVar);
                String valueOf2 = String.valueOf(viVar2);
                StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 48) + String.valueOf(valueOf2).length());
                stringBuilder.append("Illegal combination of changes: ");
                stringBuilder.append(valueOf);
                stringBuilder.append(" occurred after ");
                stringBuilder.append(valueOf2);
                throw new IllegalStateException(stringBuilder.toString());
            }
        }
        this.zzchy.put(viVar.zzHY(), viVar);
    }
}
