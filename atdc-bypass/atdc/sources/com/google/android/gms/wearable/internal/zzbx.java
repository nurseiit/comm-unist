package com.google.android.gms.wearable.internal;

import com.google.android.gms.wearable.DataItemAsset;

public final class zzbx implements DataItemAsset {
    private final String zzBN;
    private final String zzIi;

    public zzbx(DataItemAsset dataItemAsset) {
        this.zzIi = dataItemAsset.getId();
        this.zzBN = dataItemAsset.getDataItemKey();
    }

    public final /* bridge */ /* synthetic */ Object freeze() {
        return this;
    }

    public final String getDataItemKey() {
        return this.zzBN;
    }

    public final String getId() {
        return this.zzIi;
    }

    public final boolean isDataValid() {
        return true;
    }

    public final String toString() {
        String str;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("DataItemAssetEntity[");
        stringBuilder.append("@");
        stringBuilder.append(Integer.toHexString(hashCode()));
        if (this.zzIi == null) {
            str = ",noid";
        } else {
            stringBuilder.append(",");
            str = this.zzIi;
        }
        stringBuilder.append(str);
        stringBuilder.append(", key=");
        stringBuilder.append(this.zzBN);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}
