package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public final class zzcb extends zza implements DataItem {
    public static final Creator<zzcb> CREATOR = new zzcc();
    private final Uri mUri;
    private final Map<String, DataItemAsset> zzbSE;
    private byte[] zzbdY;

    zzcb(Uri uri, Bundle bundle, byte[] bArr) {
        this.mUri = uri;
        HashMap hashMap = new HashMap();
        bundle.setClassLoader(DataItemAssetParcelable.class.getClassLoader());
        for (String str : bundle.keySet()) {
            hashMap.put(str, (DataItemAssetParcelable) bundle.getParcelable(str));
        }
        this.zzbSE = hashMap;
        this.zzbdY = bArr;
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

    public final /* synthetic */ DataItem setData(byte[] bArr) {
        this.zzbdY = bArr;
        return this;
    }

    public final String toString() {
        String str;
        boolean isLoggable = Log.isLoggable("DataItem", 3);
        StringBuilder stringBuilder = new StringBuilder("DataItemParcelable[");
        stringBuilder.append("@");
        stringBuilder.append(Integer.toHexString(hashCode()));
        String valueOf = String.valueOf(this.zzbdY == null ? "null" : Integer.valueOf(this.zzbdY.length));
        StringBuilder stringBuilder2 = new StringBuilder(String.valueOf(valueOf).length() + 8);
        stringBuilder2.append(",dataSz=");
        stringBuilder2.append(valueOf);
        stringBuilder.append(stringBuilder2.toString());
        int size = this.zzbSE.size();
        stringBuilder2 = new StringBuilder(23);
        stringBuilder2.append(", numAssets=");
        stringBuilder2.append(size);
        stringBuilder.append(stringBuilder2.toString());
        valueOf = String.valueOf(this.mUri);
        stringBuilder2 = new StringBuilder(String.valueOf(valueOf).length() + 6);
        stringBuilder2.append(", uri=");
        stringBuilder2.append(valueOf);
        stringBuilder.append(stringBuilder2.toString());
        if (isLoggable) {
            stringBuilder.append("]\n  assets: ");
            for (String valueOf2 : this.zzbSE.keySet()) {
                String valueOf3 = String.valueOf(this.zzbSE.get(valueOf2));
                StringBuilder stringBuilder3 = new StringBuilder((String.valueOf(valueOf2).length() + 7) + String.valueOf(valueOf3).length());
                stringBuilder3.append("\n    ");
                stringBuilder3.append(valueOf2);
                stringBuilder3.append(": ");
                stringBuilder3.append(valueOf3);
                stringBuilder.append(stringBuilder3.toString());
            }
            str = "\n  ]";
        } else {
            str = "]";
        }
        stringBuilder.append(str);
        return stringBuilder.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, getUri(), i, false);
        Bundle bundle = new Bundle();
        bundle.setClassLoader(DataItemAssetParcelable.class.getClassLoader());
        for (Entry entry : this.zzbSE.entrySet()) {
            bundle.putParcelable((String) entry.getKey(), new DataItemAssetParcelable((DataItemAsset) entry.getValue()));
        }
        zzd.zza(parcel, 4, bundle, false);
        zzd.zza(parcel, 5, getData(), false);
        zzd.zzI(parcel, zze);
    }
}
