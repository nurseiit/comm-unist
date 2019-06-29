package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ParcelFileDescriptor.AutoCloseOutputStream;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.internal.zzz;
import com.google.android.gms.nearby.connection.ConnectionsStatusCodes;
import com.google.android.gms.nearby.connection.Payload;
import java.io.IOException;

public final class zzckm extends zzz<zzcnd> {
    private final long zzbwJ = ((long) hashCode());
    private zzcom zzbwK;

    public zzckm(Context context, Looper looper, zzq zzq, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 54, zzq, connectionCallbacks, onConnectionFailedListener);
    }

    public final void disconnect() {
        if (isConnected()) {
            try {
                ((zzcnd) zzrf()).zza(new zzckk());
            } catch (RemoteException e) {
                Log.w("NearbyConnectionsClient", "Failed to notify client disconnect.", e);
            }
        }
        if (this.zzbwK != null) {
            this.zzbwK.shutdown();
            this.zzbwK = null;
        }
        super.disconnect();
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(@NonNull IInterface iInterface) {
        super.zza((IInterface) (zzcnd) iInterface);
        this.zzbwK = new zzcom();
    }

    public final void zza(zzbaz<Status> zzbaz, String[] strArr, Payload payload, boolean z) throws RemoteException {
        try {
            Pair zza = zzcoq.zza(payload);
            ((zzcnd) zzrf()).zza(new zzcov(new zzclj(zzbaz).asBinder(), strArr, (zzcoo) zza.first, z));
            if (zza.second != null) {
                Pair pair = (Pair) zza.second;
                this.zzbwK.zza(payload.asStream().asInputStream(), new AutoCloseOutputStream((ParcelFileDescriptor) pair.first), new AutoCloseOutputStream((ParcelFileDescriptor) pair.second), payload.getId());
            }
        } catch (IOException unused) {
            zzbaz.setResult(new Status(ConnectionsStatusCodes.STATUS_PAYLOAD_IO_ERROR));
        }
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
        return queryLocalInterface instanceof zzcnd ? (zzcnd) queryLocalInterface : new zzcne(iBinder);
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdb() {
        return "com.google.android.gms.nearby.connection.service.START";
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdc() {
        return "com.google.android.gms.nearby.internal.connection.INearbyConnectionService";
    }

    public final void zzj(zzbaz<Status> zzbaz, String str) throws RemoteException {
        ((zzcnd) zzrf()).zza(new zzcor(new zzclj(zzbaz).asBinder(), str));
    }

    /* Access modifiers changed, original: protected|final */
    public final Bundle zzmo() {
        Bundle bundle = new Bundle();
        bundle.putLong("clientId", this.zzbwJ);
        return bundle;
    }
}
