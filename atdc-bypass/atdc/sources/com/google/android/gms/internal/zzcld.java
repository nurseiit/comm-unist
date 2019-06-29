package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.nearby.connection.Connections.MessageListener;
import com.google.android.gms.nearby.connection.Payload;

final class zzcld extends zzclf<MessageListener> {
    private /* synthetic */ zzcoc zzbwV;

    zzcld(zzclc zzclc, zzcoc zzcoc) {
        this.zzbwV = zzcoc;
        super();
    }

    public final /* synthetic */ void zzq(Object obj) {
        MessageListener messageListener = (MessageListener) obj;
        Payload zza = zzcoq.zza(this.zzbwV.zzzK());
        if (zza == null) {
            Log.w("NearbyConnectionsClient", String.format("Failed to convert incoming ParcelablePayload %d to Payload.", new Object[]{Long.valueOf(this.zzbwV.zzzK().getId())}));
            return;
        }
        if (zza.getType() == 1) {
            messageListener.onMessageReceived(this.zzbwV.zzzF(), zza.asBytes(), this.zzbwV.zzzL());
        }
    }
}
