package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.nearby.connection.Payload;
import com.google.android.gms.nearby.connection.PayloadCallback;

final class zzclh extends zzclf<PayloadCallback> {
    private /* synthetic */ zzcoc zzbwV;

    zzclh(zzclg zzclg, zzcoc zzcoc) {
        this.zzbwV = zzcoc;
        super();
    }

    public final /* synthetic */ void zzq(Object obj) {
        PayloadCallback payloadCallback = (PayloadCallback) obj;
        Payload zza = zzcoq.zza(this.zzbwV.zzzK());
        if (zza == null) {
            Log.w("NearbyConnectionsClient", String.format("Failed to convert incoming ParcelablePayload %d to Payload.", new Object[]{Long.valueOf(this.zzbwV.zzzK().getId())}));
            return;
        }
        payloadCallback.onPayloadReceived(this.zzbwV.zzzF(), zza);
    }
}
