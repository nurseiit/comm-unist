package com.google.android.gms.wearable.internal;

import com.google.android.gms.wearable.DataEvent;
import com.google.android.gms.wearable.DataItem;

public final class zzbv implements DataEvent {
    private int zzamr;
    private DataItem zzbSB;

    public zzbv(DataEvent dataEvent) {
        this.zzamr = dataEvent.getType();
        this.zzbSB = (DataItem) dataEvent.getDataItem().freeze();
    }

    public final /* bridge */ /* synthetic */ Object freeze() {
        return this;
    }

    public final DataItem getDataItem() {
        return this.zzbSB;
    }

    public final int getType() {
        return this.zzamr;
    }

    public final boolean isDataValid() {
        return true;
    }

    public final String toString() {
        Object obj = getType() == 1 ? "changed" : getType() == 2 ? "deleted" : "unknown";
        String valueOf = String.valueOf(getDataItem());
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(obj).length() + 35) + String.valueOf(valueOf).length());
        stringBuilder.append("DataEventEntity{ type=");
        stringBuilder.append(obj);
        stringBuilder.append(", dataitem=");
        stringBuilder.append(valueOf);
        stringBuilder.append(" }");
        return stringBuilder.toString();
    }
}
