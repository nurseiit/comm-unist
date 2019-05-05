package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.wearable.DataEvent;
import com.google.android.gms.wearable.DataItem;

public final class zzbw extends zzc implements DataEvent {
    private final int zzbcP;

    public zzbw(DataHolder dataHolder, int i, int i2) {
        super(dataHolder, i);
        this.zzbcP = i2;
    }

    public final /* synthetic */ Object freeze() {
        return new zzbv(this);
    }

    public final DataItem getDataItem() {
        return new zzcd(this.zzaCX, this.zzaFx, this.zzbcP);
    }

    public final int getType() {
        return getInteger("event_type");
    }

    public final String toString() {
        Object obj = getType() == 1 ? "changed" : getType() == 2 ? "deleted" : "unknown";
        String valueOf = String.valueOf(getDataItem());
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(obj).length() + 32) + String.valueOf(valueOf).length());
        stringBuilder.append("DataEventRef{ type=");
        stringBuilder.append(obj);
        stringBuilder.append(", dataitem=");
        stringBuilder.append(valueOf);
        stringBuilder.append(" }");
        return stringBuilder.toString();
    }
}
