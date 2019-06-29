package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.location.zzaa;

public final class zzcdj extends zzcbx {
    private final zzcdd zzbiS;

    public zzcdj(Context context, Looper looper, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener, String str) {
        this(context, looper, connectionCallbacks, onConnectionFailedListener, str, zzq.zzaA(context));
    }

    public zzcdj(Context context, Looper looper, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener, String str, zzq zzq) {
        super(context, looper, connectionCallbacks, onConnectionFailedListener, str, zzq);
        this.zzbiS = new zzcdd(context, this.zzbiB);
    }

    public final void disconnect() {
        synchronized (this.zzbiS) {
            if (isConnected()) {
                try {
                    this.zzbiS.removeAllListeners();
                    this.zzbiS.zzvR();
                } catch (Exception e) {
                    Log.e("LocationClientImpl", "Client disconnected before listeners could be cleaned up", e);
                }
            }
            super.disconnect();
        }
    }

    public final Location getLastLocation() {
        return this.zzbiS.getLastLocation();
    }

    public final void zza(long j, PendingIntent pendingIntent) throws RemoteException {
        zzre();
        zzbo.zzu(pendingIntent);
        zzbo.zzb(j >= 0, (Object) "detectionIntervalMillis must be >= 0");
        ((zzccz) zzrf()).zza(j, true, pendingIntent);
    }

    public final void zza(PendingIntent pendingIntent, zzccu zzccu) throws RemoteException {
        this.zzbiS.zza(pendingIntent, zzccu);
    }

    public final void zza(zzbdy<LocationListener> zzbdy, zzccu zzccu) throws RemoteException {
        this.zzbiS.zza((zzbdy) zzbdy, zzccu);
    }

    public final void zza(zzccu zzccu) throws RemoteException {
        this.zzbiS.zza(zzccu);
    }

    public final void zza(zzcdn zzcdn, zzbdw<LocationCallback> zzbdw, zzccu zzccu) throws RemoteException {
        synchronized (this.zzbiS) {
            this.zzbiS.zza(zzcdn, (zzbdw) zzbdw, zzccu);
        }
    }

    public final void zza(GeofencingRequest geofencingRequest, PendingIntent pendingIntent, zzbaz<Status> zzbaz) throws RemoteException {
        zzre();
        zzbo.zzb((Object) geofencingRequest, (Object) "geofencingRequest can't be null.");
        zzbo.zzb((Object) pendingIntent, (Object) "PendingIntent must be specified.");
        zzbo.zzb((Object) zzbaz, (Object) "ResultHolder not provided.");
        ((zzccz) zzrf()).zza(geofencingRequest, pendingIntent, new zzcdk(zzbaz));
    }

    public final void zza(LocationRequest locationRequest, PendingIntent pendingIntent, zzccu zzccu) throws RemoteException {
        this.zzbiS.zza(locationRequest, pendingIntent, zzccu);
    }

    public final void zza(LocationRequest locationRequest, zzbdw<LocationListener> zzbdw, zzccu zzccu) throws RemoteException {
        synchronized (this.zzbiS) {
            this.zzbiS.zza(locationRequest, (zzbdw) zzbdw, zzccu);
        }
    }

    public final void zza(LocationSettingsRequest locationSettingsRequest, zzbaz<LocationSettingsResult> zzbaz, String str) throws RemoteException {
        zzre();
        boolean z = false;
        zzbo.zzb(locationSettingsRequest != null, (Object) "locationSettingsRequest can't be null nor empty.");
        if (zzbaz != null) {
            z = true;
        }
        zzbo.zzb(z, (Object) "listener can't be null.");
        ((zzccz) zzrf()).zza(locationSettingsRequest, new zzcdm(zzbaz), str);
    }

    public final void zza(zzaa zzaa, zzbaz<Status> zzbaz) throws RemoteException {
        zzre();
        zzbo.zzb((Object) zzaa, (Object) "removeGeofencingRequest can't be null.");
        zzbo.zzb((Object) zzbaz, (Object) "ResultHolder not provided.");
        ((zzccz) zzrf()).zza(zzaa, new zzcdl(zzbaz));
    }

    public final void zzai(boolean z) throws RemoteException {
        this.zzbiS.zzai(z);
    }

    public final void zzb(zzbdy<LocationCallback> zzbdy, zzccu zzccu) throws RemoteException {
        this.zzbiS.zzb(zzbdy, zzccu);
    }

    public final void zzc(PendingIntent pendingIntent) throws RemoteException {
        zzre();
        zzbo.zzu(pendingIntent);
        ((zzccz) zzrf()).zzc(pendingIntent);
    }

    public final void zzc(Location location) throws RemoteException {
        this.zzbiS.zzc(location);
    }

    public final LocationAvailability zzvQ() {
        return this.zzbiS.zzvQ();
    }
}
