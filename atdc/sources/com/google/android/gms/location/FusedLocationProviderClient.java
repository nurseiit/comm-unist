package com.google.android.gms.location;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.internal.zzbh;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzbas;
import com.google.android.gms.internal.zzbdw;
import com.google.android.gms.internal.zzbdy;
import com.google.android.gms.internal.zzbea;
import com.google.android.gms.internal.zzbee;
import com.google.android.gms.internal.zzbeq;
import com.google.android.gms.internal.zzber;
import com.google.android.gms.internal.zzbey;
import com.google.android.gms.internal.zzcco;
import com.google.android.gms.internal.zzccv;
import com.google.android.gms.internal.zzcdn;
import com.google.android.gms.internal.zzceb;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

public class FusedLocationProviderClient extends GoogleApi<NoOptions> {

    static class zza extends zzccv {
        private final TaskCompletionSource<Void> zzalE;

        public zza(TaskCompletionSource<Void> taskCompletionSource) {
            this.zzalE = taskCompletionSource;
        }

        public final void zza(zzcco zzcco) {
            zzber.zza(zzcco.getStatus(), null, this.zzalE);
        }
    }

    public FusedLocationProviderClient(@NonNull Activity activity) {
        super(activity, LocationServices.API, null, new zzbas());
    }

    public FusedLocationProviderClient(@NonNull Context context) {
        super(context, LocationServices.API, null, new zzbas());
    }

    public Task<Void> flushLocations() {
        return zzbh.zzb(LocationServices.FusedLocationApi.flushLocations(zzpi()));
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public Task<Location> getLastLocation() {
        return zza((zzbeq) new zze(this));
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public Task<LocationAvailability> getLocationAvailability() {
        return zza((zzbeq) new zzf(this));
    }

    public Task<Void> removeLocationUpdates(PendingIntent pendingIntent) {
        return zzbh.zzb(LocationServices.FusedLocationApi.removeLocationUpdates(zzpi(), pendingIntent));
    }

    public Task<Void> removeLocationUpdates(LocationCallback locationCallback) {
        zzbdy zza = zzbea.zza(locationCallback, LocationCallback.class.getSimpleName());
        zzbo.zzb((Object) zza, (Object) "Listener key cannot be null.");
        return this.zzaAN.zza((GoogleApi) this, zza);
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public Task<Void> requestLocationUpdates(LocationRequest locationRequest, PendingIntent pendingIntent) {
        return zzbh.zzb(LocationServices.FusedLocationApi.requestLocationUpdates(zzpi(), locationRequest, pendingIntent));
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public Task<Void> requestLocationUpdates(LocationRequest locationRequest, LocationCallback locationCallback, @Nullable Looper looper) {
        zzcdn zza = zzcdn.zza(locationRequest);
        zzbdw zzb = zzbea.zzb(locationCallback, zzceb.zzb(looper), LocationCallback.class.getSimpleName());
        zzbee zzg = new zzg(this, zzb, zza, zzb);
        zzbey zzh = new zzh(this, zzb.zzqG());
        zzbo.zzu(zzg);
        zzbo.zzu(zzh);
        zzbo.zzb(zzg.zzqG(), (Object) "Listener has already been released.");
        zzbo.zzb(zzh.zzqG(), (Object) "Listener has already been released.");
        zzbo.zzb(zzg.zzqG().equals(zzh.zzqG()), (Object) "Listener registration and unregistration methods must be constructed with the same ListenerHolder.");
        return this.zzaAN.zza((GoogleApi) this, zzg, zzh);
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public Task<Void> setMockLocation(Location location) {
        return zzbh.zzb(LocationServices.FusedLocationApi.setMockLocation(zzpi(), location));
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public Task<Void> setMockMode(boolean z) {
        return zzbh.zzb(LocationServices.FusedLocationApi.setMockMode(zzpi(), z));
    }
}
