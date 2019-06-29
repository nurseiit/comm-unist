package com.google.android.gms.wearable;

import android.net.Uri;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.internal.ado;
import com.google.android.gms.internal.hc;
import com.google.android.gms.internal.hd;
import com.google.android.gms.internal.he;
import java.util.ArrayList;

public class DataMapItem {
    private final Uri mUri;
    private final DataMap zzbRf;

    private DataMapItem(DataItem dataItem) {
        this.mUri = dataItem.getUri();
        this.zzbRf = zza((DataItem) dataItem.freeze());
    }

    public static DataMapItem fromDataItem(DataItem dataItem) {
        if (dataItem != null) {
            return new DataMapItem(dataItem);
        }
        throw new IllegalStateException("provided dataItem is null");
    }

    private static DataMap zza(DataItem dataItem) {
        if (dataItem.getData() == null && dataItem.getAssets().size() > 0) {
            throw new IllegalArgumentException("Cannot create DataMapItem from a DataItem  that wasn't made with DataMapItem.");
        } else if (dataItem.getData() == null) {
            return new DataMap();
        } else {
            StringBuilder stringBuilder;
            try {
                ArrayList arrayList = new ArrayList();
                int size = dataItem.getAssets().size();
                for (int i = 0; i < size; i++) {
                    DataItemAsset dataItemAsset = (DataItemAsset) dataItem.getAssets().get(Integer.toString(i));
                    if (dataItemAsset == null) {
                        String valueOf = String.valueOf(dataItem);
                        stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 64);
                        stringBuilder.append("Cannot find DataItemAsset referenced in data at ");
                        stringBuilder.append(i);
                        stringBuilder.append(" for ");
                        stringBuilder.append(valueOf);
                        throw new IllegalStateException(stringBuilder.toString());
                    }
                    arrayList.add(Asset.createFromRef(dataItemAsset.getId()));
                }
                return hc.zza(new hd(he.zzy(dataItem.getData()), arrayList));
            } catch (ado | NullPointerException e) {
                String valueOf2 = String.valueOf(dataItem.getUri());
                String valueOf3 = String.valueOf(Base64.encodeToString(dataItem.getData(), 0));
                stringBuilder = new StringBuilder((String.valueOf(valueOf2).length() + 50) + String.valueOf(valueOf3).length());
                stringBuilder.append("Unable to parse datamap from dataItem. uri=");
                stringBuilder.append(valueOf2);
                stringBuilder.append(", data=");
                stringBuilder.append(valueOf3);
                Log.w("DataItem", stringBuilder.toString());
                String valueOf4 = String.valueOf(dataItem.getUri());
                StringBuilder stringBuilder2 = new StringBuilder(String.valueOf(valueOf4).length() + 44);
                stringBuilder2.append("Unable to parse datamap from dataItem.  uri=");
                stringBuilder2.append(valueOf4);
                throw new IllegalStateException(stringBuilder2.toString(), e);
            }
        }
    }

    public DataMap getDataMap() {
        return this.zzbRf;
    }

    public Uri getUri() {
        return this.mUri;
    }
}
