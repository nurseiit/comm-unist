package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.zzaa;

public interface zzccz extends IInterface {
    void zza(long j, boolean z, PendingIntent pendingIntent) throws RemoteException;

    void zza(zzccu zzccu) throws RemoteException;

    void zza(zzcdp zzcdp) throws RemoteException;

    void zza(GeofencingRequest geofencingRequest, PendingIntent pendingIntent, zzccx zzccx) throws RemoteException;

    void zza(LocationSettingsRequest locationSettingsRequest, zzcdb zzcdb, String str) throws RemoteException;

    void zza(zzaa zzaa, zzccx zzccx) throws RemoteException;

    void zzai(boolean z) throws RemoteException;

    void zzc(PendingIntent pendingIntent) throws RemoteException;

    void zzc(Location location) throws RemoteException;

    Location zzdv(String str) throws RemoteException;

    LocationAvailability zzdw(String str) throws RemoteException;
}
