package com.google.android.gms.location;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.internal.zzbh;
import com.google.android.gms.internal.zzbas;
import com.google.android.gms.tasks.Task;

public class SettingsClient extends GoogleApi<NoOptions> {
    public SettingsClient(@NonNull Activity activity) {
        super(activity, LocationServices.API, null, new zzbas());
    }

    public SettingsClient(@NonNull Context context) {
        super(context, LocationServices.API, null, new zzbas());
    }

    public Task<LocationSettingsResponse> checkLocationSettings(LocationSettingsRequest locationSettingsRequest) {
        return zzbh.zza(LocationServices.SettingsApi.checkLocationSettings(zzpi(), locationSettingsRequest), new LocationSettingsResponse());
    }
}
