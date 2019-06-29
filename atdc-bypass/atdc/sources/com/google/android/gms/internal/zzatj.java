package com.google.android.gms.internal;

import com.google.android.gms.awareness.SnapshotApi;
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
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.games.GamesActivityResultCodes;
import java.util.ArrayList;
import java.util.Collection;

public final class zzatj implements SnapshotApi {
    private final PendingResult<BeaconStateResult> zza(GoogleApiClient googleApiClient, ArrayList<zzasv> arrayList) {
        return new zzatw(this, googleApiClient.zzd(new zzatz(googleApiClient, GamesActivityResultCodes.RESULT_LICENSE_FAILED, arrayList)));
    }

    private static zzbjx zza(GoogleApiClient googleApiClient, int i) {
        return new zzaty(googleApiClient, i);
    }

    public final PendingResult<BeaconStateResult> getBeaconState(GoogleApiClient googleApiClient, Collection<TypeFilter> collection) {
        zzbo.zzb((Object) collection, (Object) "beaconTypes cannot be null");
        zzbo.zzb(collection.size() > 0, (Object) "beaconTypes must not be empty");
        ArrayList arrayList = new ArrayList();
        for (TypeFilter typeFilter : collection) {
            arrayList.add((zzasv) typeFilter);
        }
        return zza(googleApiClient, arrayList);
    }

    public final PendingResult<BeaconStateResult> getBeaconState(GoogleApiClient googleApiClient, TypeFilter... typeFilterArr) {
        zzbo.zzb((Object) typeFilterArr, (Object) "beaconTypes cannot be null");
        zzbo.zzb(typeFilterArr.length > 0, (Object) "beaconTypes must not be empty");
        ArrayList arrayList = new ArrayList();
        for (TypeFilter typeFilter : typeFilterArr) {
            arrayList.add((zzasv) typeFilter);
        }
        return zza(googleApiClient, arrayList);
    }

    public final PendingResult<DetectedActivityResult> getDetectedActivity(GoogleApiClient googleApiClient) {
        return new zzatm(this, googleApiClient.zzd(zza(googleApiClient, (int) GamesActivityResultCodes.RESULT_SIGN_IN_FAILED)));
    }

    public final PendingResult<HeadphoneStateResult> getHeadphoneState(GoogleApiClient googleApiClient) {
        return new zzato(this, googleApiClient.zzd(zza(googleApiClient, (int) GamesActivityResultCodes.RESULT_APP_MISCONFIGURED)));
    }

    public final PendingResult<LocationResult> getLocation(GoogleApiClient googleApiClient) {
        return new zzatq(this, googleApiClient.zzd(zza(googleApiClient, (int) GamesActivityResultCodes.RESULT_LEFT_ROOM)));
    }

    public final PendingResult<PlacesResult> getPlaces(GoogleApiClient googleApiClient) {
        return new zzats(this, googleApiClient.zzd(zza(googleApiClient, (int) GamesActivityResultCodes.RESULT_NETWORK_FAILURE)));
    }

    public final PendingResult<TimeIntervalsResult> getTimeIntervals(GoogleApiClient googleApiClient) {
        return new zzatk(this, googleApiClient.zzd(zza(googleApiClient, (int) GamesActivityResultCodes.RESULT_INVALID_ROOM)));
    }

    public final PendingResult<WeatherResult> getWeather(GoogleApiClient googleApiClient) {
        return new zzatu(this, googleApiClient.zzd(zza(googleApiClient, (int) GamesActivityResultCodes.RESULT_SEND_REQUEST_FAILED)));
    }
}
