package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.util.Log;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public final class zzca implements DataItem {
    private Uri mUri;
    private Map<String, DataItemAsset> zzbSE;
    private byte[] zzbdY;

    public zzca(DataItem dataItem) {
        this.mUri = dataItem.getUri();
        this.zzbdY = dataItem.getData();
        HashMap hashMap = new HashMap();
        for (Entry entry : dataItem.getAssets().entrySet()) {
            if (entry.getKey() != null) {
                hashMap.put((String) entry.getKey(), (DataItemAsset) ((DataItemAsset) entry.getValue()).freeze());
            }
        }
        this.zzbSE = Collections.unmodifiableMap(hashMap);
    }

    public final /* bridge */ /* synthetic */ Object freeze() {
        return this;
    }

    public final Map<String, DataItemAsset> getAssets() {
        return this.zzbSE;
    }

    public final byte[] getData() {
        return this.zzbdY;
    }

    public final Uri getUri() {
        return this.mUri;
    }

    public final boolean isDataValid() {
        return true;
    }

    public final DataItem setData(byte[] bArr) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        boolean isLoggable = Log.isLoggable("DataItem", 3);
        StringBuilder stringBuilder = new StringBuilder("DataItemEntity{ ");
        String valueOf = String.valueOf(this.mUri);
        StringBuilder stringBuilder2 = new StringBuilder(String.valueOf(valueOf).length() + 4);
        stringBuilder2.append("uri=");
        stringBuilder2.append(valueOf);
        stringBuilder.append(stringBuilder2.toString());
        valueOf = String.valueOf(this.zzbdY == null ? "null" : Integer.valueOf(this.zzbdY.length));
        stringBuilder2 = new StringBuilder(String.valueOf(valueOf).length() + 9);
        stringBuilder2.append(", dataSz=");
        stringBuilder2.append(valueOf);
        stringBuilder.append(stringBuilder2.toString());
        int size = this.zzbSE.size();
        stringBuilder2 = new StringBuilder(23);
        stringBuilder2.append(", numAssets=");
        stringBuilder2.append(size);
        stringBuilder.append(stringBuilder2.toString());
        if (isLoggable && !this.zzbSE.isEmpty()) {
            stringBuilder.append(", assets=[");
            Object obj = "";
            for (Entry entry : this.zzbSE.entrySet()) {
                String str = (String) entry.getKey();
                String valueOf2 = String.valueOf(((DataItemAsset) entry.getValue()).getId());
                StringBuilder stringBuilder3 = new StringBuilder(((String.valueOf(obj).length() + 2) + String.valueOf(str).length()) + String.valueOf(valueOf2).length());
                stringBuilder3.append(obj);
                stringBuilder3.append(str);
                stringBuilder3.append(": ");
                stringBuilder3.append(valueOf2);
                stringBuilder.append(stringBuilder3.toString());
                obj = ", ";
            }
            stringBuilder.append("]");
        }
        stringBuilder.append(" }");
        return stringBuilder.toString();
    }
}
