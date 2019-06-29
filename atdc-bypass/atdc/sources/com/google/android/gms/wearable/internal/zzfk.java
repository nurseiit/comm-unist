package com.google.android.gms.wearable.internal;

import com.google.android.gms.internal.zzbaz;
import com.google.android.gms.wearable.NodeApi.GetConnectedNodesResult;
import java.util.ArrayList;

final class zzfk extends zzfc<GetConnectedNodesResult> {
    public zzfk(zzbaz<GetConnectedNodesResult> zzbaz) {
        super(zzbaz);
    }

    public final void zza(zzcy zzcy) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(zzcy.zzbSO);
        zzR(new zzee(zzev.zzaY(zzcy.statusCode), arrayList));
    }
}
