package com.google.android.gms.wearable;

import android.net.Uri;
import android.util.Log;
import com.google.android.gms.internal.adp;
import com.google.android.gms.internal.hc;
import com.google.android.gms.internal.hd;

public class PutDataMapRequest {
    private final DataMap zzbRf = new DataMap();
    private final PutDataRequest zzbRg;

    private PutDataMapRequest(PutDataRequest putDataRequest, DataMap dataMap) {
        this.zzbRg = putDataRequest;
        if (dataMap != null) {
            this.zzbRf.putAll(dataMap);
        }
    }

    public static PutDataMapRequest create(String str) {
        return new PutDataMapRequest(PutDataRequest.create(str), null);
    }

    public static PutDataMapRequest createFromDataMapItem(DataMapItem dataMapItem) {
        return new PutDataMapRequest(PutDataRequest.zzt(dataMapItem.getUri()), dataMapItem.getDataMap());
    }

    public static PutDataMapRequest createWithAutoAppendedId(String str) {
        return new PutDataMapRequest(PutDataRequest.createWithAutoAppendedId(str), null);
    }

    public PutDataRequest asPutDataRequest() {
        hd zza = hc.zza(this.zzbRf);
        this.zzbRg.setData(adp.zzc(zza.zzbTF));
        int size = zza.zzbTG.size();
        int i = 0;
        while (i < size) {
            String num = Integer.toString(i);
            Asset asset = (Asset) zza.zzbTG.get(i);
            String valueOf;
            if (num == null) {
                valueOf = String.valueOf(asset);
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 26);
                stringBuilder.append("asset key cannot be null: ");
                stringBuilder.append(valueOf);
                throw new IllegalStateException(stringBuilder.toString());
            } else if (asset == null) {
                valueOf = "asset cannot be null: key=";
                String valueOf2 = String.valueOf(num);
                throw new IllegalStateException(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
            } else {
                if (Log.isLoggable(DataMap.TAG, 3)) {
                    String str = DataMap.TAG;
                    String valueOf3 = String.valueOf(asset);
                    StringBuilder stringBuilder2 = new StringBuilder((String.valueOf(num).length() + 33) + String.valueOf(valueOf3).length());
                    stringBuilder2.append("asPutDataRequest: adding asset: ");
                    stringBuilder2.append(num);
                    stringBuilder2.append(" ");
                    stringBuilder2.append(valueOf3);
                    Log.d(str, stringBuilder2.toString());
                }
                this.zzbRg.putAsset(num, asset);
                i++;
            }
        }
        return this.zzbRg;
    }

    public DataMap getDataMap() {
        return this.zzbRf;
    }

    public Uri getUri() {
        return this.zzbRg.getUri();
    }

    public boolean isUrgent() {
        return this.zzbRg.isUrgent();
    }

    public PutDataMapRequest setUrgent() {
        this.zzbRg.setUrgent();
        return this;
    }
}
