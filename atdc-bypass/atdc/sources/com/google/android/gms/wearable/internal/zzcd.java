package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.util.Log;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public final class zzcd extends zzc implements DataItem {
    private final int zzbcP;

    public zzcd(DataHolder dataHolder, int i, int i2) {
        super(dataHolder, i);
        this.zzbcP = i2;
    }

    public final /* synthetic */ Object freeze() {
        return new zzca(this);
    }

    public final Map<String, DataItemAsset> getAssets() {
        HashMap hashMap = new HashMap(this.zzbcP);
        for (int i = 0; i < this.zzbcP; i++) {
            zzbz zzbz = new zzbz(this.zzaCX, this.zzaFx + i);
            if (zzbz.getDataItemKey() != null) {
                hashMap.put(zzbz.getDataItemKey(), zzbz);
            }
        }
        return hashMap;
    }

    public final byte[] getData() {
        return getByteArray("data");
    }

    public final Uri getUri() {
        return Uri.parse(getString("path"));
    }

    public final DataItem setData(byte[] bArr) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        boolean isLoggable = Log.isLoggable("DataItem", 3);
        byte[] data = getData();
        Map assets = getAssets();
        StringBuilder stringBuilder = new StringBuilder("DataItemInternal{ ");
        String valueOf = String.valueOf(getUri());
        StringBuilder stringBuilder2 = new StringBuilder(String.valueOf(valueOf).length() + 4);
        stringBuilder2.append("uri=");
        stringBuilder2.append(valueOf);
        stringBuilder.append(stringBuilder2.toString());
        String valueOf2 = String.valueOf(data == null ? "null" : Integer.valueOf(data.length));
        StringBuilder stringBuilder3 = new StringBuilder(String.valueOf(valueOf2).length() + 9);
        stringBuilder3.append(", dataSz=");
        stringBuilder3.append(valueOf2);
        stringBuilder.append(stringBuilder3.toString());
        int size = assets.size();
        stringBuilder3 = new StringBuilder(23);
        stringBuilder3.append(", numAssets=");
        stringBuilder3.append(size);
        stringBuilder.append(stringBuilder3.toString());
        if (isLoggable && !assets.isEmpty()) {
            stringBuilder.append(", assets=[");
            Object obj = "";
            for (Entry entry : assets.entrySet()) {
                valueOf = (String) entry.getKey();
                String valueOf3 = String.valueOf(((DataItemAsset) entry.getValue()).getId());
                stringBuilder2 = new StringBuilder(((String.valueOf(obj).length() + 2) + String.valueOf(valueOf).length()) + String.valueOf(valueOf3).length());
                stringBuilder2.append(obj);
                stringBuilder2.append(valueOf);
                stringBuilder2.append(": ");
                stringBuilder2.append(valueOf3);
                stringBuilder.append(stringBuilder2.toString());
                obj = ", ";
            }
            stringBuilder.append("]");
        }
        stringBuilder.append(" }");
        return stringBuilder.toString();
    }
}
