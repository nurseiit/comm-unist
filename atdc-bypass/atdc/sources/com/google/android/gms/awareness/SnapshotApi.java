package com.google.android.gms.awareness;

import android.support.annotation.RequiresPermission;
import com.google.android.gms.awareness.snapshot.BeaconStateResult;
import com.google.android.gms.awareness.snapshot.DetectedActivityResult;
import com.google.android.gms.awareness.snapshot.HeadphoneStateResult;
import com.google.android.gms.awareness.snapshot.LocationResult;
import com.google.android.gms.awareness.snapshot.PlacesResult;
import com.google.android.gms.awareness.snapshot.TimeIntervalsResult;
import com.google.android.gms.awareness.snapshot.WeatherResult;
import com.google.android.gms.awareness.state.BeaconState.TypeFilter;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import java.util.Collection;

public interface SnapshotApi {
    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    PendingResult<BeaconStateResult> getBeaconState(GoogleApiClient googleApiClient, Collection<TypeFilter> collection);

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    PendingResult<BeaconStateResult> getBeaconState(GoogleApiClient googleApiClient, TypeFilter... typeFilterArr);

    @RequiresPermission("com.google.android.gms.permission.ACTIVITY_RECOGNITION")
    PendingResult<DetectedActivityResult> getDetectedActivity(GoogleApiClient googleApiClient);

    PendingResult<HeadphoneStateResult> getHeadphoneState(GoogleApiClient googleApiClient);

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    PendingResult<LocationResult> getLocation(GoogleApiClient googleApiClient);

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    PendingResult<PlacesResult> getPlaces(GoogleApiClient googleApiClient);

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    PendingResult<TimeIntervalsResult> getTimeIntervals(GoogleApiClient googleApiClient);

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    PendingResult<WeatherResult> getWeather(GoogleApiClient googleApiClient);
}
